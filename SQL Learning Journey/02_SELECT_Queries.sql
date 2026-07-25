-- Select all columns from the country table
SELECT * FROM country;

-- Select only the Name column from the country table
SELECT Name
FROM country;

-- Select country name and continent
SELECT Name, Continent
FROM country;

-- Select country name, region, and population
SELECT Name, Region, Population
FROM country;

-- Display all cities from the city table
SELECT *
FROM city;

-- Select city name and district
SELECT Name, District
FROM city;

-- Display country codes and languages
SELECT CountryCode, Language
FROM countrylanguage;

-- Rename the Name column as Country_Name
SELECT Name AS Country_Name
FROM country;

-- Rename multiple columns using aliases
SELECT
    Name AS Country_Name,
    Continent AS Continent_Name,
    Population AS Total_Population
FROM country;

-- Display unique continents
SELECT DISTINCT Continent
FROM country;

-- Display unique regions
SELECT DISTINCT Region
FROM country;

-- Display unique official languages
SELECT DISTINCT Language
FROM countrylanguage;

-- Select the first 10 countries
SELECT *
FROM country
LIMIT 10;

-- Select the first 5 cities
SELECT *
FROM city
LIMIT 5;

-- Display countries in alphabetical order
SELECT Name
FROM country
ORDER BY Name;

-- Display countries in reverse alphabetical order
SELECT Name
FROM country
ORDER BY Name DESC;

-- Display countries ordered by population from highest to lowest
SELECT Name, Population
FROM country
ORDER BY Population DESC;

-- Display cities ordered by population
SELECT Name, Population
FROM city
ORDER BY Population DESC;

-- Display countries with the highest life expectancy first
SELECT Name, LifeExpectancy
FROM country
ORDER BY LifeExpectancy DESC;

-- Display country name, capital, and population
SELECT Name, Capital, Population
FROM country;
