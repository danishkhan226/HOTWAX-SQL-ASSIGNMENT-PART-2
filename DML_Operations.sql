/*
SQL Workshop Assignment - Question 3
DML Operations
Author: Danish Khan
*/

USE WorkshopDB;

-- Create table
CREATE TABLE Students (
    StudentID INT PRIMARY KEY,
    StudentName VARCHAR(100),
    Department VARCHAR(50),
    Age INT,
    Email VARCHAR(100)
);

-- Query 1: INSERT
INSERT INTO Students
VALUES
(1, 'Lumi', 'CSE', 20, 'lumi@gmail.com'),
(2, 'Rahul', 'IT', 21, 'rahul@gmail.com'),
(3, 'Priya', 'ECE', 19, 'priya@gmail.com');

-- Query 2: UPDATE
UPDATE Students
SET Department = 'Computer Science'
WHERE StudentID = 1;

-- Query 3: DELETE
DELETE FROM Students
WHERE StudentID = 3;