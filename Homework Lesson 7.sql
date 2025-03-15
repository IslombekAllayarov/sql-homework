use AdventureWorks2022;

select * FROM Production.Product;

SELECT
   MIN(ListPrice) AS MinPrice 
FROM Production.Product;
   
SELECT
   MAX(Rate) AS MaxSalary 
FROM HumanResources.EmployeePayHistory;
  
SELECT
  COUNT(*) AS TotalCustomers 
FROM Sales.Customer;
  
SELECT
  COUNT(DISTINCT ProductCategoryID) AS UniqueCategories 
FROM Production.ProductCategory;

SELECT  
  SUM(LineTotal) AS TotalSales 
FROM Sales.SalesOrderDetail;

SELECT  
  AVG(DATEDIFF(YEAR, BirthDate, GETDATE())) AS AvgAge 
FROM HumanResources.Employee;

SELECT   
   COUNT(*) AS EmployeeCount 
FROM HumanResources.EmployeeDepartmentHistory 
GROUP BY DepartmentID;

SELECT   
   MIN(p.ListPrice) AS MinPrice, 
   MAX(p.ListPrice) AS MaxPrice, 
FROM Production.Product p
JOIN Production.ProductSubcategory s ON p.ProductSubcategoryID = s.ProductSubcategoryID
GROUP BY p.ProductCategoryID;

SELECT   
   SUM(TotalDue) AS TotalSales 
FROM Sales.SalesOrderHeader 
GROUP BY TerritoryID;

SELECT
   COUNT(*) AS EmployeeCount 
FROM HumanResources.EmployeeDepartmentHistory 
GROUP BY DepartmentID 
HAVING COUNT(*) > 5;