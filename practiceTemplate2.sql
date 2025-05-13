-- This is a Practice Template 2 contains Customers and Orders --
create database PracticeTemplate2;
use PracticeTemplate2;

-- Customers Table--

create table customers(
id int not null primary key, 
first_name varchar(50), 
country varchar(50),
score int);

insert into customers values 
(1,'maria','Germany',300),
(2,'John','USA',900),
(3,'Georg','UK',750),
(4,'Martin','Germany',500),
(5,'Peter','USA',0);

select * from customers;

-- Orders Table --

create table orders (
order_id int, 
customer_id int not null primary key, 
order_date date, 
sales int);

INSERT INTO orders VALUES
(1001, 1, '2021-01-11', 35),
(1002, 2, '2021-04-05', 15),
(1003, 3, '2021-06-18', 20),
(1004, 6, '2021-08-31', 10);


select * from orders;