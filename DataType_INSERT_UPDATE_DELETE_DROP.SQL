
---------------------CREATE TABLE AND INSERT INTO TABLE-------------------------

Create database Chinmay_DB;

use chinmay_db;

create table students_detail
(
Roll_Number int,
First_Name varchar(50),
Last_Name varchar(50),
fees numeric(10,2)
);

insert into students_detail
value(1,'chinmay','das',5045.25);
insert into students_detail
value(2,'jyoti','das',5045.25);


-------------- DEFAULT STATEMENT ----------------------------------------------------------

create table NameDetail
(
First_name varchar(20),
Town_name varchar(20) default 'bangalore',
Gender varchar(20) check(gender in('male','female'))
);

insert into namedetail values('chinmay','delhi','male');
insert into namedetail values('Jyoti','Baripada','male');
insert into namedetail values('Sita','Noida','female');
insert into namedetail values('Radha','Cuttack','Female');

describe namedetail;

CREATE TABLE Persons (
    ID int NOT NULL,
    LastName varchar(255) NOT NULL,
    FirstName varchar(255),
    Age int,
    City varchar(255) DEFAULT 'Sandnes'
);

insert into persons (id,lastname,firstname,age) values(143,'das','chinmay',14);
insert into persons (id,lastname,firstname,age)  values(144,'das','Jyotirmay',18);
insert into persons (id,lastname,firstname,age,city) values(145,'das','Ram',20,'NOIDA');


select *
from persons;


--------------PRIMARY KEY AND FOREIGN KEY --------------------------------

use chinmay_db;
drop table students_detail;

-- primary_key --  AND foreign_key ------------------------

create table course
(
course_id int primary key,
Course_name varchar(20),
duration int

);

insert into course values(1,'python',45);
insert into course values(2,'sql',55);
insert into course values(3,'Power bi',35);
insert into course values(4,'Tableau',65);
insert into course values(5,'Statistics',95);
insert into course values(6,'EDA',100);

create table students
(
student_id int primary key,
First_name varchar(20),
course_id int,
constraint fk_cid foreign key(course_id) references course(course_id)
);

insert into students values(1001,'chinmay',1);
insert into students values(1002,'jyoti',2);
insert into students values(1003,'ram',3);
insert into students values(1004,'geeta',4);
insert into students values(1005,'hari',5);


----------------USE UPDATE,DELETE STATEMENT -----------------------


show databases;

show tables;

describe students_detail;

update students_detail
set last_name = 'Behera'
where roll_number = 1;

delete 
from students_detail
where roll_number = 1;