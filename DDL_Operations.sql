/*
SQL Workshop Assignment - Question 2
DDL Operations
Author: Danish Khan
*/

USE WorkshopDB;

-- Query 1: CREATE TABLE
CREATE TABLE Students (
    StudentID INT PRIMARY KEY,
    StudentName VARCHAR(50),
    Department VARCHAR(50),
    Age INT
);

-- Query 2: ALTER TABLE - Add Column
ALTER TABLE Students
ADD Email VARCHAR(100);

-- Query 3: ALTER TABLE - Modify Column
ALTER TABLE Students
MODIFY StudentName VARCHAR(100);

-- Query 4: TRUNCATE TABLE
TRUNCATE TABLE Students;

-- Query 5: DROP TABLE
DROP TABLE Students;