CREATE DATABASE IF NOT EXISTS tempDB;
USE tempDB;

CREATE TABLE IF NOT EXISTS Customer(
  Customer_ID INT PRIMARY KEY,
  FIRST_NAME VARCHAR(25),
  LAST_NAME VARCHAR(25),
  Account_BALANCE INT(15),
  Order_DATE DATETIME,
  DEPARTMENT CHAR(25)
);

INSERT IGNORE INTO Customer
  (Customer_ID, FIRST_NAME, LAST_NAME, Account_BALANCE, Order_DATE, DEPARTMENT) VALUES 
    (001, 'Monika', 'Arora', 100000, '14-02-20 09.00.00', 'HR'),
    (002, 'Niharika', 'Verma', 80000, '14-06-11 09.00.00', 'Admin'),
    (003, 'Vishal', 'Singhal',300000, '14-02-20 09.00.00', 'HR'),
    (004, 'Amitabh', 'Singh', 500000, '14-02-20 09.00.00', 'Admin'),
    (005, 'Vivek', 'Bharti', 500000, '14-06-11 09.00.00', 'Admin'),
    (006, 'Vipul', 'Diwan', 200000, '14-06-11 09.00.00', 'Account'),
    (007, 'Satish', 'Kumar', 75000, '14-01-20 09.00.00', 'Account'),
    (008, 'Geetika', 'Chauhan', 90000, '14-04-11 09.00.00', 'Admin');

SELECT * FROM Customer;


CREATE TABLE IF NOT EXISTS Order_Details (
  Order_ID INT PRIMARY KEY,
  Order_AMOUNT INT(10),
  Order_DATE DATETIME,
  cust_id INT,
  foreign key (cust_id) references Customer(Customer_ID)
);

INSERT IGNORE INTO Order_Details
  (Order_ID, Order_AMOUNT, Order_DATE, cust_id) VALUES
    (001, 5000, '16-02-20', 001),
    (002, 3000, '16-06-11', 005),
    (003, 4000, '16-02-20', 007),
    (004, 4500, '16-02-20', 008),
    (005, 3500, '16-06-11', 003);

SELECT * FROM Order_Details;
/*
CREATE TABLE IF NOT EXISTS Title (
  WORKER_REF_ID INT,
  WORKER_TITLE CHAR(25),
  AFFECTED_FROM DATETIME,
  FOREIGN KEY (WORKER_REF_ID)
    REFERENCES Worker(WORKER_ID)
    ON DELETE CASCADE
);

INSERT IGNORE INTO Title
  (WORKER_REF_ID, WORKER_TITLE, AFFECTED_FROM) VALUES
    (001, 'Manager', '2016-02-20 00:00:00'),
    (002, 'Executive', '2016-06-11 00:00:00'),
    (001, 'Executive', '2016-06-11 00:00:00'),
    (001, 'Manager', '2016-06-11 00:00:00'),
    (001, 'Asst. Manager', '2016-06-11 00:00:00'),
    (001, 'Executive', '2016-06-11 00:00:00'),
    (001, 'Lead', '2016-06-11 00:00:00'),
    (001, 'Lead', '2016-06-11 00:00:00');


SELECT * FROM Title;
*/