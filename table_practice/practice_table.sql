CREATE DATABASE JoinPractice;
USE JoinPractice;
CREATE TABLE Customers (
    customer_id INT PRIMARY KEY,
    customer_name VARCHAR(50),
    city VARCHAR(50)
);
CREATE TABLE Orders (
    order_id INT PRIMARY KEY,
    customer_id INT,
    product VARCHAR(50),
    amount INT
);
CREATE TABLE Products (
    product_name VARCHAR(50),
    price INT
);

INSERT INTO Customers VALUES
(1,'Alice','Chennai'),
(2,'Bob','Madurai'),
(3,'Charlie','Trichy'),
(4,'David','Salem');
INSERT INTO Orders VALUES
(101,1,'Laptop',50000),
(102,2,'Mobile',20000),
(103,1,'Keyboard',2000),
(104,5,'Tablet',15000);
INSERT INTO Products VALUES
('Laptop',50000),
('Mobile',20000),
('Keyboard',2000),
('Tablet',15000);
