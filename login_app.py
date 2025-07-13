from flask import Flask, render_template, request, redirect, url_for, session, flash, jsonify
import mysql.connector
from datetime import datetime, timedelta
app = Flask(__name__)
app.secret_key = 'imaokayy1'

# Database connection
db = mysql.connector.connect(
    host="localhost",
    user="root",
    password="bhuVikaMehta@1810#",
    database="CELESTE"
)
cursor = db.cursor(dictionary=True)

# @app.route('/')
# def index():
#     return redirect(url_for('login'))

@app.route("/")
def landing():
    return render_template("landing.html")

@app.route('/homepage')
def homepage():
    cursor.execute("""SELECT 
    p.Product_ID, 
    p.Product_Name, 
    COUNT(o.Product_ID) AS Order_Count, 
    SUM(o.Quantity) AS Total_Quantity_Sold
FROM All_Orders o
JOIN Order_History oh ON o.Order_ID = oh.Order_ID
JOIN Product p ON o.Product_ID = p.Product_ID
WHERE DATE(oh.Date_of_Ordering) BETWEEN DATE_SUB('2024-12-15', INTERVAL 7 DAY) AND '2024-12-15'
GROUP BY p.Product_ID, p.Product_Name
ORDER BY Total_Quantity_Sold DESC
LIMIT 5;
""")
    best_selling=cursor.fetchall()
    print(best_selling)

    return render_template('homepage.html', best_selling=best_selling)

@app.route("/admin")
def admin():
    return render_template("admin.html")

# 1. Admin query: Add a new product
@app.route("/add_product", methods=["POST"])
def add_product():
    if request.method == "POST":
        try:
            # Get product details from the form
            product_name = request.form.get("pname")
            brand_name = request.form.get("brand")
            category = request.form.get("cat")
            price = float(request.form.get("price"))
            stock_quantity = int(request.form.get("stock"))
            image_url = request.form.get("img")
            description = request.form.get("desc")
            gender = request.form.get("gender")
            colour = request.form.get("colour")
            size = request.form.get("size")
            
            # Check if product already exists
            cursor.execute("SELECT * FROM Product WHERE Product_Name = %s AND Brand_Name = %s", 
                          (product_name, brand_name))
            existing_product = cursor.fetchone()
            
            if existing_product:
                return jsonify({"success": False, "message": f"Product '{product_name}' already exists!"})
            
            # Insert new product into database
            cursor.execute("""
                INSERT INTO Product (Product_Name, Brand_Name, Category, Price, Stock_Quantity, 
                                    Image_URL, Description, Gender, Colour, Size)
                VALUES (%s, %s, %s, %s, %s, %s, %s, %s, %s, %s)
            """, (product_name, brand_name, category, price, stock_quantity, 
                 image_url, description, gender, colour, size))
            db.commit()
            
            # Get the newly added product to confirm
            cursor.execute("SELECT * FROM Product WHERE Product_Name = %s", (product_name,))
            new_product = cursor.fetchone()
            
            return jsonify({
                "success": True, 
                "message": f"Product '{product_name}' added successfully!",
                "product_id": new_product["Product_ID"]
            })
            
        except ValueError as e:
            return jsonify({"success": False, "message": f"Invalid number format: {str(e)}"})
        except mysql.connector.Error as e:
            return jsonify({"success": False, "message": f"Database error: {str(e)}"})
        except Exception as e:
            return jsonify({"success": False, "message": f"Error: {str(e)}"})
    
    return jsonify({"success": False, "message": "Invalid request method"})

# 2. Admin query: Delete a product
@app.route("/delete_product", methods=["POST"])
def delete_product():
    if request.method == "POST":
        try:
            product_id = request.form.get("product_id")
            
            # Check if product exists
            cursor.execute("SELECT * FROM Product WHERE Product_ID = %s", (product_id,))
            product = cursor.fetchone()
            
            if not product:
                return jsonify({"success": False, "message": f"Product with ID {product_id} not found!"})
            
            # Delete the product
            cursor.execute("DELETE FROM Product WHERE Product_ID = %s", (product_id,))
            db.commit()
            
            return jsonify({"success": True, "message": f"Product with ID {product_id} deleted successfully!"})
            
        except mysql.connector.Error as e:
            return jsonify({"success": False, "message": f"Database error: {str(e)}"})
        except Exception as e:
            return jsonify({"success": False, "message": f"Error: {str(e)}"})
    
    return jsonify({"success": False, "message": "Invalid request method"})

