-- Hard-Level Tasks


SELECT ProductID, SUM(SalesAmount) AS TotalAmount FROM Sales
UNION ALL
SELECT ProductID, SUM(ReturnAmount) AS TotalAmount FROM Returns;


SELECT ProductName FROM Products
INTERSECT
SELECT ProductName FROM DiscontinuedProducts;


SELECT CustomerID, SUM(SalesAmount) AS TotalSales,
    CASE 
        WHEN SUM(SalesAmount) > 10000 THEN 'Top Tier'
        WHEN SUM(SalesAmount) BETWEEN 5000 AND 10000 THEN 'Mid Tier'
        ELSE 'Low Tier'
    END AS CustomerCategory
FROM Sales
GROUP BY CustomerID;


DECLARE @EmpID INT = 1;
WHILE @EmpID <= (SELECT MAX(EmpID) FROM Employees)
BEGIN
    IF (SELECT Salary FROM Employees WHERE EmpID = @EmpID) < 5000
        UPDATE Employees SET Salary = Salary * 1.1 WHERE EmpID = @EmpID;
    SET @EmpID = @EmpID + 1;
END


SELECT CustomerID FROM Orders
EXCEPT
SELECT CustomerID FROM Invoices;


SELECT CustomerID, ProductID, Region, SUM(SalesAmount) AS TotalSales
FROM Sales
GROUP BY CustomerID, ProductID, Region;


SELECT ProductID, Quantity,
    CASE
        WHEN Quantity >= 100 THEN '30% Discount'
        WHEN Quantity BETWEEN 50 AND 99 THEN '20% Discount'
        ELSE 'No Discount'
    END AS Discount
FROM Orders;


SELECT P.ProductID, P.ProductName, 'Available' AS Status
FROM Products P
INNER JOIN Stock S ON P.ProductID = S.ProductID
UNION
SELECT DP.ProductID, DP.ProductName, 'Discontinued' AS Status
FROM DiscontinuedProducts DP;


SELECT ProductName, Stock, IIF(Stock > 0, 'Available', 'Out of Stock') AS StockStatus
FROM Products;


SELECT CustomerID FROM Customers
EXCEPT
SELECT CustomerID FROM VIP_Customers;
