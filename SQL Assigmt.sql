USE world;

-- Count Cities in USA

select
Count(ci.id) as CityCount,
c.Name
from city as ci
Join country as c
on ci.CountryCode = c.Code
where c.name = 'United States'
group by c.Name;

-- Country with Highest Life Expectancy

SELECT
Name,
LifeExpectancy
FROM country
order by LifeExpectancy desc
limit 1;

select
Name,
max(LifeExpectancy) as Max_LE
from country
group by Name
order by max_LE desc
limit 1;

-- New Year Promotion: Featuring Cities with 'New'

SELECT
*
FROM CITY
WHERE Name like '%New%';

-- Display Columns with Limit (First 10 Rows)

SELECT
*
FROM CITY
ORDER BY POPULATION DESC
LIMIT 10;

-- Cities with Population Larger than 2,000,000

SELECT
NAME,
POPULATION
FROM CITY
WHERE POPULATION > 2000000
ORDER BY POPULATION DESC;

-- Cities Beginning with 'Be' Prefix

SELECT
Name
FROM CITY
WHERE NAME LIKE 'Be%';

-- Cities with Population Between 500,000-1,000,000

SELECT
NAME,
POPULATION
FROM CITY
WHERE POPULATION BETWEEN 500000 AND 1000000
ORDER BY POPULATION;

-- Display Cities Sorted by Name in Ascending Order

SELECT
NAME
FROM CITY
order by name;

-- Most Populated City

Select
Name,
Population
from city
order by Population desc
limit 1;

-- City Name Frequency Analysis: Supporting Geography Education

Select
Name,
count(id) as CityCount
from city
group by Name
order by CityCount desc;

-- City with the Lowest Population

Select
Name,
Population
from city
order by Population
limit 1;

-- Country with Largest Population

Select 
Name,
Population
from country
order by Population desc
limit 1;

-- Capital of Spain

Select distinct
c.name,
ci.name
from country as c
join city as ci
on c.Capital = ci.id
where c.name = 'Spain';

-- Cities in Europe

Select
city.Name
from city
join country
-- on city.id = country.Capital
on city.CountryCode = country.Code
where country.Continent = 'Europe';

-- Average Population by Country

Select
	c.name as CountryName,
	avg(ci.population) as Average_Population
from city as ci
join country as c
on ci.CountryCode = c.Code
group by c.name;

-- Capital Cities Population Comparison

select
c.Name as Country,
c.Population,
ci.Name as Capital_City,
ci.population
from city as ci
join country c
on ci.ID = c.Capital;


-- Countries with Low Population Density

select
	Name as CoutryName,
	Population,
	SurfaceArea,
	Population/SurfaceArea as Density
from country
where Population > 0
order by Density
Limit 20;

-- Cities with High GDP per Capita

Select
-- c.name as Country,
ci.name as City,
c.GNP,
c.GNP/ci.Population as GDP_per_capita
from city as ci
join country as c
on ci.CountryCode = c.Code
order by GDP_per_capita desc
limit 20;

-- Display Columns with Limit (Rows 31-40): Scenario: A market research firm requires detailed information on cities beyond the top rankings for a comprehensive analysis. 
-- You're tasked with providing data on cities ranked between 31st and 40th by population to ensure a thorough understanding of urban demographics. 

select
ID as CityID,
Name as City,
Population
from city
order by population desc
limit 10 offset 30;