# 3. Admin query: Update product details
@app.route("/update_product", methods=["POST"])
def update_product():
    if request.method == "POST":
        try:
            product_id = request.form.get("product_id")
            new_price = float(request.form.get("price"))
            new_stock = int(request.form.get("stock"))
            
            # Check if product exists
            cursor.execute("SELECT * FROM Product WHERE Product_ID = %s", (product_id,))
            product = cursor.fetchone()
            
            if not product:
                return jsonify({"success": False, "message": f"Product with ID {product_id} not found!"})
            
            # Update the product
            cursor.execute("""
                UPDATE Product SET Price = %s, Stock_Quantity = %s 
                WHERE Product_ID = %s
            """, (new_price, new_stock, product_id))
            db.commit()
            
            return jsonify({
                "success": True, 
                "message": f"Product with ID {product_id} updated successfully!",
                "new_price": new_price,
                "new_stock": new_stock
            })
            
        except ValueError as e:
            return jsonify({"success": False, "message": f"Invalid number format: {str(e)}"})
        except mysql.connector.Error as e:
            return jsonify({"success": False, "message": f"Database error: {str(e)}"})
        except Exception as e:
            return jsonify({"success": False, "message": f"Error: {str(e)}"})
    
    return jsonify({"success": False, "message": "Invalid request method"})

# 4. Admin: Get supplier names by category
@app.route("/get_suppliers_by_category", methods=["POST"])
def get_suppliers_by_category():
    if request.method == "POST":
        try:
            category = request.form.get("category")
            
            # Get suppliers by category
            cursor.execute("""
                SELECT DISTINCT P.Category, S.Supplier_Name
                FROM Product P
                NATURAL JOIN Supplier S
                WHERE P.Category = %s
            """, (category,))
            
            suppliers = cursor.fetchall()
            
            if not suppliers:
                return jsonify({"success": False, "message": f"No suppliers found for category '{category}'"})
            
            supplier_list = [{"category": s["Category"], "supplier_name": s["Supplier_Name"]} for s in suppliers]
            
            return jsonify({
                "success": True,
                "suppliers": supplier_list
            })
            
        except mysql.connector.Error as e:
            return jsonify({"success": False, "message": f"Database error: {str(e)}"})
        except Exception as e:
            return jsonify({"success": False, "message": f"Error: {str(e)}"})
    
    return jsonify({"success": False, "message": "Invalid request method"})

# 5. Admin: Get total sales for a day
@app.route("/get_daily_sales", methods=["GET"])
def get_daily_sales():
    try:
        # Get today's date or use a specific date for testing
        date = datetime.now().strftime('%Y-%m-%d')
        
        # Get total sales for the day
        cursor.execute("""
            SELECT SUM(OH.Grand_Total) AS Total_Sales
            FROM Order_History OH
            WHERE DATE(OH.Date_of_Ordering) = %s
        """, (date,))
        
        result = cursor.fetchone()
        total_sales = result["Total_Sales"] if result["Total_Sales"] else 0
        
        return jsonify({
            "success": True,
            "date": date,
            "total_sales": total_sales
        })
        
    except mysql.connector.Error as e:
        return jsonify({"success": False, "message": f"Database error: {str(e)}"})
    except Exception as e:
        return jsonify({"success": False, "message": f"Error: {str(e)}"})

# 6. Admin: Get total sales for a week
@app.route("/get_weekly_sales", methods=["GET"])
def get_weekly_sales():
    try:
        # Get today's date
        today = datetime.now().strftime('%Y-%m-%d')
        
        # Get total sales for the week
        cursor.execute("""
            SELECT SUM(OH.Grand_Total) AS Total_Sales_This_Week
            FROM Order_History OH
            WHERE DATE(OH.Date_of_Ordering) BETWEEN DATE_SUB(CURDATE(), INTERVAL 7 DAY) AND CURDATE()
        """)
        
        result = cursor.fetchone()
        total_sales = result["Total_Sales_This_Week"] if result["Total_Sales_This_Week"] else 0
        
        return jsonify({
            "success": True,
            "date_range": f"{(datetime.now() - timedelta(days=7)).strftime('%Y-%m-%d')} to {today}",
            "total_sales": total_sales
        })
        
    except mysql.connector.Error as e:
        return jsonify({"success": False, "message": f"Database error: {str(e)}"})
    except Exception as e:
        return jsonify({"success": False, "message": f"Error: {str(e)}"})

