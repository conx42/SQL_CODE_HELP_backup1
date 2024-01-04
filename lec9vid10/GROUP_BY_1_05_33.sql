-- show DATABASEs;
use org;
-- show tables;
-- select * from bonus;
-- select * from title;
select * from worker;
/*
-- ascending - desceding - orderby - sorting queries
select * from worker order by salary;
select * from worker order by salary asc;
select * from worker order by salary desc;
*/
/*
-- DISTINCT
select DISTINCT department from worker;
-- GROUP BY (without aggregation)
select department from worker GROUP BY department;
*/
-- GROUP BY (with aggregation)
-- select department, count(department) from worker GROUP BY department;

-- Find Average Salary Per Department
select department, AVG(salary)
from worker
GROUP BY department;
-- MIN salary per department
select department, MIN(salary)
from worker
GROUP BY department;
-- MAX salary per department
select department, MAX(salary)
from worker
GROUP BY department;
-- total salary per department
select department, SUM(salary)
from worker
GROUP BY department;