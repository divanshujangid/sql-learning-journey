-- Count the total number of countries
SELECT COUNT(*) AS Total_Countries
FROM country;

-- Count the total number of cities
SELECT COUNT(*) AS Total_Cities
FROM city;

-- Count the total number of official languages
SELECT COUNT(*) AS Official_Languages
FROM countrylanguage
WHERE IsOfficial = 'T';

-- Count the total number of unofficial languages
SELECT COUNT(*) AS Unofficial_Languages
FROM countrylanguage
WHERE IsOfficial = 'F';

-- Count the number of countries in Asia
SELECT COUNT(*) AS Asian_Countries
FROM country
WHERE Continent = 'Asia';

-- Count the number of countries in Europe
SELECT COUNT(*) AS European_Countries
FROM country
WHERE Continent = 'Europe';

-- Count the number of cities in India
SELECT COUNT(*) AS Indian_Cities
FROM city
WHERE CountryCode = 'IND';

-- Calculate the total population of all countries
SELECT SUM(Population) AS Total_Population
FROM country;

-- Calculate the total population of all cities
SELECT SUM(Population) AS Total_City_Population
FROM city;

-- Calculate the total population of Asian countries
SELECT SUM(Population) AS Asia_Population
FROM country
WHERE Continent = 'Asia';

-- Calculate the average population of all countries
SELECT AVG(Population) AS Average_Population
FROM country;

-- Calculate the average population of all cities
SELECT AVG(Population) AS Average_City_Population
FROM city;

-- Calculate the average life expectancy
SELECT AVG(LifeExpectancy) AS Average_Life_Expectancy
FROM country;

-- Find the highest population among countries
SELECT MAX(Population) AS Highest_Population
FROM country;

-- Find the lowest population among countries
SELECT MIN(Population) AS Lowest_Population
FROM country;

-- Find the highest city population
SELECT MAX(Population) AS Highest_City_Population
FROM city;

-- Find the lowest city population
SELECT MIN(Population) AS Lowest_City_Population
FROM city;

-- Find the highest life expectancy
SELECT MAX(LifeExpectancy) AS Highest_Life_Expectancy
FROM country;

-- Find the lowest life expectancy
SELECT MIN(LifeExpectancy) AS Lowest_Life_Expectancy
FROM country;

-- Find the highest GNP
SELECT MAX(GNP) AS Highest_GNP
FROM country;

-- Find the lowest GNP
SELECT MIN(GNP) AS Lowest_GNP
FROM country;

-- Find the total surface area of all countries
SELECT SUM(SurfaceArea) AS Total_Surface_Area
FROM country;

-- Calculate the average surface area
SELECT AVG(SurfaceArea) AS Average_Surface_Area
FROM country;

-- Find the country with the maximum surface area
SELECT Name, SurfaceArea
FROM country
WHERE SurfaceArea = (
    SELECT MAX(SurfaceArea)
    FROM country
);

-- Find the country with the minimum surface area
SELECT Name, SurfaceArea
FROM country
WHERE SurfaceArea = (
    SELECT MIN(SurfaceArea)
    FROM country
);

-- Find the city with the highest population
SELECT Name, Population
FROM city
WHERE Population = (
    SELECT MAX(Population)
    FROM city
);

-- Find the city with the lowest population
SELECT Name, Population
FROM city
WHERE Population = (
    SELECT MIN(Population)
    FROM city
);

-- Count the number of distinct continents
SELECT COUNT(DISTINCT Continent) AS Total_Continents
FROM country;

-- Count the number of distinct regions
SELECT COUNT(DISTINCT Region) AS Total_Regions
FROM country;

-- Count the number of distinct languages
SELECT COUNT(DISTINCT Language) AS Total_Languages
FROM countrylanguage;