# 7. Admin: Get top 5 products in a week
@app.route("/get_top_products", methods=["GET"])
def get_top_products():
    try:
        cursor.execute("""
            SELECT p.Product_ID, p.Product_Name, COUNT(o.Product_ID) AS Order_Count, 
                   SUM(o.Quantity) AS Total_Quantity_Sold
            FROM All_Orders o
            JOIN Order_History oh ON o.Order_ID = oh.Order_ID
            JOIN Product p ON o.Product_ID = p.Product_ID
            WHERE DATE(oh.Date_of_Ordering) BETWEEN DATE_SUB(CURDATE(), INTERVAL 7 DAY) AND CURDATE()
            GROUP BY p.Product_ID, p.Product_Name
            ORDER BY Total_Quantity_Sold DESC
            LIMIT 5
        """)
        
        products = cursor.fetchall()
        
        return jsonify({
            "success": True,
            "top_products": products
        })
        
    except mysql.connector.Error as e:
        return jsonify({"success": False, "message": f"Database error: {str(e)}"})
    except Exception as e:
        return jsonify({"success": False, "message": f"Error: {str(e)}"})

# 8. Admin: Update order status and payment status
# 8. Admin: Update order status and payment status
@app.route("/update_order_status", methods=["POST"])
def update_order_status():
    if request.method == "POST":
        try:
            order_id = int(request.form.get("order_id"))
            order_status = request.form.get("order_status")
            
            # Check if order exists
            cursor.execute("SELECT * FROM Order_History WHERE Order_ID = %s", (order_id,))
            order = cursor.fetchone()
            
            if not order:
                return jsonify({"success": False, "message": f"Order with ID {order_id} not found!"})
            
            # Update the order status - directly using cursor
            cursor.execute("UPDATE Order_History SET Order_Status = %s WHERE Order_ID = %s", 
                          (order_status, order_id))
            
            # Commit the changes
            db.commit()
            
            # Check if rows were affected
            if cursor.rowcount == 0:
                db.rollback()
                return jsonify({"success": False, "message": "Update failed. No rows affected."})
            
            # Fetch the updated order
            cursor.execute("SELECT * FROM Order_History WHERE Order_ID = %s", (order_id,))
            updated_order = cursor.fetchone()
            
            return jsonify({
                "success": True,
                "message": f"Order status updated successfully!",
                "order": updated_order
            })
            
        except ValueError as e:
            return jsonify({"success": False, "message": f"Invalid number format: {str(e)}"})
        except mysql.connector.Error as e:
            return jsonify({"success": False, "message": f"Database error: {str(e)}"})
        except Exception as e:
            import traceback
            print(traceback.format_exc())
            return jsonify({"success": False, "message": f"Error: {str(e)}"})
    
    return jsonify({"success": False, "message": "Invalid request method"})
# 9. Admin: Get lowest rated products
@app.route("/get_lowest_rated_products", methods=["GET"])
def get_lowest_rated_products():
    try:
        cursor.execute("""
            SELECT p.Product_ID, p.Product_Name, s.Supplier_Name, AVG(r.Rating) AS Avg_Rating
            FROM Product p
            JOIN Review r ON p.Product_ID = r.Product_ID
            JOIN Supplier s ON p.Product_ID = s.Supplier_ID
            GROUP BY p.Product_ID, p.Product_Name, s.Supplier_Name
            ORDER BY Avg_Rating ASC
            LIMIT 5
        """)
        
        products = cursor.fetchall()
        
        return jsonify({
            "success": True,
            "lowest_rated_products": products
        })
        
    except mysql.connector.Error as e:
        return jsonify({"success": False, "message": f"Database error: {str(e)}"})
    except Exception as e:
        return jsonify({"success": False, "message": f"Error: {str(e)}"})

# 9. Admin: Get highest rated products
@app.route("/get_highest_rated_products", methods=["GET"])
def get_highest_rated_products():
    try:
        cursor.execute("""
            SELECT p.Product_ID, p.Product_Name, s.Supplier_Name, AVG(r.Rating) AS Avg_Rating
            FROM Product p
            JOIN Review r ON p.Product_ID = r.Product_ID
            JOIN Supplier s ON p.Product_ID = s.Supplier_ID
            GROUP BY p.Product_ID, p.Product_Name, s.Supplier_Name
            ORDER BY Avg_Rating DESC
            LIMIT 5
        """)
        
        products = cursor.fetchall()
        
        return jsonify({
            "success": True,
            "highest_rated_products": products
        })
        
    except mysql.connector.Error as e:
        return jsonify({"success": False, "message": f"Database error: {str(e)}"})
    except Exception as e:
        return jsonify({"success": False, "message": f"Error: {str(e)}"})

