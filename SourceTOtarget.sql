-- Moving Database from Source table(source) to the Target table(customer) --

Create database MergeTable;
use MergeTable;

create table persons (id int not null Primary key,pr_name varchar(50) not null, age smallint, phoneNumber int);

insert into persons values (1,'Arun',23,733),(2,'Aishu',21,830);

select * from persons;

create table customer (id int not null primary key, cus_name varchar(50) not null,orderd_id int, location varchar(50) );

insert into customer values (3,'Varun',.101,'SURARAM-23-LANE'),(4,'Swetha',18,'SURARAM-21-LANE');

insert into customer (id,cus_name,orderd_id,location)
select 
id,
pr_name,
NULL,
'UNKNOWN'
from persons;

select * from customer;