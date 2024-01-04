use tempdb2;
/*
CREATE TABLE IF NOT EXISTS Customer (
  id integer PRIMARY KEY,
  cname VARCHAR(255),
  Address VARCHAR(255),
  Gender CHAR(2),
  City VARCHAR(255),
  Pincode INT
);
INSERT IGNORE INTO Customer (
  id, cname, Address, Gender, City, Pincode
) VALUES ( 1, 'Ram Kumar3', 'Dilbagh Nagar', 'M', 'Jalandhar', NULL );

SELECT * from Customer;

create table if not EXISTS Order_details(
    Order_id integer PRIMARY KEY,
    delivery_date DATE,
    cust_id INT,
    FOREIGN KEY(cust_id) references Customer(id) on delete cascade
);

INSERT ignore INTO Order_details
VALUES (3, '2019-03-11', 1),
(4, '2019-03-12', 1);

SELECT * from Order_details;
*/

-- drop table Order_details;
delete from Customer where id = 1;