USE mylearnings;

-- Logical Operators --

-- Using the AND Operator: Both conditions must be TRUE --
-- Retrieve data where age is less than 19 and ID is greater than 2 --

SELECT * FROM student 
WHERE stud_age < 19 
  AND id > 2;

-- Using the OR Operator: At least one condition must be TRUE --

SELECT * FROM student 
WHERE stud_fee >= 45000 
   OR stud_name = 'Arun';

-- Using the NOT Operator: Excludes rows that match the condition --

SELECT * FROM student
WHERE NOT stud_fee = 75000;

-- Using the BETWEEN Operator: Selects values within a given range (inclusive) --

SELECT * FROM student
WHERE stud_age BETWEEN 20 AND 24;

-- Using the IN Operator: Checks if a value exists in the specified list --

SELECT * FROM student
WHERE stud_location IN ('Veeraswamy Nagar');
