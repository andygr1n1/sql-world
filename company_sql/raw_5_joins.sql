SELECT employee.emp_id, employee.first_name, branch.branch_name
FROM employee
JOIN branch
ON employee.emp_id = branch.mgr_id;

SELECT employee.emp_id, employee.first_name, branch.branch_name
FROM employee
FULL JOIN branch
ON employee.emp_id = branch.mgr_id;

-- JOIN = INNER JOIN -- 
-- LEFT JOIN WILL RECIEVE ALL ROWS FROM LEFT, EVEN THERE IS NO CONNECTION
-- RIGHT JOIN WILL RECIEVE ALL ROWS FROM RIGHT, EVEN THERE IS NO CONNECTION
-- FULL JOIN - Combines the results of both left and right joins, returning all rows from both tables with `NULL` values for unmatched rows.