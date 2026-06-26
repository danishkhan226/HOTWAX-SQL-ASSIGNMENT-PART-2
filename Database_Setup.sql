/*
==========================================================
SQL Workshop Assignment - Part 2
File: Database_Setup.sql

Author: Danish Khan

Purpose:
This file creates and selects the database used for
the SQL Workshop Assignment.
==========================================================
*/

-- ======================================================
-- Display all existing databases
-- ======================================================

SHOW DATABASES;

-- ======================================================
-- Create the Workshop Database
-- ======================================================

CREATE DATABASE WorkshopDB;

-- ======================================================
-- Verify the database has been created
-- ======================================================

SHOW DATABASES;

-- ======================================================
-- Select the database
-- ======================================================

USE WorkshopDB;

-- ======================================================
-- Verify the selected database
-- ======================================================

SELECT DATABASE();