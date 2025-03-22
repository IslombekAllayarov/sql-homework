
CREATE TABLE Products (
    ProductID INT PRIMARY KEY,
    ProductName VARCHAR(50),
    Price DECIMAL(10,2)
);


INSERT INTO Products (ProductID, ProductName, Price)
VALUES 
(1, 'Laptop', 1200.50),
(2, 'Mouse', 25.99),
(3, 'Keyboard', 49.99);


ALTER TABLE Products
ADD CONSTRAINT UQ_ProductName UNIQUE (ProductName);


SELECT * FROM Products WHERE Price > 50;


CREATE TABLE Categories (
    CategoryID INT PRIMARY KEY,
    CategoryName VARCHAR(50) UNIQUE
);

