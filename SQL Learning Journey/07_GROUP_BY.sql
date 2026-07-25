-- Group countries by continent and count the total countries in each continent
SELECT Continent, COUNT(*) AS Total_Countries
FROM country
GROUP BY Continent;

-- Group countries by region and count the total countries in each region
SELECT Region, COUNT(*) AS Total_Countries
FROM country
GROUP BY Region;

-- Calculate the total population of each continent
SELECT Continent, SUM(Population) AS Total_Population
FROM country
GROUP BY Continent;

-- Calculate the average population of each continent
SELECT Continent, AVG(Population) AS Average_Population
FROM country
GROUP BY Continent;

-- Find the highest population in each continent
SELECT Continent, MAX(Population) AS Highest_Population
FROM country
GROUP BY Continent;

-- Find the lowest population in each continent
SELECT Continent, MIN(Population) AS Lowest_Population
FROM country
GROUP BY Continent;

-- Calculate the average life expectancy for each continent
SELECT Continent, AVG(LifeExpectancy) AS Average_Life_Expectancy
FROM country
GROUP BY Continent;

-- Count the total countries in each government form
SELECT GovernmentForm, COUNT(*) AS Total_Countries
FROM country
GROUP BY GovernmentForm;

-- Count the total countries in each region
SELECT Region, COUNT(*) AS Total_Countries
FROM country
GROUP BY Region;

-- Calculate the total GNP for each continent
SELECT Continent, SUM(GNP) AS Total_GNP
FROM country
GROUP BY Continent;

-- Calculate the average GNP for each continent
SELECT Continent, AVG(GNP) AS Average_GNP
FROM country
GROUP BY Continent;

-- Count the total cities in each country
SELECT CountryCode, COUNT(*) AS Total_Cities
FROM city
GROUP BY CountryCode;

-- Calculate the total population of cities in each country
SELECT CountryCode, SUM(Population) AS Total_City_Population
FROM city
GROUP BY CountryCode;

-- Calculate the average city population in each country
SELECT CountryCode, AVG(Population) AS Average_City_Population
FROM city
GROUP BY CountryCode;

-- Find the most populated city in each country
SELECT CountryCode, MAX(Population) AS Highest_City_Population
FROM city
GROUP BY CountryCode;

-- Find the least populated city in each country
SELECT CountryCode, MIN(Population) AS Lowest_City_Population
FROM city
GROUP BY CountryCode;

-- Count the number of languages spoken in each country
SELECT CountryCode, COUNT(Language) AS Total_Languages
FROM countrylanguage
GROUP BY CountryCode;

-- Count the number of official languages in each country
SELECT CountryCode, COUNT(Language) AS Official_Languages
FROM countrylanguage
WHERE IsOfficial = 'T'
GROUP BY CountryCode;

-- Calculate the average language percentage in each country
SELECT CountryCode, AVG(Percentage) AS Average_Percentage
FROM countrylanguage
GROUP BY CountryCode;

-- Find the highest language percentage in each country
SELECT CountryCode, MAX(Percentage) AS Highest_Percentage
FROM countrylanguage
GROUP BY CountryCode;

-- Find the lowest language percentage in each country
SELECT CountryCode, MIN(Percentage) AS Lowest_Percentage
FROM countrylanguage
GROUP BY CountryCode;

-- Group countries by continent and region
SELECT Continent, Region, COUNT(*) AS Total_Countries
FROM country
GROUP BY Continent, Region;

-- Group cities by country and district
SELECT CountryCode, District, COUNT(*) AS Total_Cities
FROM city
GROUP BY CountryCode, District;

-- Calculate the total city population by district
SELECT District, SUM(Population) AS Total_Population
FROM city
GROUP BY District;

-- Count the number of cities in each district
SELECT District, COUNT(*) AS Total_Cities
FROM city
GROUP BY District;

-- Calculate the average city population in each district
SELECT District, AVG(Population) AS Average_Population
FROM city
GROUP BY District;

-- Find the highest populated district
SELECT District, MAX(Population) AS Highest_City_Population
FROM city
GROUP BY District;

-- Find the lowest populated district
SELECT District, MIN(Population) AS Lowest_City_Population
FROM city
GROUP BY District;

-- Count the number of countries for each local name
SELECT LocalName, COUNT(*) AS Total_Countries
FROM country
GROUP BY LocalName;

-- Display continents sorted by the number of countries
SELECT Continent, COUNT(*) AS Total_Countries
FROM country
GROUP BY Continent
ORDER BY Total_Countries DESC;
