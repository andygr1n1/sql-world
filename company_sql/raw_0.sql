CREATE EXTENSION IF NOT EXISTS "uuid-ossp";

DROP TABLE IF EXISTS employee;

CREATE TABLE IF NOT EXISTS employee (
    emp_id SERIAL PRIMARY KEY,
    first_name VARCHAR(40) NOT NULL,
    last_name VARCHAR(40) NOT NULL,
    birth_day TIMESTAMPTZ,
    sex CHAR(1),
    super_id INT,
    branch_id INT
);

CREATE TABLE IF NOT EXISTS branch (
    branch_id SERIAL PRIMARY KEY,
    branch_name VARCHAR(40) NOT NULL,
    mgr_id INT,
    mgr_start_date TIMESTAMPTZ,
    CONSTRAINT fk_mgr
    FOREIGN KEY(mgr_id)
    REFERENCES employee(emp_id)
    ON
DELETE
	SET
	NULL 
);

ALTER TABLE employee
ADD CONSTRAINT fk_super
FOREIGN KEY (super_id)
REFERENCES employee(emp_id)
ON DELETE SET NULL;


ALTER TABLE employee 
ADD CONSTRAINT fk_branch
FOREIGN KEY (branch_id)
REFERENCES branch(branch_id)
ON DELETE SET NULL;

CREATE TABLE IF NOT EXISTS client (
	client_id SERIAL PRIMARY KEY,
	client_name VARCHAR(40) NOT NULL,
	branch_id INT,
	CONSTRAINT fk_branch
	FOREIGN KEY(branch_id)
	REFERENCES branch(branch_id)
	ON
DELETE
	SET
	NULL
	
);

CREATE TABLE works_with (
	emp_id INT,
	client_id INT,
	total_sales INT,
	PRIMARY KEY(emp_id, client_id),
	CONSTRAINT fk_emp
	FOREIGN KEY(emp_id)
	REFERENCES employee(emp_id)
	ON
DELETE
		CASCADE,
	CONSTRAINT fk_client
	FOREIGN KEY(client_id)
	REFERENCES client(client_id)
	ON
	DELETE
		CASCADE	
);

CREATE TABLE branch_supplier (
	branch_id INT,
	supplier_name VARCHAR(40) NOT NULL,
	supply_type VARCHAR(40),
	PRIMARY KEY(branch_id, supplier_name),
	CONSTRAINT fk_branch
	FOREIGN KEY(branch_id)
	REFERENCES branch(branch_id)
	ON
DELETE
	CASCADE
);