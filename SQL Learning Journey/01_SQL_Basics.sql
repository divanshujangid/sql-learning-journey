-- ================================================================
--                     SQL BASICS
-- ================================================================
-- Repository  : SQL Learning Journey
-- Folder      : 01_SQL_Basics
-- Database    : MySQL
-- Author      : Divanshu Jangid
-- ================================================================

-- SQL stands for Structured Query Language.
-- SQL is the standard language used to communicate with relational databases.
-- SQL is used to store, retrieve, update, delete, and manage data.
-- SQL is supported by MySQL, PostgreSQL, SQL Server, Oracle, SQLite, and many other databases.

-- ================================================================
-- WHAT YOU WILL LEARN IN THIS FOLDER
-- ================================================================

-- Introduction to SQL
-- What is a Database?
-- What is a Table?
-- What is a Row (Record)?
-- What is a Column (Field)?
-- Primary Key
-- Foreign Key
-- Constraints
-- NULL Values
-- Data Types
-- SQL Syntax
-- Creating Databases
-- Creating Tables
-- Inserting Data
-- Viewing Data
-- Updating Data
-- Deleting Data
-- Filtering Data
-- Sorting Data
-- Aggregate Functions
-- Grouping Data
-- Joining Tables
-- Subqueries
-- Views
-- Indexes
-- Best Practices

-- ================================================================
-- WHAT IS A DATABASE?
-- ================================================================

-- A database is an organized collection of data.
-- Example:
-- Student Database
-- Employee Database
-- Hospital Database
-- Banking Database
-- E-Commerce Database

-- ================================================================
-- WHAT IS A TABLE?
-- ================================================================

-- A table stores related information in rows and columns.

-- Example Table:
--
-- +----+----------+-----+
-- | ID | Name     | Age |
-- +----+----------+-----+
-- | 1  | Divanshu | 20  |
-- | 2  | Aditya   | 21  |
-- +----+----------+-----+

-- ================================================================
-- WHAT IS A ROW?
-- ================================================================

-- A row represents one complete record.

-- ================================================================
-- WHAT IS A COLUMN?
-- ================================================================

-- A column represents one specific attribute of data.
-- Example:
-- Name
-- Age
-- Salary
-- Email

-- ================================================================
-- COMMON SQL DATA TYPES
-- ================================================================

-- INT
-- BIGINT
-- FLOAT
-- DECIMAL
-- CHAR
-- VARCHAR
-- TEXT
-- DATE
-- TIME
-- DATETIME
-- TIMESTAMP
-- BOOLEAN

-- ================================================================
-- SQL COMMAND CATEGORIES
-- ================================================================

-- DDL (Data Definition Language)
-- CREATE
-- ALTER
-- DROP
-- TRUNCATE
-- RENAME

-- DML (Data Manipulation Language)
-- INSERT
-- UPDATE
-- DELETE

-- DQL (Data Query Language)
-- SELECT

-- DCL (Data Control Language)
-- GRANT
-- REVOKE

-- TCL (Transaction Control Language)
-- COMMIT
-- ROLLBACK
-- SAVEPOINT

-- ================================================================
-- BASIC SQL SYNTAX
-- ================================================================

-- SQL keywords are not case-sensitive.
-- SELECT and select are the same.
-- Use semicolon (;) to end a SQL statement.
-- Table and column names should be meaningful.
-- Always write clean and readable queries.

-- ================================================================
-- BASIC SQL COMMANDS
-- ================================================================

-- CREATE DATABASE
-- USE DATABASE
-- CREATE TABLE
-- INSERT INTO
-- SELECT
-- UPDATE
-- DELETE
-- DROP TABLE

-- ================================================================
-- IMPORTANT SQL KEYWORDS
-- ================================================================

-- SELECT
-- DISTINCT
-- FROM
-- WHERE
-- ORDER BY
-- GROUP BY
-- HAVING
-- LIMIT
-- AS
-- IN
-- BETWEEN
-- LIKE
-- IS NULL
-- NOT NULL
-- EXISTS
-- UNION
-- JOIN

-- ================================================================
-- SQL OPERATORS
-- ================================================================

-- =
-- !=
-- <>
-- >
-- <
-- >=
-- <=

-- Logical Operators
-- AND
-- OR
-- NOT

-- Arithmetic Operators
-- +
-- -
-- *
-- /
-- %

-- ================================================================
-- AGGREGATE FUNCTIONS
-- ================================================================

-- COUNT()
-- SUM()
-- AVG()
-- MIN()
-- MAX()

-- ================================================================
-- STRING FUNCTIONS
-- ================================================================

-- CONCAT()
-- UPPER()
-- LOWER()
-- LENGTH()
-- SUBSTRING()
-- TRIM()
-- REPLACE()

-- ================================================================
-- DATE FUNCTIONS
-- ================================================================

-- CURDATE()
-- NOW()
-- YEAR()
-- MONTH()
-- DAY()

-- ================================================================
-- BEST PRACTICES
-- ================================================================

-- Use meaningful table names.
-- Use meaningful column names.
-- Avoid duplicate data.
-- Normalize data whenever possible.
-- Always use WHERE before UPDATE or DELETE.
-- Backup your database regularly.
-- Use PRIMARY KEY for unique identification.
-- Use FOREIGN KEY to maintain relationships.
-- Write readable and properly formatted SQL queries.

-- ================================================================
-- END OF SQL BASICS
-- NEXT FOLDER : 02_SELECT_Queries
-- ================================================================
