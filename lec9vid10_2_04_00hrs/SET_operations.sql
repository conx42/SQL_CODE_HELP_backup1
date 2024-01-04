create database if not exists setDB;
use setDB;
create table if not exists Dept1(
	empID int primary key,
    name char(1),
    role varchar(255)
);
insert ignore into Dept1(empID,name,role)
values
(1,'A', 'engineer'),
(2,'B', 'salesman'),
(3,'C', 'manager'),
(4,'D', 'salesman'),
(5,'E', 'engineer');
create table if not exists Dept2(
	empID int primary key,
    name char(1),
    role varchar(255)
);
insert ignore into Dept2(empID,name,role)
values
(3,'C', 'manager'),
(6,'B', 'marketing'),
(7,'C', 'salesman');
select * from Dept1;
select * from Dept2;
-- SET OPERATIONS
-- List out all the employees in the company
select * from Dept1
UNION 
select * from Dept2;

-- List out all the employees in all departments who work as salesman
select * from Dept1 WHERE role='salesman'
UNION 
select * from Dept2 WHERE role='salesman';

-- List out all the employees who work for both the departments.
-- INTERSECT
select distinct * from Dept1
INNER JOIN Dept2
using(empID);

-- List out all the employees working in dept1 but not in dept2.
-- MINUS
select * from Dept1
LEFT JOIN Dept2 using(empID)
where Dept2.empID is NULL;