# 10. Admin: Get customers with membership
@app.route("/get_customers_with_membership", methods=["GET"])
def get_customers_with_membership():
    try:
        cursor.execute("""
            SELECT Customer_ID, Name, Email_ID, GENDER
            FROM CUSTOMER
            WHERE MEMBERSHIP = 1
        """)
        
        customers = cursor.fetchall()
        
        return jsonify({
            "success": True,
            "customers_with_membership": customers
        })
        
    except mysql.connector.Error as e:
        return jsonify({"success": False, "message": f"Database error: {str(e)}"})
    except Exception as e:
        return jsonify({"success": False, "message": f"Error: {str(e)}"})


@app.route('/login', methods=['GET', 'POST'])
def login():
    if request.method == 'POST':
        email = request.form['email']  # ✅ using email
        password = request.form['password']

        cursor.execute("SELECT * FROM Customer WHERE Email_ID = %s AND Password = %s", (email, password))
        user = cursor.fetchone()
        if user:
            session['user_id'] = user['Customer_ID']
            session['user_name'] = user['Name']
            flash("Logged in successfully!", "success")
            return redirect(url_for('homepage'))  
        else:
            flash("Invalid email or password", "danger")
            return redirect(url_for('login'))

    return render_template('login_signup.html')


@app.route('/signup', methods=['GET', 'POST'])
def signup():
    if request.method == 'POST':
        name = request.form['username']
        email = request.form['email']
        password = request.form['password']
        gender = request.form.get('gender')
        phone = request.form['mobile']
        address = request.form.get('address')
        dob = request.form.get('dob')

        try:
            cursor.execute("""
                INSERT INTO Customer (Name, Email_ID, Password, Gender, Phone_Number, Address, Date_of_Birth)
                VALUES (%s, %s, %s, %s, %s, %s, %s)
            """, (name, email, password, gender, phone, address, dob))
            db.commit()
            flash("Signup successful! Please log in.", "success")
            return redirect(url_for('login'))
        except mysql.connector.Error as e:
            flash(f"Error: {e.msg}", "danger")
            return redirect(url_for('login'))
    return render_template('login_signup.html')

@app.route('/logout')
def logout():
    session.clear()
    return redirect(url_for('login'))

@app.route("/homepage/cart")
def cart():
    cursor.execute("SELECT * FROM Cart WHERE Customer_ID = %s", (session.get("user_id"),))
    cart_items = cursor.fetchall()
    return render_template('cart.html', cart_items=cart_items)

@app.route("/update_cart_quantity", methods=["POST"])
def update_cart_quantity():
    user_id = session.get("user_id")
    if not user_id:
        return {"success": False, "message": "Not logged in"}, 401

    data = request.json
    product_id = data.get("product_id")
    quantity = data.get("quantity")

    if not product_id or not quantity:
        return {"success": False, "message": "Missing data"}, 400

    cursor.execute("""
        UPDATE Cart SET Quantity = %s 
        WHERE Customer_ID = %s AND Product_ID = %s
    """, (quantity, user_id, product_id))
    db.commit()

    return {"success": True}


@app.route("/homepage/cart/pay")
def pay():
    user_id = session.get("user_id")
    
    if not user_id:
        return redirect("/login")  # or however you handle unauthenticated access

    cursor.execute("""
        SELECT 
            p.Product_Name,
            c.Quantity,
            c.Price,
            (c.Price * c.Quantity) AS Total_Price
        FROM Cart c
        JOIN Product p ON c.Product_ID = p.Product_ID
        WHERE c.Customer_ID = %s
    """, (user_id,))
    
    cart_items = cursor.fetchall()

    total_amount = sum(item['Total_Price'] for item in cart_items)

    cursor.execute("SELECT Address FROM Customer WHERE Customer_ID = %s", (user_id,))
    address_result = cursor.fetchone()
    address = address_result['Address'] if address_result else "No address on file."

    return render_template(
        'pay.html',
        cart_items=cart_items,
        total_amount=total_amount,
        address=address
    )


