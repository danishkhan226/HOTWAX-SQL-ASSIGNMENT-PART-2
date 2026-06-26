/*
SQL Workshop Assignment - Question 4
SQL Joins
Author: Danish Khan
*/

USE WorkshopDB;

-- Create tables
CREATE TABLE Departments (
    DepartmentID INT PRIMARY KEY,
    DepartmentName VARCHAR(50)
);

CREATE TABLE Students (
    StudentID INT PRIMARY KEY,
    StudentName VARCHAR(100),
    DepartmentID INT
);

-- Insert data
INSERT INTO Departments VALUES
(101, 'Computer Science'),
(102, 'Information Technology'),
(103, 'Electronics'),
(104, 'Mechanical');

INSERT INTO Students VALUES
(1, 'Lumi', 101),
(2, 'Rahul', 102),
(3, 'Priya', 101),
(4, 'Aman', 105);

-- INNER JOIN
SELECT Students.StudentID, Students.StudentName, Departments.DepartmentName
FROM Students
INNER JOIN Departments
ON Students.DepartmentID = Departments.DepartmentID;

-- LEFT JOIN
SELECT Students.StudentID, Students.StudentName, Departments.DepartmentName
FROM Students
LEFT JOIN Departments
ON Students.DepartmentID = Departments.DepartmentID;

-- RIGHT JOIN
SELECT Students.StudentID, Students.StudentName, Departments.DepartmentName
FROM Students
RIGHT JOIN Departments
ON Students.DepartmentID = Departments.DepartmentID;

-- FULL OUTER JOIN using UNION
SELECT Students.StudentID, Students.StudentName, Departments.DepartmentName
FROM Students
LEFT JOIN Departments
ON Students.DepartmentID = Departments.DepartmentID

UNION

SELECT Students.StudentID, Students.StudentName, Departments.DepartmentName
FROM Students
RIGHT JOIN Departments
ON Students.DepartmentID = Departments.DepartmentID;