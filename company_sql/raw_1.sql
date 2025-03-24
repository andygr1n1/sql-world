INSERT INTO employee (first_name, last_name, birth_day, sex, super_id, branch_id) 
VALUES 
('John', 'Doe', '1990-01-15 00:00:00', 'M', NULL, NULL),
('Jane', 'Smith', '1992-03-22 00:00:00', 'F', NULL, NULL),
('Alice', 'Johnson', '1988-07-10 00:00:00', 'F', NULL, NULL),
('Bob', 'Brown', '1985-11-05 00:00:00', 'M', NULL, NULL),
('Charlie', 'Davis', '1993-09-12 00:00:00', 'M', NULL, NULL),
('Emily', 'Wilson', '1991-06-18 00:00:00', 'F', NULL, NULL),
('Frank', 'Taylor', '1987-02-25 00:00:00', 'M', NULL, NULL),
('Grace', 'Moore', '1994-12-30 00:00:00', 'F', NULL, NULL),
('Henry', 'Anderson', '1989-04-14 00:00:00', 'M', NULL, NULL),
('Ivy', 'Thomas', '1995-08-20 00:00:00', 'F', NULL, NULL);

INSERT INTO branch (branch_name, mgr_id, mgr_start_date) 
VALUES 
('Corporate', 1, '2020-01-01 00:00:00'),
('Scranton', 2, '2021-02-15 00:00:00'),
('Stamford', 3, '2022-03-10 00:00:00'),
('Utica', 4, '2023-04-25 00:00:00'),
('Nashua', 5, '2024-05-30 00:00:00'),
('Buffalo', 6, '2025-06-20 00:00:00'),
('Albany', 7, '2025-07-15 00:00:00'),
('Rochester', 8, '2025-08-10 00:00:00'),
('Binghamton', 9, '2025-09-05 00:00:00'),
('Syracuse', 10, '2025-10-01 00:00:00');

UPDATE employee SET super_id = 1, branch_id = 1 WHERE emp_id = 2;
UPDATE employee SET super_id = 2, branch_id = 2 WHERE emp_id = 3;
UPDATE employee SET super_id = 3, branch_id = 3 WHERE emp_id = 4;
UPDATE employee SET super_id = 4, branch_id = 4 WHERE emp_id = 5;
UPDATE employee SET super_id = 5, branch_id = 5 WHERE emp_id = 6;
UPDATE employee SET super_id = 6, branch_id = 6 WHERE emp_id = 7;
UPDATE employee SET super_id = 7, branch_id = 7 WHERE emp_id = 8;
UPDATE employee SET super_id = 8, branch_id = 8 WHERE emp_id = 9;
UPDATE employee SET super_id = 9, branch_id = 9 WHERE emp_id = 10;
UPDATE employee SET super_id = 10, branch_id = 10 WHERE emp_id = 1;