@app.route("/homepage/cart/pay/confirm", methods=["POST"])
def confirm_payment():
    user_id = session.get("user_id")
    if not user_id:
        return redirect("/login")

    if request.form.get("confirm") != "yes":
        flash("Payment cancelled.")
        return redirect("/homepage/cart")

    # Step 1: Fetch cart items
    cursor.execute("""
        SELECT Product_ID, Quantity, Price 
        FROM Cart 
        WHERE Customer_ID = %s
    """, (user_id,))
    cart_items = cursor.fetchall()

    if not cart_items:
        flash("Cart is empty.")
        return redirect("/homepage/cart")

    # Step 2: Calculate total amount
    total_amount = sum(item["Price"] * item["Quantity"] for item in cart_items)

    # Step 3: Insert into Payment
    cursor.execute("""
        INSERT INTO Payment (Customer_ID, Amount, Payment_Status) 
        VALUES (%s, %s, 'Completed')
    """, (user_id, total_amount))
    db.commit()
    payment_id = cursor.lastrowid

    # Step 4: Get address
    cursor.execute("SELECT Address FROM Customer WHERE Customer_ID = %s", (user_id,))
    address_result = cursor.fetchone()
    address = address_result["Address"] if address_result else "Unknown"

    # Step 5: Insert into Order_History
    cursor.execute("""
        INSERT INTO Order_History (Customer_ID, Payment_ID, Grand_Total, Address) 
        VALUES (%s, %s, %s, %s)
    """, (user_id, payment_id, total_amount, address))
    db.commit()
    order_id = cursor.lastrowid

    # Step 6: Insert into All_Orders
    for item in cart_items:
        cursor.execute("""
            INSERT INTO All_Orders (Order_ID, Product_ID, Price, Quantity)
            VALUES (%s, %s, %s, %s)
        """, (order_id, item["Product_ID"], item["Price"], item["Quantity"]))

    # Step 7: Clear the cart
    cursor.execute("DELETE FROM Cart WHERE Customer_ID = %s", (user_id,))
    db.commit()

    flash("✅ Payment successful! Your order has been placed.")
    return redirect("/homepage")


# def pay():
#     return render_template('pay.html')

# @app.route("/homepage/past-orders")
# def past_orders():
#     return render_template('past_orders.html')

@app.route("/homepage/past-orders")
def past_orders():
    user_id = session.get("user_id")
    if not user_id:
        return redirect("/login")  # or any other unauthenticated access handling

    # Fetch orders from Order_History
    cursor.execute("""
        SELECT oh.Order_ID, oh.Date_of_Ordering, oh.Order_Status, oh.Grand_Total, oh.Address, 
               oh.Customer_ID, oh.Payment_ID
        FROM Order_History oh
        WHERE oh.Customer_ID = %s
        ORDER BY oh.Date_of_Ordering DESC
    """, (user_id,))
    orders = cursor.fetchall()

    # Now, for each order, fetch the products from All_Orders
    for order in orders:
        order_id = order['Order_ID']
        cursor.execute("""
            SELECT ao.Product_ID, p.Product_Name, ao.Quantity, ao.Price
            FROM All_Orders ao
            JOIN Product p ON ao.Product_ID = p.Product_ID
            WHERE ao.Order_ID = %s
        """, (order_id,))
        order['items'] = cursor.fetchall()  # Append the products to the order

    return render_template('past_orders.html', orders=orders)

@app.route("/submit_review", methods=["POST"])
def submit_review():
    if "user_id" not in session:
        return redirect("/login")

    customer_id = session["user_id"]
    product_id = request.form.get("product_id")
    rating = request.form.get("rating")
    comment = request.form.get("comment")
    order_id = request.form.get("order_id")

    if not all([product_id, rating, comment]):
        return "Missing review data", 400

    try:
        cursor.execute("""
            INSERT INTO Review (Product_ID, Customer_ID, Rating, Comment)
            VALUES (%s, %s, %s, %s)
        """, (product_id, customer_id, rating, comment))
        db.commit()
        return redirect(f"/homepage/past-orders?review=success&order_id={order_id}")
    except Exception as e:
        print("Review submission error:", e)
        db.rollback()
        return "An error occurred", 500


# @app.route("/homepage/profile")
# def profile():
#     return render_template('profile.html')

# @app.route("/homepage/category<string:category>")
# def show_prod(category):
#     cursor.execute("SELECT * FROM Product WHERE Category = %s", (category,))
#     data = cursor.fetchall()
#     return render_template('show_prod.html',data=data)
# @app.route("/homepage/category<string:category>")
# def show_prod(category):
#     sort_option = request.args.get('sort', None)

