CREATE DATABASE mylearning_inst;
USE mylearning_inst;

CREATE TABLE student_info (
    inst_id INT NOT NULL PRIMARY KEY,
    stud_Name VARCHAR(25),
    stud_age VARCHAR(25)
);

INSERT INTO student_info
VALUES
(20125, 'Arun', '23');

select * from student_info;

select distinct stud_Name from student_info;

select count(inst_id) as inst_id from student_info;