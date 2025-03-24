ALTER TABLE student ADD gpa decimal(3, 2);

--


ALTER TABLE student ADD COLUMN gpa decimal(3, 2) AFTER name;

--

DO $$
BEGIN
    IF NOT EXISTS (
        SELECT 1
        FROM information_schema.columns
        WHERE table_name = 'student' AND column_name = 'gpa'
    ) THEN
        ALTER TABLE student ADD gpa decimal(3, 2);
    END IF;
END $$;

--

ALTER TABLE student DROP gpa;
ALTER TABLE student DROP COLUMN IF EXISTS gpa;