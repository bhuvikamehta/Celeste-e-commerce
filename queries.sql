USE CELESTE;
-- ALTER TABLE Supplier MODIFY Supplier_ID INT;
-- ALTER TABLE Supplier DROP PRIMARY KEY;
-- ALTER TABLE Supplier ADD PRIMARY KEY (Brand_Name);
-- SELECT DISTINCT Brand_Name FROM product 
-- WHERE Brand_Name NOT IN (SELECT Brand_Name FROM supplier);

-- SELECT TABLE_NAME, COLUMN_NAME, CONSTRAINT_NAME, REFERENCED_TABLE_NAME, REFERENCED_COLUMN_NAME
-- FROM information_schema.KEY_COLUMN_USAGE
-- WHERE TABLE_NAME = 'PRODUCT' AND REFERENCED_TABLE_NAME = 'SUPPLIER';

-- SELECT Brand_Name FROM Supplier WHERE Brand_Name = 'Titan';
-- SELECT Brand_Name FROM Supplier;

-- INSERT INTO Order_History (Customer_ID, Payment_ID, Grand_Total, Address, Order_Status)
-- VALUES (20, 10, 2999.00 * 3, '123 Street, City', 'Pending');
-- INSERT INTO All_Orders (Order_ID, Product_ID, Price, Quantity)
-- VALUES (4, 20, 2999.00, 3); -- Skybags Backpack

-- 1. Admin query: Add a new product
INSERT INTO Product (Product_Name, Brand_Name, Category, Price, Stock_Quantity, Image_URL, Description, Gender, Colour, Size)
VALUES ('Luxury Watch', 'Sonata', 'WATCH', 5000.00, 10,  'image_url', 'Premium luxury watch', 'Male', 'Black', 'Medium');

SELECT * FROM PRODUCT WHERE Product_Name='Luxury Watch';

-- 2. Admin query: Delete a product 
SELECT Product_ID FROM Product WHERE Product_Name='Luxury Watch';
DELETE FROM Product WHERE Product_Id=92;

-- 3. Admin query: Update a product details
UPDATE Product
SET Price = 4500.00, Stock_Quantity = 15
WHERE Product_ID = 88;

-- 4. Admin: Supplier name of a category
SELECT DISTINCT P.Category, S.Supplier_Name
FROM Product P
NATURAL JOIN Supplier S 
WHERE P.Category = 'Watch';

-- 5. Admin: Total sales in one day
SELECT SUM(OH.Grand_Total) AS Total_Sales
FROM Order_History OH
WHERE DATE(OH.Date_of_Ordering) = '2024-12-07%';

-- 6. Admin: Total sales in one week
SELECT SUM(OH.Grand_Total) AS Total_Sales_This_Week
FROM Order_History OH
WHERE DATE(OH.Date_of_Ordering) BETWEEN DATE_SUB('2024-12-07', INTERVAL 7 DAY) AND '2024-12-07'; -- USE "CURDATE()" : FOR RECENTLY PLACED ORDERS

-- 7. Admin: Top 5 products in a week
SELECT 
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

-- 8. Admin: Updating order status and payment status
UPDATE Order_History
SET Order_Status = 'Delivered'
WHERE Order_ID = 1;

UPDATE Payment
SET Payment_Status = 'Completed'
WHERE Payment_ID = (SELECT Payment_ID FROM Order_History WHERE Order_ID = 1);

SELECT oh.Order_ID, oh.Customer_ID, oh.Grand_Total, oh.Order_Status, 
       p.Payment_ID, p.Amount, p.Payment_Method, p.Payment_Status
FROM Order_History oh
JOIN Payment p ON oh.Payment_ID = p.Payment_ID
WHERE oh.Order_ID = 1;

-- 9. Lowest Rated Products
SELECT p.Product_ID, p.Product_Name, s.Supplier_Name, AVG(r.Rating) AS Avg_Rating
FROM Product p
JOIN Review r ON p.Product_ID = r.Product_ID
JOIN Supplier s ON p.Product_ID = s.Supplier_ID
GROUP BY p.Product_ID, p.Product_Name, s.Supplier_Name
ORDER BY Avg_Rating ASC
LIMIT 5;

-- Highest Rated Products
SELECT p.Product_ID, p.Product_Name, s.Supplier_Name, AVG(r.Rating) AS Avg_Rating
FROM Product p
JOIN Review r ON p.Product_ID = r.Product_ID
JOIN Supplier s ON p.Product_ID = s.Supplier_ID
GROUP BY p.Product_ID, p.Product_Name, s.Supplier_Name
ORDER BY Avg_Rating DESC
LIMIT 5;

-- 10. Admin: Checking for Customer membership 
SELECT Customer_ID, Name, Email_ID, GENDER FROM CUSTOMER WHERE MEMBERSHIP=1 ;


