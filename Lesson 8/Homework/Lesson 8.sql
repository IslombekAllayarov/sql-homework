CREATE DATABASE Company_DB;
GO

USE Company_DB;
GO

SELECT TABLE_NAME 
FROM INFORMATION_SCHEMA.TABLES 
WHERE TABLE_TYPE = 'BASE TABLE';


DROP TABLE IF EXISTS Departments;
GO

CREATE TABLE Departments (
    DepartmentID INT PRIMARY KEY,
    DepartmentName VARCHAR(255),
    ManagerID INT,
    Location VARCHAR(255),
    Budget DECIMAL(10,2),
    Status VARCHAR(50)
);
GO

CREATE TABLE Positions (
    PositionID INT PRIMARY KEY,
    PositionName VARCHAR(100),
    MinSalary DECIMAL(18,2),
    MaxSalary DECIMAL(18,2),
    DepartmentID INT,
    RequiredExperience INT,
    FOREIGN KEY (DepartmentID) REFERENCES Departments(DepartmentID)
);


CREATE TABLE Employees (
    EmployeeID INT PRIMARY KEY,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    Email VARCHAR(100),
    PhoneNumber VARCHAR(20),
    HireDate DATE,
    DepartmentID INT,
    PositionID INT,
    FOREIGN KEY (DepartmentID) REFERENCES Departments(DepartmentID),
    FOREIGN KEY (PositionID) REFERENCES Positions(PositionID)
);


CREATE TABLE Salaries (
    SalaryID INT PRIMARY KEY,
    EmployeeID INT,
    SalaryAmount DECIMAL(18,2),
    Bonus DECIMAL(18,2),
    Deductions DECIMAL(18,2),
    PaymentDate DATE,
    TaxAmount DECIMAL(18,2),
    NetSalary DECIMAL(18,2),
    FOREIGN KEY (EmployeeID) REFERENCES Employees(EmployeeID)
);


CREATE TABLE Attendance (
    AttendanceID INT PRIMARY KEY,
    EmployeeID INT,
    Date DATE,
    CheckInTime TIME,
    CheckOutTime TIME,
    TotalHoursWorked DECIMAL(5,2),
    OvertimeHours DECIMAL(5,2),
    Status VARCHAR(20),
    FOREIGN KEY (EmployeeID) REFERENCES Employees(EmployeeID)
);


CREATE TABLE WorkShifts (
    ShiftID INT PRIMARY KEY,
    ShiftName VARCHAR(50),
    StartTime TIME,
    EndTime TIME,
    ShiftType VARCHAR(20),
    Status VARCHAR(20)
);


CREATE TABLE EmployeeShifts (
    ID INT PRIMARY KEY,
    EmployeeID INT,
    ShiftID INT,
    AssignedDate DATE,
    Status VARCHAR(20),
    FOREIGN KEY (EmployeeID) REFERENCES Employees(EmployeeID),
    FOREIGN KEY (ShiftID) REFERENCES WorkShifts(ShiftID)
);


CREATE TABLE PerformanceReviews (
    ReviewID INT PRIMARY KEY,
    EmployeeID INT,
    ReviewDate DATE,
    ReviewerID INT,
    PerformanceScore INT,
    Comments TEXT,
    FOREIGN KEY (EmployeeID) REFERENCES Employees(EmployeeID),
    FOREIGN KEY (ReviewerID) REFERENCES Employees(EmployeeID)
);
