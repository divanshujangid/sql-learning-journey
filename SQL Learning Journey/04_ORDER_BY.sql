-- Display all countries in ascending order by name
SELECT Name
FROM country
ORDER BY Name ASC;

-- Display all countries in descending order by name
SELECT Name
FROM country
ORDER BY Name DESC;

-- Display countries from highest to lowest population
SELECT Name, Population
FROM country
ORDER BY Population DESC;

-- Display countries from lowest to highest population
SELECT Name, Population
FROM country
ORDER BY Population ASC;

-- Display countries by highest life expectancy
SELECT Name, LifeExpectancy
FROM country
ORDER BY LifeExpectancy DESC;

-- Display countries by lowest life expectancy
SELECT Name, LifeExpectancy
FROM country
ORDER BY LifeExpectancy ASC;

-- Display countries by highest surface area
SELECT Name, SurfaceArea
FROM country
ORDER BY SurfaceArea DESC;

-- Display countries by lowest surface area
SELECT Name, SurfaceArea
FROM country
ORDER BY SurfaceArea ASC;

-- Display countries sorted by continent and then country name
SELECT Name, Continent
FROM country
ORDER BY Continent ASC, Name ASC;

-- Display countries sorted by region and then population
SELECT Name, Region, Population
FROM country
ORDER BY Region ASC, Population DESC;

-- Display countries sorted by government form and then name
SELECT Name, GovernmentForm
FROM country
ORDER BY GovernmentForm ASC, Name ASC;

-- Display countries sorted by independence year
SELECT Name, IndepYear
FROM country
ORDER BY IndepYear ASC;

-- Display countries by most recent independence year
SELECT Name, IndepYear
FROM country
ORDER BY IndepYear DESC;

-- Display cities from highest to lowest population
SELECT Name, Population
FROM city
ORDER BY Population DESC;

-- Display cities from lowest to highest population
SELECT Name, Population
FROM city
ORDER BY Population ASC;

-- Display cities alphabetically
SELECT Name
FROM city
ORDER BY Name ASC;

-- Display cities in reverse alphabetical order
SELECT Name
FROM city
ORDER BY Name DESC;

-- Display cities sorted by district and city name
SELECT Name, District
FROM city
ORDER BY District ASC, Name ASC;

-- Display cities sorted by country code and population
SELECT Name, CountryCode, Population
FROM city
ORDER BY CountryCode ASC, Population DESC;

-- Display official languages alphabetically
SELECT CountryCode, Language
FROM countrylanguage
WHERE IsOfficial = 'T'
ORDER BY Language ASC;

-- Display languages by percentage from highest to lowest
SELECT CountryCode, Language, Percentage
FROM countrylanguage
ORDER BY Percentage DESC;

-- Display languages by percentage from lowest to highest
SELECT CountryCode, Language, Percentage
FROM countrylanguage
ORDER BY Percentage ASC;

-- Display countries sorted by GNP from highest to lowest
SELECT Name, GNP
FROM country
ORDER BY GNP DESC;

-- Display countries sorted by GNP from lowest to highest
SELECT Name, GNP
FROM country
ORDER BY GNP ASC;

-- Display the top 10 most populated countries
SELECT Name, Population
FROM country
ORDER BY Population DESC
LIMIT 10;

-- Display the top 10 most populated cities
SELECT Name, Population
FROM city
ORDER BY Population DESC
LIMIT 10;

-- Display the 10 countries with the largest surface area
SELECT Name, SurfaceArea
FROM country
ORDER BY SurfaceArea DESC
LIMIT 10;

-- Display countries sorted by continent, region, and country name
SELECT Name, Continent, Region
FROM country
ORDER BY Continent ASC, Region ASC, Name ASC;

-- Display countries sorted by life expectancy and population
SELECT Name, LifeExpectancy, Population
FROM country
ORDER BY LifeExpectancy DESC, Population DESC;

-- Display countries sorted by local name
SELECT Name, LocalName
FROM country
ORDER BY LocalName ASC;
