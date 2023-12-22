USE world;

SELECT continent
FROM country
GROUP BY Continent;

SELECT a.name conname, b.name ciname
FROM country a, city b
WHERE a.code = b.CountryCode
ORDER BY conname, ciname;

SELECT city.Name
FROM country, city
WHERE country.name = 'United States'
	AND country.code = city.countrycode;
   
SELECT a.name, b.language
FROM country a, countrylanguage b
WHERE a.Code = b.CountryCode
AND a.name = 'China';

SELECT country.name
FROM country, city
WHERE country.Continent = 'Europe'
 AND city.population > '100000000';

-- GNP 1000 이상, 비영어권 국가 관련
-- SELECT country.name
-- FROM country, countrylanguage
-- WHERE country.GNP > 1000
-- AND countrylanguage.Language = FALSE
-- ORDER BY country.GNP DESC;


SELECT a.name, b.language
FROM country a, countrylanguage b
WHERE a.GNP > 1000
	AND a.Code = b.CountryCode
	AND b.Language <> 'English'
		AND IsOfficial = 'T'
ORDER BY a.GNP DESC;

SELECT city.Name, city.Population
FROM city
ORDER BY city.Population DESC
LIMIT 5;