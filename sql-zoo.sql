--
-- 0 SELECT basics
--

-- 1
SELECT population FROM world
  WHERE name = 'Germany'

-- 2
SELECT name, population FROM world
  WHERE name IN ('Sweden', 'Norway', 'Denmark');

-- 3
SELECT name, area FROM world
  WHERE area BETWEEN 200000 AND 250000

--
-- 1 SELECT name
--

-- 1
SELECT name FROM world
  WHERE name LIKE 'Y%'

-- 2
SELECT name FROM world
  WHERE name LIKE '%Y'

-- 3
SELECT name FROM world
  WHERE name LIKE '%X%'

-- 4
SELECT name FROM world
  WHERE name LIKE '%land'

-- 5
SELECT name FROM world
  WHERE name LIKE 'C%' AND name LIKE '%ia'

-- 6
SELECT name FROM world
  WHERE name LIKE '%oo%'

-- 7
SELECT name FROM world
  WHERE name LIKE '%a%a%a%'

-- 8
SELECT name FROM world
 WHERE name LIKE '_t%'
ORDER BY name

-- 9
SELECT name FROM world
 WHERE name LIKE '%o__o%'

-- 10
SELECT name FROM world
 WHERE name LIKE '____'

-- 11
SELECT name
  FROM world
 WHERE name LIKE capital

 -- 12
 SELECT name
  FROM world
 WHERE capital  LIKE concat(name, ' City')

 -- 13
 SELECT capital, name
 FROM world
WHERE capital LIKE concat(name, '%')

-- 14
SELECT capital, name
 FROM world
WHERE capital <> name AND capital LIKE concat(name, '%')

-- 15
SELECT name,
       REPLACE(capital, name, '')
  FROM world
WHERE capital <> name AND capital LIKE concat(name, '%')
