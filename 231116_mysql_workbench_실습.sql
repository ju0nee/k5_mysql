USE world;

-- 수도와 함께 국가 이름 검색합니다.
SELECT a.name conname, b.name ciname
FROM country a, city b
WHERE a.code = b.CountryCode
ORDER BY conname, ciname;

-- 대륙별 인구수를 모두 알고 싶을 경우.
SELECT Continent, sum(Population)
FROM country
GROUP BY Continent;

-- 미국에 있는 모든 도시의 이름을 검색합니다.
SELECT city.Name
FROM country, city
WHERE country.name = 'United States'
	AND country.code = city.countrycode;

-- 중국에서 사용되는 모든 언어의 이름을 검색합니다.
SELECT a.name, b.language
FROM country a, countrylanguage b
WHERE a.Code = b.CountryCode
AND a.name = 'China';

-- 인구가 100만 명 이상인 유럽 국가의 이름을 검색합니다.
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

-- 1900년 이후 독립한 국가의 이름을 검색합니다.
SELECT a. name
FROM country a
WHERE IndepYear > 1900;

-- 영어가 공용어가 아니고 국민총생산(GNP)이 1,000 보다 큰 국가의 이름을 검색합니다.
SELECT a.name, b.language
FROM country a, countrylanguage b
WHERE a.GNP > 1000
	AND a.Code = b.CountryCode
	AND b.Language <> 'English'
		AND IsOfficial = 'T'
ORDER BY a.GNP DESC;

-- 세계에서 인구가 가장 많은 상위 5개 도시의 이름과 인구를 검색합니다. 결과를 인구별로 내림차순으로 정렬합니다.
SELECT city.Name, city.Population
FROM city
ORDER BY city.Population DESC
LIMIT 5;

-- 대륙별 국가수를 구하고, 그 결과를 내림차순으로 정렬하시오.
SELECT a.Continent, a.name
FROM country a
ORDER BY (COUNT(Continent / Name)) DESC;

-- 국가별 인구 대비 도시 인구 비율을 구하시오.
SELECT a.code, a.population, b.population
FROM country a, city b
ORDER BY (b.Population / a.Population) DESC;
