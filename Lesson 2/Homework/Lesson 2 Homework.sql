
CREATE TABLE SampleTable (ID INT PRIMARY KEY, Name VARCHAR(50));
ALTER TABLE SampleTable ADD Age INT;


INSERT INTO SampleTable (ID, Name) VALUES (1, 'John');
UPDATE SampleTable SET Name = 'Jane' WHERE ID = 1;


CREATE TABLE Employees (
    EmpID INT PRIMARY KEY,
    Name VARCHAR(50),
    Salary DECIMAL(10,2)
);


INSERT INTO Employees (EmpID, Name, Salary) VALUES 
(1, 'Alice', 5000),
(2, 'Bob', 6000),
(3, 'Charlie', 7000);


UPDATE Employees SET Salary = 5500 WHERE EmpID = 1;


DELETE FROM Employees WHERE EmpID = 2;


DELETE FROM Employees WHERE EmpID = 3;


DROP TABLE Employees;


TRUNCATE TABLE Employees;


ALTER TABLE Employees ALTER COLUMN Name VARCHAR(100);


ALTER TABLE Employees ADD Department VARCHAR(50);


