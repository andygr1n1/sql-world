CREATE TABLE trigger_test (
	message text	
);

-- Step 2: Define the trigger function
CREATE OR REPLACE FUNCTION log_employee_insert()
RETURNS TRIGGER AS $$
BEGIN
    -- Insert a message into the log table, including employee ID
    INSERT INTO trigger_test (message)
    VALUES ('Added new employee with ID: ' || NEW.emp_id);
    RETURN NEW; -- Return the new row to proceed with the insert operation
END;
$$ LANGUAGE plpgsql;

-- Step 3: Create the BEFORE INSERT trigger
CREATE TRIGGER my_trigger
BEFORE INSERT ON employee
FOR EACH ROW
EXECUTE FUNCTION log_employee_insert();

INSERT
	INTO
	employee (first_name,
	last_name,
	birth_day,
	sex,
	super_id,
	branch_id)
VALUES ('Andrei',
'Grini',
'1991-03-29 00:00:00',
'M',
NULL,
NULL)