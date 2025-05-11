-- This is templet is use accross the entire course --

create database mylearnings;
use mylearnings;

-- The student column --

create table student(
id int not null primary key,
stud_name varchar(50) not null,
stud_age int,
stud_fee int not null,
stud_location varchar(50)
);

insert into student
values
(1,'Arun',23,75000,'Suraram-hyderbad'),
(2,'Aishu',21,75000,'Veeraswamy Nagar'),
(3,'Varun',14,40000,'Krishna Nagar'),
(4,'Swetha',18,25000,'Near Hanuman temple-Krishna nagar'),
(5,'Honey',18,90000,'Veeraswamy Nagar');

select * from student;

-- The Teachers column --

create table Teachers(
id int not null primary key,
Teach_name varchar(50) not null,
Teach_age int,
Teach_salary int not null,
Teach_location varchar(50)
);

insert into Teachers
values
(6,'Arun',23,100000,'Suraram-hyderbad'),
(7,'Aishu',21,750000,'Veeraswamy Nagar'),
(8,'Varun',14,400000,'Krishna Nagar'),
(9,'Swetha',18,250000,'Near Hanuman temple-Krishna nagar'),
(10,'Honey',18,900000,'Veeraswamy Nagar');

select * from Teachers;
