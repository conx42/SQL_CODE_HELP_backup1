create database  if not exists tempdb3;
use tempdb3;
-- show tables;
create table if not exists project(
	id int  primary key,
    empID int,
    name char(1),
    start_date date,
    clientID int,
    foreign key (empID) references employee(id)
);
insert ignore into project (id,empID,name,start_date,clientID)
values
(1, 1, 'A', '2021-04-21', 3),
(2, 2, 'B', '2021-03-12', 1),
(3, 3, 'C', '2021-01-16', 5),
(4, 3, 'D', '2021-04-27', 2),
(5, 5, 'E', '2021-05-01', 4);

create table if not exists employee(
	id int  primary key,
    fname varchar(255),
    lname varchar(255),
    age int,
    emailID varchar(255),
    phoneNO int,
    city varchar(255)
);
insert ignore into employee (id, fname, lname, age, emailID, phoneNO, city)
values
(1, 'Aman', 'Proto', 32, 'aman@gmail.com',890, 'Delhi'),
(2, 'Yogya', 'Narayan', 44, 'yogya@gmail.com',222, 'Palam'),
(3, 'Rahul', 'BD', 22, 'rahul@gmail.com',444, 'Kolkata'),
(4, 'Jatin', 'Hermit', 31, 'jatin@gmail.com',666, 'Raipur'),
(5, 'PK', 'Pandey', 21, 'pk@gmail.com',555, 'Jaipur');

create table if not exists client(
	id int  primary key,
    fname varchar(255),
    lname varchar(255),
    age int,
    emailID varchar(255),
    phoneNO int,
    city varchar(255),
    empID int,
    foreign key (empID) references employee(id)
);
insert ignore into client (id, fname, lname, age, emailID, phoneNO, city, empID)
values
(1, 'Mac', 'Rogers', 47, 'mac@hotmail.com', 333, 'Kolkata', 3),
(2, 'Max', 'Poirier', 27, 'max@gmail.com',222, 'Kolkata', 3),
(3, 'Peter', 'Jain', 24, 'peter@abc.com',111, 'Delhi', 1),
(4, 'Sushant', 'Aggarwal', 23, 'sushant@yahoo.com', 45454, 'Hyderabad', 5),
(5, 'Pratap', 'Singh', 36, 'p@xyz.com', 77767, 'Mumbai', 2);

select * from project;
select * from employee;
select * from client;

-- query-1
-- INNER JOIN
-- Enlist all the employees ID's, names along with the Project allocated to them.
select e.id, e.fname, e.lname, p.id, p.name from employee as e
inner join project as p
ON e.id=p.empID;

-- query-2
-- 2:55:38
-- fetch out all the employee ID's and their contact detail who have been working from Jaipur with the clients name working in hyderabad.
-- select id,emailID,phoneNO from employee where city='Jaipur';
select e.id,e.emailID,e.city,e.phoneNO,c.id,c.fname,c.lname,c.city from employee as e
INNER JOIN client as c
ON e.id=c.empID
WHERE e.city='Jaipur' AND c.city='Hyderabad';

-- LEFT JOIN
-- Fetch out each project allocated to each employee.
-- sob project list kortey hobe aarki.
select p.id,p.name,e.id,e.fname,e.lname from project as p
LEFT JOIN employee as e
ON p.empID=e.id;

select e.id,e.fname,e.lname,p.id,p.name from employee as e
LEFT JOIN project as p
ON p.empID=e.id;

select * from project;

insert ignore into project (id,empID,name,start_date,clientID)
values
(6, NULL, 'A', null, 3);

drop table project;

-- RIGHT JOIN
-- List out all the projects along with employee's name and their respective allocated email ID.
select p.id,p.name,e.fname,e.lname,e.emailID from employee as e
RIGHT JOIN project as p
ON p.empID=e.id;

-- CROSS JOIN
-- List out all the combinations possible for the employee's name and project that can exists
select e.id,e.fname,e.lname,e.emailID,p.id,p.name
from employee as e
CROSS JOIN project as p;

-- 3:02:59 hrs