#     base_query = "SELECT * FROM Product WHERE Category = %s"
#     params = [category]

#     if sort_option == "Price - Low to High":
#         base_query += " ORDER BY Price ASC"
#     elif sort_option == "Price - High to Low":
#         base_query += " ORDER BY Price DESC"
#     elif sort_option == "Gender - Male":
#         base_query += " AND Gender = 'Male'"
#     elif sort_option == "Gender - Female":
#         base_query += " AND Gender = 'Female'"
#     # Add more conditions for Color or Promotion if those fields exist in your Product table

#     cursor.execute(base_query, params)
#     data = cursor.fetchall()
    
#     print(data)
#     print(data[0]['Product_ID'])
#     return render_template('show_prod.html', data=data)

@app.route("/homepage/category/<string:category>")
def show_prod(category):
    sort_option = request.args.get("sort")
    base_query = "SELECT * FROM Product WHERE stock_quantity>0 and Category = %s"
    params = [category]

    if sort_option == "Price - Low to High":
        base_query += " ORDER BY Price ASC"
    elif sort_option == "Price - High to Low":
        base_query += " ORDER BY Price DESC"
    elif sort_option == "Gender - Male":
        base_query += " AND Gender = 'Male'"
    elif sort_option == "Gender - Female":
        base_query += " AND Gender = 'Female'"

    cursor.execute(base_query, params)
    data = cursor.fetchall()
    

    return render_template('show_prod.html', data=data, category=category)

@app.route("/homepage/products/info/<int:product_id>")
def product_info(product_id):
    cursor.execute("SELECT * FROM product WHERE product_id = %s", (product_id,))
    data=cursor.fetchone()
    cursor.execute("SELECT * FROM REVIEW WHERE PRODUCT_ID =%s", (product_id,))
    reviews=cursor.fetchall()
    return render_template('product_info.html', data=data, reviews=reviews)

@app.route("/add_to_cart", methods=["POST"])
def add_to_cart():
    product_id = request.form["product_id"]
    # Example hard-coded user ID & quantity
    user_id = session.get("user_id")  # Assuming user is logged in, replace with actual user ID  
    quantity = 1

    query = """
    INSERT INTO Cart (Product_ID, Customer_ID, Quantity, Price)
    SELECT %s, %s, %s,
           P.Price * (1 - IFNULL(PR.Discount_Percentage, 0) / 100) AS Discounted_Price
    FROM Product P
    LEFT JOIN Promotion PR ON P.Product_ID = PR.Product_ID
         AND CURRENT_DATE BETWEEN PR.Start_Date AND PR.End_Date
    WHERE P.Product_ID = %s
    """
    cursor.execute(query, (product_id, user_id, quantity, product_id))
    db.commit()

    flash("Product added to cart!")
    return redirect(url_for("product_info", product_id=product_id))

@app.route("/homepage/profile")
def profile():
    if 'user_id' not in session:
        return redirect(url_for('login'))

    user_id = session['user_id']
    cursor.execute("SELECT * FROM Customer WHERE Customer_ID = %s", (user_id,))
    user = cursor.fetchone()

    return render_template("profile.html", user=user)



@app.route("/update_profile", methods=["POST"])
def update_profile():
    if 'user_id' not in session:
        return redirect(url_for('login'))

    user_id = session['user_id']
    data = request.form

    membership_str = data.get('membership', 'Inactive')
    membership_value = 1 if membership_str.lower() == 'active' else 0

    cursor.execute("""
        UPDATE Customer
        SET Name = %s,
            Email_ID = %s,
            Phone_Number = %s,
            Gender = %s,
            Address = %s,
            Date_of_Birth = %s,
            Membership = %s
        WHERE Customer_ID = %s
    """, (
        data['name'], data['email'], data['phone'],
        data['gender'], data['address'], data['dob'],
        membership_value, user_id
    ))
    db.commit()

    flash("Profile updated successfully!", "success")
    return redirect(url_for('profile'))


#  Dummy Home Page Route
# @app.route('/home')
# def home():
#     if 'user_id' in session:
#         return f"Welcome, {session['user_name']}! <br><a href='/logout'>Logout</a>"
#     return redirect(url_for('login'))

if __name__ == '__main__':
    app.run(debug=True)