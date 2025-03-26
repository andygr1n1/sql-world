--find total sales of each salesman
SELECT
	SUM(total_sales) AS total_sales_sum,
	emp_id,
	client_id
FROM
	works_with
GROUP BY
	emp_id,
	client_id
ORDER BY
	total_sales_sum DESC;

--find out how many males and females there are -- AGGREGATION -- GROUP_BY
SELECT COUNT(sex), sex
FROM employee
GROUP BY sex;

--find the sum for mails and femails employees sallaries
SELECT 
    SUM(CASE WHEN sex = 'M' THEN salary END) AS mAverage,
    SUM(CASE WHEN sex = 'F' THEN salary END) AS fAverage
FROM employee;

--find the average for mails and femails employees sallaries
SELECT 
    AVG(CASE WHEN sex = 'M' THEN salary END) AS mAverage,
    AVG(CASE WHEN sex = 'F' THEN salary END) AS fAverage
FROM employee;
--find the average of all employee's sallaries
SELECT
	AVG(salary) AS average
FROM
	employee
WHERE
	sex = 'M';


-- how many eployees have superviser
SELECT
	count(super_id) AS employee_with_superviser,
	count(emp_id) AS all_employees
FROM
	employee
WHERE
	sex = 'F'
	AND birth_day > '1990-01-01';


-- find the number of eployees
SELECT
	count(emp_id)
FROM
	employee;

SELECT
	DISTINCT sex
FROM
	employee;

SELECT
	first_name AS name,
	*
FROM
	employee
ORDER BY
	sex,
	first_name ,
	last_name,
	salary;

SELECT
	*
FROM
	employee
ORDER BY
	salary DESC;

SELECT
	*
FROM
	client;

SELECT
	*
FROM
	employee;
