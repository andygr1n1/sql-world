-- find a list OF employee and branch names -- UNION --
SELECT first_name
FROM employee
UNION
SELECT branch_name
FROM branch;

SELECT first_name, last_name
FROM employee
UNION
SELECT branch_name, null
FROM branch;

SELECT employee.first_name AS name, employee.emp_id AS id
FROM employee
UNION
SELECT client.client_name AS name, client.client_id AS id
FROM client
ORDER BY name asc;

-- 

SELECT employee.salary
FROM employee
UNION 
SELECT works_with.total_sales
FROM works_with;

