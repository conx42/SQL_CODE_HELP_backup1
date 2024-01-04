use tempdb3;
-- SUB QUERIES
-- WHERE clause same table
-- employees with age > 30
select * from employee where age>30; -- ei query ta key complex kora using subquery
-- subquery
select * from employee where age in (select age from employee where age > 30);

-- where clause different table
-- emp details working in more than 1 project.

-- AMAR code / AMAR Logic puro

 select * from employee
where id IN
(select empID from project
group by empID
having count(empID) > 1); -- coincidentally amar ar codeHELP err LOGIC puro same.

-- single value subquery
-- fetch emp details jader age > avg(age)
select * from employee where age > (select avg(age) from employee);

-- FROM clause -> derived tables
-- select max age person whose first name has 'a'

select max(age) from (select * from employee where fname like '%a%'); -- <-- Error Code: 1248. Every derived table must have its own alias
select max(age) from (select * from employee where fname like '%a%') as temp; -- alias diley tobe run korbey -> karon form use korley derived class pai, sei derived class key alias ditey hoy.

-- corelated subquery
-- FIND 3rd Oldest employee

select *
from employee e1
where 3 = (select count(e2.age)
from employee as e2
where e2.age >= e1.age);





























