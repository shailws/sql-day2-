-- Step 1: Create the Database
CREATE DATABASE SampleDB;
USE SampleDB;

-- Step 2: Create the Table
CREATE TABLE Employees (
    EmployeeID INT AUTO_INCREMENT PRIMARY KEY,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    Department VARCHAR(50),
    Salary DECIMAL(10, 2),
    HireDate DATE
);

-- Step 3: Insert 10 Rows into the Table
INSERT INTO Employees (FirstName, LastName, Department, Salary, HireDate) VALUES
('Alice', 'Smith', 'HR', 55000.00, '2020-01-15'),
('Bob', 'Johnson', 'Finance', 75000.00, '2019-06-20'),
('Charlie', 'Brown', 'IT', 80000.00, '2021-03-10'),
('Diana', 'White', 'Marketing', 60000.00, '2018-11-05'),
('Evan', 'Davis', 'IT', 85000.00, '2020-07-22'),
('Fiona', 'Garcia', 'Finance', 72000.00, '2021-05-14'),
('George', 'Martinez', 'HR', 52000.00, '2022-02-01'),
('Hannah', 'Lopez', 'Marketing', 59000.00, '2020-12-12'),
('Ian', 'Taylor', 'IT', 91000.00, '2017-09-18'),
('Julia', 'Anderson', 'Finance', 67000.00, '2019-08-25');

-- Step 4: Fetch the Complete Table
SELECT * FROM Employees;

-- Step 5: Fetch Each Column of the Table
SELECT EmployeeID FROM Employees;
SELECT FirstName FROM Employees;
SELECT LastName FROM Employees;
SELECT Department FROM Employees;
SELECT Salary FROM Employees;
SELECT HireDate FROM Employees;

-- Step 6: Fetch Different Data Using WHERE Clause
-- Condition 1: Employees in the IT Department
SELECT * FROM Employees WHERE Department = 'IT';

-- Condition 2: Employees with a salary greater than 70000
SELECT * FROM Employees WHERE Salary > 70000;

-- Condition 3: Employees hired after January 1, 2020
SELECT * FROM Employees WHERE HireDate > '2020-01-01';

-- Condition 4: Employees with last name 'Lopez'
SELECT * FROM Employees WHERE LastName = 'Lopez';

-- Condition 5: Employees with salaries between 60000 and 80000
SELECT * FROM Employees WHERE Salary BETWEEN 60000 AND 80000;

-- Step 7: Update at Least 5 Rows
-- Update 1: Increase salary of employees in IT department by 5%
UPDATE Employees SET Salary = Salary * 1.05 WHERE Department = 'IT';

-- Update 2: Change the department of 'Diana White' to 'Sales'
UPDATE Employees SET Department = 'Sales' WHERE FirstName = 'Diana' AND LastName = 'White';

-- Update 3: Update the salary of 'Julia Anderson' to 70000
UPDATE Employees SET Salary = 70000 WHERE FirstName = 'Julia' AND LastName = 'Anderson';

-- Update 4: Change hire date of employees in HR department to '2023-01-01'
UPDATE Employees SET HireDate = '2023-01-01' WHERE Department = 'HR';

-- Update 5: Set salary of employees hired before 2019 to 65000
UPDATE Employees SET Salary = 65000 WHERE HireDate < '2019-01-01';

-- Step 8: Delete Rows from the Table
-- Delete employees in Marketing department
DELETE FROM Employees WHERE Department = 'Marketing';

-- Delete employees with a salary less than 60000
DELETE FROM Employees WHERE Salary < 60000;


