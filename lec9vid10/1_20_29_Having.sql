use ORG;
select * from worker;
-- group by
select department, count(department) from worker group by department;
-- GROUP BY with HAVING clause...
-- question: Only sei department gulo list koro
--   --> jey department er employee/worker number more than 2( > 2)
-- মানে {{ GROUP BY with Some Condition }} thakley 
select department, count(department)
from worker
GROUP BY department
HAVING count(department) > 2;

-- 1:25:12