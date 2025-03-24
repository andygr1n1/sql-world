DROP TABLE student;
CREATE EXTENSION IF NOT EXISTS "uuid-ossp";

CREATE TABLE IF NOT EXISTS student (
    student_id uuid DEFAULT uuid_generate_v4(),
    -- student_id INT AUTO_INCREMENT
    name text NOT NULL,
    email text UNIQUE NOT NULL,
    major text DEFAULT 'undecided',
    PRIMARY KEY (student_id)
);

DO $$
BEGIN
    IF NOT EXISTS (
        SELECT 1
        FROM information_schema.columns
        WHERE table_name = 'student' AND column_name = 'gpa'
    ) THEN
        ALTER TABLE student ADD gpa decimal(3, 2) default 1.0;
    END IF;
END $$;


INSERT
	INTO
	student
VALUES(
	'a92b4950-67b2-4436-9ace-254044d31625', 'Rita', 'Sociology', 2.12
)

INSERT
	INTO
	student (
	student_id,
	name
	)
VALUES(
	'3e604cf0-4bfa-4aea-b920-98a914b50a3e', 'Oliver'
)

SELECT * FROM student;


INSERT
	INTO
	student (name,
	email,
	major,
	gpa)
VALUES ('Alice',
'alice@example.com',
'Sociology',
2.33);

INSERT INTO student VALUES ('b73d6d7f-42eb-46d3-89ca-7388f0bb54ff', 'Bob', 'bob@example.com', 'Mathematics', 2.05);
INSERT INTO student VALUES ('48cfbaec-ecd4-4cac-af80-43f0e7f4cbfa', 'Charlie', 'charlie@example.com', 'Physics', 2.8);
INSERT INTO student VALUES ('965d1839-db75-48be-b1db-0e6403ab8cc8', 'Diana', 'diana@example.com', 'Biology', 3.39);
INSERT INTO student VALUES ('42cc2167-7ac1-4b7a-8c51-d2c241d658ce', 'Eve', 'eve@example.com');
INSERT INTO student VALUES ('d3d68909-d72a-4b05-8dbd-ee4c5fed8414', 'Frank', 'frank@example.com', 'Engineering', 2.75);
INSERT INTO student VALUES ('e8683b56-9430-435d-a3cd-37e19860ae11', 'Grace', 'grace@example.com', 'Art', 2.84);
INSERT INTO student VALUES ('f0045c31-6647-478e-9d5e-8e56937e8232', 'Hank', 'hank@example.com', 'Philosophy', 4.0);
INSERT INTO student VALUES ('db70a973-c116-44fa-b444-2aee9c8048a3', 'Ivy', 'ivy@example.com', 'Economics', 2.0);
INSERT INTO student VALUES ('26b4f3d5-a079-42f8-a2da-ab2c56f93bbd', 'Jack', 'jack@example.com', 'Computer Science', 2.03);

--

UPDATE student
SET major = 'Bio', gpa = 1
WHERE student_id in ('b73d6d7f-42eb-46d3-89ca-7388f0bb54ff') OR major  = 'Bio';

DELETE FROM student; -- will DELETE ALL ROWS

DELETE FROM student
WHERE student_id = 'b73d6d7f-42eb-46d3-89ca-7388f0bb54ff' AND gpa = 1;