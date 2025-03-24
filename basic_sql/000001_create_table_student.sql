CREATE EXTENSION IF NOT EXISTS "uuid-ossp";

CREATE TABLE IF NOT EXISTS student (
    student_id uuid DEFAULT uuid_generate_v4(),
    -- student_id INT AUTO_INCREMENT
    name text NOT NULL,
    email text UNIQUE NOT NULL,
    major text DEFAULT 'undecided',
    PRIMARY KEY (student_id)
);

DROP TABLE student;

ALTER TABLE student ADD gpa decimal(3, 2);
ALTER TABLE student DROP gpa;