create database if not exists test;
use test;
create table tts(
	ID int primary key,
    NAME varchar(20),
    SALARY int
);

insert ignore into tts
	(ID, NAME, SALARY) values
    (1, 'Ram', 100),
    (2, 'shyam', 200),
    (3, 'madhu', 300),
    (4, 'koyel', 400),
    (5, 'jaggu', 500),
    (6, 'kathy', 600),
    (7, 'mithun', 700),
    (8, 'puja', 900);
    
select * from tts;

select name, salary from tts where salary between 300 AND 600;