-- Display the first 5 countries
SELECT *
FROM country
LIMIT 5;

-- Display the first 10 countries
SELECT *
FROM country
LIMIT 10;

-- Display the first 15 countries
SELECT *
FROM country
LIMIT 15;

-- Display the first 20 countries
SELECT *
FROM country
LIMIT 20;

-- Display the first 5 cities
SELECT *
FROM city
LIMIT 5;

-- Display the first 10 cities
SELECT *
FROM city
LIMIT 10;

-- Display the first 20 cities
SELECT *
FROM city
LIMIT 20;

-- Display the first 10 official languages
SELECT *
FROM countrylanguage
LIMIT 10;

-- Display the first 5 countries ordered by name
SELECT Name
FROM country
ORDER BY Name
LIMIT 5;

-- Display the first 10 countries ordered by name
SELECT Name
FROM country
ORDER BY Name
LIMIT 10;

-- Display the first 5 countries with the highest population
SELECT Name, Population
FROM country
ORDER BY Population DESC
LIMIT 5;

-- Display the first 10 countries with the highest population
SELECT Name, Population
FROM country
ORDER BY Population DESC
LIMIT 10;

-- Display the first 5 countries with the lowest population
SELECT Name, Population
FROM country
ORDER BY Population
LIMIT 5;

-- Display the first 10 cities with the highest population
SELECT Name, Population
FROM city
ORDER BY Population DESC
LIMIT 10;

-- Display the first 10 cities with the lowest population
SELECT Name, Population
FROM city
ORDER BY Population
LIMIT 10;

-- Display the first 5 countries with the highest life expectancy
SELECT Name, LifeExpectancy
FROM country
ORDER BY LifeExpectancy DESC
LIMIT 5;

-- Display the first 5 countries with the lowest life expectancy
SELECT Name, LifeExpectancy
FROM country
ORDER BY LifeExpectancy
LIMIT 5;

-- Display the first 10 countries with the largest surface area
SELECT Name, SurfaceArea
FROM country
ORDER BY SurfaceArea DESC
LIMIT 10;

-- Display the first 10 countries with the highest GNP
SELECT Name, GNP
FROM country
ORDER BY GNP DESC
LIMIT 10;

-- Display the first 10 countries with the lowest GNP
SELECT Name, GNP
FROM country
ORDER BY GNP
LIMIT 10;

-- Display 10 countries after skipping the first 5 records
SELECT *
FROM country
LIMIT 5, 10;

-- Display 10 cities after skipping the first 20 records
SELECT *
FROM city
LIMIT 20, 10;

-- Display 5 countries after skipping the first 10 records
SELECT Name, Population
FROM country
ORDER BY Population DESC
LIMIT 10, 5;

-- Display the second page of countries with 10 records per page
SELECT *
FROM country
LIMIT 10 OFFSET 10;

-- Display the third page of countries with 10 records per page
SELECT *
FROM country
LIMIT 10 OFFSET 20;

-- Display the first 5 official languages
SELECT CountryCode, Language
FROM countrylanguage
WHERE IsOfficial = 'T'
LIMIT 5;

-- Display the first 10 unofficial languages
SELECT CountryCode, Language
FROM countrylanguage
WHERE IsOfficial = 'F'
LIMIT 10;

-- Display the first 5 Asian countries
SELECT Name, Continent
FROM country
WHERE Continent = 'Asia'
LIMIT 5;

-- Display the first 5 European countries
SELECT Name, Continent
FROM country
WHERE Continent = 'Europe'
LIMIT 5;

-- Display the top 3 most populated cities in India
SELECT Name, Population
FROM city
WHERE CountryCode = 'IND'
ORDER BY Population DESC
LIMIT 3;
