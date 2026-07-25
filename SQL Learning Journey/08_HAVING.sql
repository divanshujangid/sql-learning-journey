-- Display continents having more than 40 countries
SELECT Continent, COUNT(*) AS Total_Countries
FROM country
GROUP BY Continent
HAVING COUNT(*) > 40;

-- Display regions having more than 10 countries
SELECT Region, COUNT(*) AS Total_Countries
FROM country
GROUP BY Region
HAVING COUNT(*) > 10;

-- Display continents with a total population greater than 500000000
SELECT Continent, SUM(Population) AS Total_Population
FROM country
GROUP BY Continent
HAVING SUM(Population) > 500000000;

-- Display continents with an average population greater than 20000000
SELECT Continent, AVG(Population) AS Average_Population
FROM country
GROUP BY Continent
HAVING AVG(Population) > 20000000;

-- Display continents where the highest population exceeds 100000000
SELECT Continent, MAX(Population) AS Highest_Population
FROM country
GROUP BY Continent
HAVING MAX(Population) > 100000000;

-- Display continents where the minimum population is less than 1000000
SELECT Continent, MIN(Population) AS Lowest_Population
FROM country
GROUP BY Continent
HAVING MIN(Population) < 1000000;

-- Display government forms used by more than 10 countries
SELECT GovernmentForm, COUNT(*) AS Total_Countries
FROM country
GROUP BY GovernmentForm
HAVING COUNT(*) > 10;

-- Display countries having more than 20 cities
SELECT CountryCode, COUNT(*) AS Total_Cities
FROM city
GROUP BY CountryCode
HAVING COUNT(*) > 20;

-- Display countries where the total city population exceeds 10000000
SELECT CountryCode, SUM(Population) AS Total_City_Population
FROM city
GROUP BY CountryCode
HAVING SUM(Population) > 10000000;

-- Display countries where the average city population exceeds 1000000
SELECT CountryCode, AVG(Population) AS Average_City_Population
FROM city
GROUP BY CountryCode
HAVING AVG(Population) > 1000000;

-- Display countries where the largest city has a population greater than 5000000
SELECT CountryCode, MAX(Population) AS Largest_City
FROM city
GROUP BY CountryCode
HAVING MAX(Population) > 5000000;

-- Display countries where the smallest city has a population less than 50000
SELECT CountryCode, MIN(Population) AS Smallest_City
FROM city
GROUP BY CountryCode
HAVING MIN(Population) < 50000;

-- Display countries having more than 5 official languages
SELECT CountryCode, COUNT(*) AS Official_Languages
FROM countrylanguage
WHERE IsOfficial = 'T'
GROUP BY CountryCode
HAVING COUNT(*) > 5;

-- Display countries having more than 10 total languages
SELECT CountryCode, COUNT(*) AS Total_Languages
FROM countrylanguage
GROUP BY CountryCode
HAVING COUNT(*) > 10;

-- Display countries where the average language percentage is greater than 20
SELECT CountryCode, AVG(Percentage) AS Average_Percentage
FROM countrylanguage
GROUP BY CountryCode
HAVING AVG(Percentage) > 20;

-- Display countries where the maximum language percentage is 100
SELECT CountryCode, MAX(Percentage) AS Highest_Percentage
FROM countrylanguage
GROUP BY CountryCode
HAVING MAX(Percentage) = 100;

-- Display districts having more than 5 cities
SELECT District, COUNT(*) AS Total_Cities
FROM city
GROUP BY District
HAVING COUNT(*) > 5;

-- Display districts where the total population exceeds 5000000
SELECT District, SUM(Population) AS Total_Population
FROM city
GROUP BY District
HAVING SUM(Population) > 5000000;

-- Display districts where the average population exceeds 1000000
SELECT District, AVG(Population) AS Average_Population
FROM city
GROUP BY District
HAVING AVG(Population) > 1000000;

-- Display continents having an average life expectancy greater than 70
SELECT Continent, AVG(LifeExpectancy) AS Average_Life_Expectancy
FROM country
GROUP BY Continent
HAVING AVG(LifeExpectancy) > 70;

-- Display regions having a total GNP greater than 1000000
SELECT Region, SUM(GNP) AS Total_GNP
FROM country
GROUP BY Region
HAVING SUM(GNP) > 1000000;

-- Display continents having more than 20 countries and sort them by country count
SELECT Continent, COUNT(*) AS Total_Countries
FROM country
GROUP BY Continent
HAVING COUNT(*) > 20
ORDER BY Total_Countries DESC;

-- Display countries having more than 15 cities and sort them by city count
SELECT CountryCode, COUNT(*) AS Total_Cities
FROM city
GROUP BY CountryCode
HAVING COUNT(*) > 15
ORDER BY Total_Cities DESC;

-- Display districts having more than 10 cities and sort them alphabetically
SELECT District, COUNT(*) AS Total_Cities
FROM city
GROUP BY District
HAVING COUNT(*) > 10
ORDER BY District;

-- Display continents where the total population exceeds one billion
SELECT Continent, SUM(Population) AS Total_Population
FROM country
GROUP BY Continent
HAVING SUM(Population) > 1000000000;
