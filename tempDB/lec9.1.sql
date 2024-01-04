CREATE DATABASE IF NOT EXISTS tempdb2;
USE tempdb2;
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
-- ( 1300, 'Shayam Singh', 'Ludhiana H.O', 'M', 'Ludhiana', 141001 ),
-- ( 245, 'Neelabh Shukla', 'Ashok Nagar', 'M', 'Jalandhar', 144003 ),
-- ( 210, 'Barkha Singh', 'Dilbagh Nagar', 'F', 'Jalandhar', 144002 ),
-- ( 500, 'Rohan Arora', 'Ludhiana H.O', 'M', 'Ludhiana', 141001 );

INSERT IGNORE INTO Customer (
  cname, id
  ) VALUES 
(
  'BOB', 121
  );

SELECT * FROM Customer;

-- UPDATE


