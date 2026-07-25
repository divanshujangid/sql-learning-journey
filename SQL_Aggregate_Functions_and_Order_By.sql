-- =========================================================
-- MySQL Practice: Aggregate Functions & ORDER BY Clause
-- Database: World
-- Topics:
-- 1. DISTINCT
-- 2. Aggregate Functions
-- 3. COUNT, SUM, AVG, MIN, MAX
-- 4. Data Sorting using ORDER BY
-- =========================================================


USE world;


-- =========================================================
-- PART 1: DISTINCT Keyword
-- =========================================================

-- DISTINCT is used to remove duplicate values
-- Example: Getting all unique continents from country table

SELECT continent 
FROM country;


-- Fetch only unique continent names

SELECT DISTINCT continent 
FROM country;



-- Fetch all country names

SELECT name 
FROM country;


-- Fetch unique country names
-- Duplicate names will be removed

SELECT DISTINCT name 
FROM country;



-- =========================================================
-- PART 2: COUNT() Function
-- =========================================================

-- COUNT() is an aggregate function
-- It returns the number of rows


-- Count total continents entries

SELECT COUNT(continent)
FROM country;


-- Count total country names
-- Compare total records and unique records

SELECT 
COUNT(name) AS total_countries,
COUNT(DISTINCT name) AS unique_countries
FROM country;



-- =========================================================
-- PART 3: SUM(), AVG(), MAX(), MIN()
-- =========================================================


-- COUNT = Total number of values
-- SUM   = Addition of all values
-- AVG   = Average value


-- Population analysis

SELECT 
COUNT(population) AS total_records,
SUM(population) AS total_population,
AVG(population) AS average_population
FROM country;



-- Surface area analysis

SELECT surfacearea
FROM country;



SELECT 
COUNT(surfacearea) AS total_surface_records,
SUM(surfacearea) AS total_area,
MAX(surfacearea) AS largest_area
FROM country;



-- =========================================================
-- PART 4: MIN(), MAX()
-- =========================================================


-- Find maximum continent name alphabetically

SELECT MAX(continent)
FROM country;


-- Find minimum continent name alphabetically

SELECT MIN(continent)
FROM country;



-- NOTE:
-- SUM() cannot be applied on text values
-- Example:

-- SELECT SUM(continent) FROM country;
-- This will not give meaningful output



-- =========================================================
-- PART 5: Working with Functions
-- =========================================================


-- NOW() returns current date and time

SELECT NOW();



SELECT 
COUNT(NOW()),
NOW(),
MAX(NOW()),
MIN(NOW());



-- =========================================================
-- PART 6: Aggregate and Non-Aggregate Columns
-- =========================================================


-- population is a normal column
-- COUNT(population) is an aggregate function


-- Mixing normal column and aggregate function
-- without GROUP BY will create an error in strict SQL mode


SELECT 
population,
COUNT(population)
FROM country;



-- Average population of all countries

SELECT AVG(population)
FROM country;



-- =========================================================
-- PART 7: Using REPLACE() with Aggregate Function
-- =========================================================


-- Replace first digit 1 with 4 in population values

SELECT 
AVG(population),
AVG(REPLACE(population,1,4))
FROM country;



-- Difference between original average
-- and modified average population

SELECT 
AVG(population) - AVG(REPLACE(population,1,4))
AS difference
FROM country;



-- Remove zero values from population

SELECT 
AVG(REPLACE(population,0,''))
FROM country;



-- =========================================================
-- PART 8: ORDER BY Clause
-- =========================================================


-- ORDER BY is used to sort data


-- Sort country names A to Z

SELECT 
name,
continent,
region,
population
FROM country
ORDER BY name;



-- Sort country names Z to A

SELECT 
name,
continent,
region,
population
FROM country
ORDER BY name DESC;



-- Sort population in ascending order

SELECT 
name,
population
FROM country
ORDER BY population;



-- Sort population from highest to lowest

SELECT 
name,
population
FROM country
ORDER BY population DESC;



-- Sort continent names

SELECT 
name,
continent
FROM country
ORDER BY continent;



-- Reverse continent sorting

SELECT 
name,
continent
FROM country
ORDER BY continent DESC;



-- =========================================================
-- PART 9: Multiple Column Sorting
-- =========================================================


-- First sort by population
-- If population is same then sort by name

SELECT 
name,
continent,
region,
population
FROM country
ORDER BY population,name;



-- First sort continent
-- Then sort country name inside continent

SELECT 
name,
continent,
region,
population
FROM country
ORDER BY continent,name;



-- Sort region alphabetically
-- And population highest first inside each region

SELECT 
name,
continent,
region,
population
FROM country
ORDER BY region,population DESC;

