use mylearnings;

-- Logical Operator --

-- Using the AND Operator = Both be TRUE--

-- Retrive the data where age is < 19 and id > 2 --

select * from student 
where stud_age < 19 
AND id > 2;

-- Using the OR Operator = One be TRUE --

select * from student 
where stud_fee >= 45000 
OR stud_name = 'Arun';

-- Using the NOT Operator = Excludes the match row --

select * from student
where NOT stud_fee = 75000;
