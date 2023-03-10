-- ALL TABLES in STUDENTS database
SELECT * FROM compsci;
SELECT * FROM city;
SELECT * FROM faculty;

-- Updating a table
UPDATE faculty SET salary = 21500 WHERE id_no = 4;

-- Alter Queries in a table
ALTER TABLE faculty
ADD COLUMN salary BIGINT;

ALTER TABLE faculty
RENAME COLUMN position TO position_no;

--Basic Subquery
SELECT 
	firstname,
	lastname,
	age
FROM 
	compsci
WHERE
	age < (SELECT AVG(age) FROM compsci);

	
-- Basic WINDOW function
SELECT *,
	ROW_NUMBER() OVER(PARTITION BY position ORDER BY salary) rn,
	RANK() OVER(PARTITION BY position ORDER BY salary) rnk,
	DENSE_RANK() OVER(PARTITION BY position ORDER BY salary) dr 
FROM faculty

WITH prof_fullname AS (SELECT CONCAT(firstname, ' ', lastname) full_name, age, position_no, birth_date, salary FROM faculty)

SELECT full_name, age, birth_date, position_no, salary,
	FIRST_VALUE(full_name) OVER(PARTITION BY position_no ORDER BY salary DESC) most_paid_prof_per_position	
FROM prof_fullname;

-- Joining tables
SELECT compsci.firstname, compsci.lastname, compsci.age, city.city_id, city.city_mayor
FROM compsci
INNER JOIN city ON compsci.cityId = city.city_id;

-- Case query
SELECT firstname, lastname, age, cityId,
	CASE
		WHEN (age < 20) THEN 'Young People'
		WHEN (age >= 20 AND age < 25) THEN 'Young Adult'
		ELSE 'Adult'
	END adult_hood
FROM compsci;