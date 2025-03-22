-- Easy-Level Tasks

-- 1. Select the top 5 employees
SELECT TOP 5 * FROM Employees;

-- 2. Select distinct ProductName values
SELECT DISTINCT ProductName FROM Products;

-- 3. Filter Products table to show products with Price > 100
SELECT * FROM Products WHERE Price > 100;

-- 4. Select all CustomerName values starting with 'A'
SELECT * FROM Customers WHERE CustomerName LIKE 'A%';

-- 5. Order Products by Price in ascending order
SELECT * FROM Products ORDER BY Price ASC;

-- 6. Filter Employees with Salary >= 5000 and Department = 'HR'
SELECT * FROM Employees WHERE Salary >= 5000 AND Department = 'HR';

-- 7. Replace NULL values in Email column
SELECT EmployeeID, ISNULL(Email, 'noemail@example.com') AS Email FROM Employees;

-- 8. Show all products with Price BETWEEN 50 AND 100
SELECT * FROM Products WHERE Price BETWEEN 50 AND 100;

-- 9. Select DISTINCT Category and ProductName
SELECT DISTINCT Category, ProductName FROM Products;

-- 10. Order Products by ProductName in descending order
SELECT * FROM Products ORDER BY ProductName DESC;
