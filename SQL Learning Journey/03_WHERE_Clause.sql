-- Display all countries located in Asia
SELECT *
FROM country
WHERE Continent = 'Asia';

-- Display all countries located in Europe
SELECT *
FROM country
WHERE Continent = 'Europe';

-- Display countries with a population greater than 100000000
SELECT Name, Population
FROM country
WHERE Population > 100000000;

-- Display countries with a population less than 1000000
SELECT Name, Population
FROM country
WHERE Population < 1000000;

-- Display countries whose life expectancy is greater than 75 years
SELECT Name, LifeExpectancy
FROM country
WHERE LifeExpectancy > 75;

-- Display countries whose life expectancy is less than 50 years
SELECT Name, LifeExpectancy
FROM country
WHERE LifeExpectancy < 50;

-- Display countries where the government form is Republic
SELECT Name, GovernmentForm
FROM country
WHERE GovernmentForm = 'Republic';

-- Display countries that became independent after 1950
SELECT Name, IndepYear
FROM country
WHERE IndepYear > 1950;

-- Display countries that became independent before 1900
SELECT Name, IndepYear
FROM country
WHERE IndepYear < 1900;

-- Display all cities located in India
SELECT *
FROM city
WHERE CountryCode = 'IND';

-- Display all cities located in the United States
SELECT *
FROM city
WHERE CountryCode = 'USA';

-- Display cities with a population greater than 5000000
SELECT Name, Population
FROM city
WHERE Population > 5000000;

-- Display cities with a population between 1000000 and 5000000
SELECT Name, Population
FROM city
WHERE Population BETWEEN 1000000 AND 5000000;

-- Display countries whose names start with the letter A
SELECT Name
FROM country
WHERE Name LIKE 'A%';

-- Display countries whose names end with the letter A
SELECT Name
FROM country
WHERE Name LIKE '%a';

-- Display countries whose names contain the word land
SELECT Name
FROM country
WHERE Name LIKE '%land%';

-- Display countries whose names have exactly five characters
SELECT Name
FROM country
WHERE Name LIKE '_____';

-- Display cities whose names start with the letter S
SELECT Name
FROM city
WHERE Name LIKE 'S%';

-- Display cities whose names end with the letter r
SELECT Name
FROM city
WHERE Name LIKE '%r';

-- Display countries that belong to either Asia or Europe
SELECT Name, Continent
FROM country
WHERE Continent IN ('Asia', 'Europe');

-- Display countries that do not belong to Asia
SELECT Name, Continent
FROM country
WHERE Continent <> 'Asia';

-- Display countries with a population between 1000000 and 10000000
SELECT Name, Population
FROM country
WHERE Population BETWEEN 1000000 AND 10000000;

-- Display countries whose independence year is not available
SELECT Name
FROM country
WHERE IndepYear IS NULL;

-- Display countries whose independence year is available
SELECT Name, IndepYear
FROM country
WHERE IndepYear IS NOT NULL;

-- Display countries where life expectancy is between 70 and 80 years
SELECT Name, LifeExpectancy
FROM country
WHERE LifeExpectancy BETWEEN 70 AND 80;

-- Display cities with a population less than or equal to 100000
SELECT Name, Population
FROM city
WHERE Population <= 100000;

-- Display countries where the local name is Japan
SELECT Name, LocalName
FROM country
WHERE LocalName = 'Nihon/Nippon';

-- Display official languages spoken in India
SELECT Language
FROM countrylanguage
WHERE CountryCode = 'IND'
AND IsOfficial = 'T';

-- Display non-official languages spoken in India
SELECT Language
FROM countrylanguage
WHERE CountryCode = 'IND'
AND IsOfficial = 'F';

-- Display countries where the surface area is greater than 1000000
SELECT Name, SurfaceArea
FROM country
WHERE SurfaceArea > 1000000;

-- Display countries where the GNP is greater than 500000
SELECT Name, GNP
FROM country
WHERE GNP > 500000;