-- 11. 	Customer: Updating address of a customer
UPDATE CUSTOMER SET ADDRESS="124, MG Road, Mumbai, Maharashtra" WHERE CUSTOMER_ID=1;

SELECT NAME, ADDRESS FROM CUSTOMER WHERE CUSTOMER_ID=1;

-- 12. Customer: Updating membership of a customer
-- Case 1: simply stating the status
UPDATE Customer
SET Membership = CASE 
    WHEN Membership=1 THEN 0
    ELSE 1
END
WHERE Customer_ID=1;

SELECT NAME, MEMBERSHIP FROM CUSTOMER WHERE CUSTOMER_ID=1;

-- Case2: updation based on some conditions like amount spent
SET SQL_SAFE_UPDATES = 0;
UPDATE Customer
SET Membership = 1
WHERE Customer_ID IN (
    SELECT Customer_ID FROM (
        SELECT OH.Customer_ID
        FROM Order_History OH
        JOIN Payment P ON OH.Payment_ID = P.Payment_ID
        WHERE P.Payment_Status = 'Completed'
        GROUP BY OH.Customer_ID
        HAVING SUM(OH.Grand_Total) > 50000
    ) AS Subquery
);
SET SQL_SAFE_UPDATES = 1;

-- 13. Customer: Show all products with their average rating
SELECT P.Product_Name, P.Brand_Name, P.Price, P.Category, P.Colour, P.Gender, P.Size, IFNULL(AVG(R.Rating), 0) AS Avg_Rating
FROM Product P
LEFT JOIN Review R ON P.Product_ID = R.Product_ID
GROUP BY P.Product_ID;

-- 14. Customer: Sort and filter on the basis of price
SELECT P.*
FROM Product P
WHERE P.Price BETWEEN 5000 AND 10000;

-- Sort and filter on the basis of colour
SELECT P.*
FROM Product P
WHERE P.Colour = 'Black';

-- Sort and filter on the basis of gender
SELECT P.*
FROM Product P
WHERE P.Gender = 'Unisex';

-- Sort and filter on the basis of category
SELECT P.*
FROM Product P
WHERE P.Category = 'WATCH';

-- Sort and filter on the basis of promotion applied
SELECT P.*
FROM Product P
LEFT JOIN Promotion PR ON P.Product_ID = PR.Product_ID 
WHERE PR.Promotion_ID IS NOT NULL 
AND CURDATE() BETWEEN PR.Start_Date AND PR.End_Date;

-- SELECT * FROM CART;
-- TRUNCATE CART;

-- 15. Add a product to the cart
INSERT INTO Cart (Product_ID, Customer_ID, Quantity, Price)
SELECT 3, 5, 2, 
    P.Price * (1 - IFNULL(PR.Discount_Percentage, 0) / 100) AS Discounted_Price
FROM Product P
LEFT JOIN Promotion PR ON P.Product_ID = PR.Product_ID
    AND CURRENT_DATE BETWEEN PR.Start_Date AND PR.End_Date
WHERE P.Product_ID = 3;

-- 16. Update the quantity of a product in the cart
UPDATE Cart C
JOIN Product P ON C.Product_ID = P.Product_ID
LEFT JOIN Promotion PR ON P.Product_ID = PR.Product_ID
    AND CURRENT_DATE BETWEEN PR.Start_Date AND PR.End_Date
SET C.Quantity = 1, 
    C.Price = P.Price * (1 - IFNULL(PR.Discount_Percentage, 0) / 100)
WHERE C.Product_ID = 3 AND C.Customer_ID = 5;

-- 17. Remove a product from the cart
DELETE FROM Cart
WHERE Product_ID=3 AND Customer_ID=5;

-- 18. Calculate the total cost of the cart
SELECT 
    SUM(C.Quantity * C.Price) + IF(CU.Membership = 0, 100, 0) AS Total_Cost
FROM Cart C
JOIN Customer CU ON C.Customer_ID = CU.Customer_ID
WHERE C.Customer_ID=5;


-- 19. Add a review (only if the customer has ordered the product)
INSERT INTO Review (Product_ID, Customer_ID, Rating, Comment)  
SELECT 1, 12, 4, 'very good product'  
WHERE EXISTS (  
    SELECT 1  
    FROM All_Orders AO  
    JOIN Order_History OH ON AO.Order_ID = OH.Order_ID  
    WHERE OH.Customer_ID = 12 AND AO.Product_ID = 1  );


-- 20. Order history: Retrieve all orders by a customer, sorted by date of ordering
SELECT 
    OH.Order_ID,
    OH.Grand_Total,
    OH.Order_Status,
    OH.Date_of_Ordering
FROM Order_History OH
WHERE OH.Customer_ID = 5
ORDER BY OH.Date_of_Ordering DESC;













