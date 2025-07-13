DROP DATABASE CELESTE;
CREATE DATABASE CELESTE;
USE CELESTE;

DROP TABLE IF EXISTS `ADMIN`;
CREATE TABLE Admin (
    Name VARCHAR(255) PRIMARY KEY NOT NULL,
    Email VARCHAR(255) UNIQUE NOT NULL,
    Password VARCHAR(255) NOT NULL
);

DROP TABLE IF EXISTS `SUPPLIER`;
CREATE TABLE Supplier (
    Supplier_ID INT,
    Brand_Name VARCHAR(255) PRIMARY KEY,
    Supplier_Name VARCHAR(255) NOT NULL,
    Supplier_Email VARCHAR(255) UNIQUE NOT NULL,
    Supplier_Contact VARCHAR(10) 
);

DROP TABLE IF EXISTS `CUSTOMER`;
CREATE TABLE Customer (
    Customer_ID INT PRIMARY KEY AUTO_INCREMENT,
    Name VARCHAR(255) NOT NULL,
    Email_ID VARCHAR(255) UNIQUE NOT NULL,
    Password VARCHAR(255) NOT NULL,
    Gender ENUM('Male', 'Female', 'Other'),
    Phone_Number VARCHAR(10) UNIQUE NOT NULL,
    Address TEXT,
    Date_of_Birth DATE,
    Membership TINYINT(1) DEFAULT 0  
)AUTO_INCREMENT = 1;

DROP TABLE IF EXISTS `PRODUCT`;
CREATE TABLE Product (
    Product_ID INT PRIMARY KEY AUTO_INCREMENT,
    Product_Name VARCHAR(255) NOT NULL,
    Brand_Name VARCHAR(255) NOT NULL,
    Category ENUM('WATCH', 'BAG', 'SUNGLASS') NOT NULL,
    Price DECIMAL(10,2) NOT NULL,
    Stock_Quantity INT NOT NULL CHECK (Stock_Quantity >= 0),
    Image_URL VARCHAR(255),
    Description TEXT,
    Gender ENUM('Male', 'Female', 'Unisex'),
    Colour VARCHAR(50),
    Size VARCHAR(50),
    FOREIGN KEY (Brand_Name) REFERENCES Supplier(Brand_Name) ON DELETE CASCADE
)AUTO_INCREMENT = 1;

DROP TABLE IF EXISTS `PROMOTION`;
CREATE TABLE Promotion (
    Promotion_ID INT UNIQUE NOT NULL,
    Product_ID INT NOT NULL,
    Name VARCHAR(255) NOT NULL,
    PRIMARY KEY (Product_ID, Promotion_ID),
    Discount_Percentage DECIMAL(5,2) CHECK (Discount_Percentage BETWEEN 0 AND 100),
    Start_Date DATE NOT NULL,
    End_Date DATE NOT NULL
);

DROP TABLE IF EXISTS `REVIEW`;
CREATE TABLE Review (
	Review_ID INT KEY AUTO_INCREMENT,
    Product_ID INT NOT NULL,
    Customer_ID INT NOT NULL,
    Rating INT CHECK (Rating BETWEEN 1 AND 5),
    Comment TEXT,
    FOREIGN KEY (Product_ID) REFERENCES Product(Product_ID) ON DELETE CASCADE,
    FOREIGN KEY (Customer_ID) REFERENCES Customer(Customer_ID) ON DELETE CASCADE
)AUTO_INCREMENT = 1;

DROP TABLE IF EXISTS `CART`;
CREATE TABLE Cart ( 
    Product_ID INT NOT NULL,
    Customer_ID INT NOT NULL,
    Quantity INT NOT NULL CHECK (Quantity > 0),
    Price DECIMAL(10,2) NOT NULL,
    PRIMARY KEY(Product_ID, Customer_ID),
    FOREIGN KEY (Product_ID) REFERENCES Product(Product_ID) ON DELETE CASCADE,
    FOREIGN KEY (Customer_ID) REFERENCES Customer(Customer_ID) ON DELETE CASCADE
);

DROP TABLE IF EXISTS `PAYMENT`;
CREATE TABLE Payment (
    Payment_ID INT PRIMARY KEY AUTO_INCREMENT,
    Customer_ID INT NOT NULL,
    Amount DECIMAL(10,2) NOT NULL,
    Payment_Method ENUM('Credit Card', 'UPI', 'Net Banking','Debit Card') DEFAULT 'Credit Card',
    Transaction_Date TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    Payment_Status ENUM('Pending', 'Completed', 'Failed') DEFAULT 'Pending',
    FOREIGN KEY (Customer_ID) REFERENCES Customer(Customer_ID) ON DELETE CASCADE
)AUTO_INCREMENT = 1;

DROP TABLE IF EXISTS `ORDER_HISTORY`;
CREATE TABLE Order_History (
    Order_ID INT PRIMARY KEY AUTO_INCREMENT,
    Customer_ID INT NOT NULL,
    Payment_ID INT NOT NULL,
    Grand_Total DECIMAL(10,2) NOT NULL,
    Address TEXT NOT NULL,
    Order_Status ENUM('Pending', 'Shipped', 'Delivered', 'Cancelled') DEFAULT 'Pending',
    Date_of_Ordering TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (Payment_ID) REFERENCES Payment(Payment_ID) ON DELETE CASCADE
)AUTO_INCREMENT = 1;

DROP TABLE IF EXISTS `ALL_ORDERS`;
CREATE TABLE All_Orders (
    Order_ID INT NOT NULL,
    
    Product_ID INT NOT NULL,
    Price DECIMAL(10,2) NOT NULL,
    Quantity INT NOT NULL CHECK (Quantity > 0),
    PRIMARY KEY (Order_ID, Product_ID),
    FOREIGN KEY (Order_ID) REFERENCES Order_History(Order_ID) ON DELETE CASCADE,
   
    FOREIGN KEY (Product_ID) REFERENCES Product(Product_ID) ON DELETE CASCADE
);
