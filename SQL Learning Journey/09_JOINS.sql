-- Select database
USE world;


-- INNER JOIN
-- Returns only matching records from both tables

SELECT
    e.EmployeeID,
    e.EmployeeName,
    d.DepartmentName
FROM Employee e
INNER JOIN Department d
ON e.DepartmentID = d.DepartmentID;



-- LEFT JOIN
-- Returns all records from left table
-- and matching records from right table

SELECT
    e.EmployeeID,
    e.EmployeeName,
    d.DepartmentName
FROM Employee e
LEFT JOIN Department d
ON e.DepartmentID = d.DepartmentID;



-- RIGHT JOIN
-- Returns all records from right table
-- and matching records from left table

SELECT
    e.EmployeeID,
    e.EmployeeName,
    d.DepartmentName
FROM Employee e
RIGHT JOIN Department d
ON e.DepartmentID = d.DepartmentID;



-- FULL OUTER JOIN
-- MySQL does not support FULL OUTER JOIN directly
-- Using LEFT JOIN + RIGHT JOIN with UNION

SELECT
    e.EmployeeID,
    e.EmployeeName,
    d.DepartmentName
FROM Employee e
LEFT JOIN Department d
ON e.DepartmentID = d.DepartmentID

UNION

SELECT
    e.EmployeeID,
    e.EmployeeName,
    d.DepartmentName
FROM Employee e
RIGHT JOIN Department d
ON e.DepartmentID = d.DepartmentID;



-- CROSS JOIN
-- Creates every possible combination
-- between two tables

SELECT
    e.EmployeeName,
    d.DepartmentName
FROM Employee e
CROSS JOIN Department d;



-- SELF JOIN
-- Joining a table with itself
-- Used for hierarchical data like employee-manager

SELECT
    e.EmployeeName AS Employee,
    m.EmployeeName AS Manager
FROM Employee e
LEFT JOIN Employee m
ON e.ManagerID = m.EmployeeID;



-- JOIN PRACTICE


-- Find employee name with department name

SELECT
    e.EmployeeName,
    d.DepartmentName
FROM Employee e
JOIN Department d
ON e.DepartmentID = d.DepartmentID;



-- Count employees in each department

SELECT
    d.DepartmentName,
    COUNT(e.EmployeeID) AS Total_Employees
FROM Department d
LEFT JOIN Employee e
ON d.DepartmentID = e.DepartmentID
GROUP BY d.DepartmentName;



-- Find departments without employees

SELECT
    d.DepartmentName
FROM Department d
LEFT JOIN Employee e
ON d.DepartmentID = e.DepartmentID
WHERE e.EmployeeID IS NULL;
