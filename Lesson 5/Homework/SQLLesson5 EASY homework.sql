-- Easy-Level Tasks


SELECT ProductName AS Name FROM Products;


SELECT * FROM Customers AS Client;


SELECT ProductName FROM Products
UNION
SELECT ProductName FROM Products_Discontinued;


SELECT ProductName FROM Products
INTERSECT
SELECT ProductName FROM Products_Discontinued;


SELECT * FROM Products
UNION ALL
SELECT * FROM Orders;


SELECT DISTINCT CustomerName, Country FROM Customers;


SELECT ProductName, Price,
    CASE 
        WHEN Price > 100 THEN 'High'
        ELSE 'Low'
    END AS PriceCategory
FROM Products;


SELECT Department, Country, COUNT(*) AS EmployeeCount
FROM Employees
GROUP BY Department, Country;


SELECT CategoryID, COUNT(ProductID) AS ProductCount
FROM Products
GROUP BY CategoryID;


SELECT ProductName, Stock, IIF(Stock > 100, 'Yes', 'No') AS StockStatus
FROM Products;