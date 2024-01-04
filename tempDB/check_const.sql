use tempDB;
CREATE TABLE IF NOT EXISTS account(
    id int PRIMARY key,
    name VARCHAR(255) unique,
    balance int check(balance>1000)
);
/*
Alternative CHECK constrain
*/
CREATE TABLE IF NOT EXISTS _account(
    id int PRIMARY key,
    name VARCHAR(255) unique,
    balance int,
    CONSTRAINT acc_balance_chk check(balance>1000)
);


INSERT IGNORE INTO account
VALUES (1, 'A', 1001);
INSERT IGNORE INTO account
VALUES (2, 'B', 1002);

INSERT IGNORE INTO _account
VALUES (1, 'Anik', 1001);
INSERT IGNORE INTO _account
VALUES (2, 'Bhuvan', 1002);


SELECT * FROM account;
SELECT * FROM _account;

-- 1:38:06