-- ALL TABLES in STUDENTS database
SELECT * FROM compsci;
SELECT * FROM city;
SELECT * FROM faculty;

-- Updating a table
UPDATE faculty SET salary = 21500 WHERE id_no = 4;

-- Adding column in a table
ALTER TABLE faculty
ADD COLUMN salary BIGINT;

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
	AVG(salary) OVER(PARTITION BY position) average_salary,
	RANK() OVER(PARTITION BY position ORDER BY salary) rnk,
	ROW_NUMBER() OVER(PARTITION BY position ORDER BY salary) rn,
	DENSE_RANK() OVER(PARTITION BY position ORDER BY salary) dr 
FROM faculty


-- Joining tables
SELECT compsci.firstname, compsci.lastname, compsci.age, city.city_id, city.city_mayor
FROM compsci
INNER JOIN city ON compsci.cityId = city.city_id;