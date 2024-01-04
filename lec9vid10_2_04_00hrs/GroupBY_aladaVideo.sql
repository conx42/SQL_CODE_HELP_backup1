create database if not exists tempdb4;
use tempdb4;
create table if not exists customer(
	customer_id int primary key,
    ammount int,
    mode varchar(255),
    payment_date date
);
insert ignore into customer(customer_id, ammount, mode, payment_date)
values (1,60,'cash', '2020-09-24'),
	   (2, 30, 'credit card', '2020-04-27'),
       (3, 90, 'credit card', '2020-04-07'),
       (4, 50, 'debit card', '2020-07-12'),
       (5, 40, 'mobile payment', '2020-02-20'),
       (6, 40, 'debit card', '2021-11-28'),
       (7, 10, 'cash', '2021-08-25');

 select * from customer;
-- group by query - 0
select mode from customer
GROUP BY mode;

-- group by query - 1
select mode, count(mode) as total_Number_OF_Payments 
from customer
group by mode;

-- group by query - 2
select mode, SUM(ammount) as total_worth_OF_payments
from customer
group by mode;

-- group by query - 1 & 2 mix
select mode, count(mode) as total_Number_OF_Payments, SUM(ammount) as  total_worth_OF_payments
from customer
group by mode;

-- order by 
select mode, sum(ammount) as total from customer
group by mode
order by total asc;


select mode, count(ammount), count(mode)
from customer
group by mode
having count(ammount) > 1;









