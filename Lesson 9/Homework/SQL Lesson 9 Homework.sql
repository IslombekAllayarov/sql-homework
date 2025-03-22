


SELECT E.EmployeeName, E.Salary, D.DepartmentName 
FROM Employees E
INNER JOIN Departments D ON E.DepartmentID = D.DepartmentID
WHERE E.Salary > 5000;


SELECT C.CustomerName, O.OrderDate, O.OrderID 
FROM Customers C
INNER JOIN Orders O ON C.CustomerID = O.CustomerID
WHERE YEAR(O.OrderDate) = 2023;


SELECT E.EmployeeName, D.DepartmentName 
FROM Employees E
LEFT JOIN Departments D ON E.DepartmentID = D.DepartmentID;


SELECT S.SupplierName, P.ProductName 
FROM Products P
RIGHT JOIN Suppliers S ON P.SupplierID = S.SupplierID;


SELECT O.OrderID, O.OrderDate, P.PaymentID, P.PaymentDate 
FROM Orders O
FULL OUTER JOIN Payments P ON O.OrderID = P.OrderID;


SELECT E1.EmployeeName AS Employee, E2.EmployeeName AS Manager 
FROM Employees E1
LEFT JOIN Employees E2 ON E1.ManagerID = E2.EmployeeID;


SELECT P.ProductName, S.SalesAmount 
FROM Products P
INNER JOIN Sales S ON P.ProductID = S.ProductID
WHERE S.SalesAmount > 100;


SELECT S.StudentName, C.CourseName 
FROM Students S
INNER JOIN Enrollments E ON S.StudentID = E.StudentID
INNER JOIN Courses C ON E.CourseID = C.CourseID
WHERE C.CourseName = 'Math 101';


SELECT C.CustomerName, COUNT(O.OrderID) AS OrderCount 
FROM Customers C
INNER JOIN Orders O ON C.CustomerID = O.CustomerID
GROUP BY C.CustomerName
HAVING COUNT(O.OrderID) > 3;


SELECT E.EmployeeName, D.DepartmentName 
FROM Employees E
LEFT JOIN Departments D ON E.DepartmentID = D.DepartmentID
WHERE D.DepartmentName = 'HR';
