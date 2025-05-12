-- Using the LIKE Operator --

USE mylearnings;

-- We are using the LIKE operator to find names that start with 'A' followed by any number of characters --

SELECT * FROM student
WHERE stud_name LIKE 'A%';

-- Using '_' with '%' wildcard characters --

-- This query finds student names where:
--   - The name has exactly 5 characters before the letter 'A'
--   - And 'A' is followed by any number of characters (including none)
-- For example: 'SithaArun', 'RakeshAnil', 'XXXXXA', etc.

SELECT * FROM student
WHERE stud_name LIKE '_____A%';
