-- Medium-Level Tasks


SELECT O.OrderID, C.CustomerName AS ClientName
FROM Orders O
INNER JOIN Customers C ON O.CustomerID = C.CustomerID;


SELECT ProductName FROM Products
UNION
SELECT ProductName FROM OutOfStock;


SELECT ProductName FROM Products
EXCEPT
SELECT ProductName FROM DiscontinuedProducts;


SELECT CustomerID, COUNT(OrderID) AS OrderCount,
    CASE 
        WHEN COUNT(OrderID) > 5 THEN 'Eligible'
        ELSE 'Not Eligible'
    END AS Status
FROM Orders
GROUP BY CustomerID;


SELECT ProductName, Price, IIF(Price > 100, 'Expensive', 'Affordable') AS PriceCategory
FROM Products;


SELECT CustomerID, COUNT(OrderID) AS TotalOrders
FROM Orders
GROUP BY CustomerID;


SELECT * FROM Employees
WHERE Age < 25 OR Salary > 6000;


SELECT Region, SUM(SalesAmount) AS TotalSales
FROM Sales
GROUP BY Region;


SELECT C.CustomerName, O.OrderID, O.OrderDate AS Order_Placed
FROM Customers C
LEFT JOIN Orders O ON C.CustomerID = O.CustomerID;


UPDATE Employees
SET Salary = Salary * 1.1
WHERE Department = 'HR';