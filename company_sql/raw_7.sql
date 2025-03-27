--find all clients who are handled by the branch
SELECT
	c.client_name
FROM
	client c
WHERE
	c.branch_id = (
	SELECT
		b.branch_id
	FROM
		branch b
	WHERE
		b.branch_id = 1
	LIMIT 1
		);
--

SELECT
	e.emp_id,
	e.first_name,
	e.last_name
FROM
	employee e
WHERE
	e.emp_id IN (
	SELECT
		ww.emp_id
	FROM
		works_with ww
	WHERE
		total_sales > 300000
);