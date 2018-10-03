CREATE DATABASE lab5;

CREATE table customers(
  customer_id int,
  cust_name VARCHAR(255),
  city VARCHAR(255),
  grade int,
  salesman_id INT
);

INSERT into customers VALUES (3002, 'Nick Rimando', 'New York', 100, 5001), (3005, 'Graham Zusi', 'California', 200, 5002);
INSERT INTO customers VALUES (3001, 'Brad Guzan', 'London', NULL, 5005);
INSERT into customers values (3004, 'Fabian Johns', 'Paris', 300, 5006), (3007, 'Brad Davis', 'New York', 200, 5001);
INSERT into customers values (3009, 'Geoff Camero', 'Berlin', 100, 5003);
INSERT into customers values (3008, 'Julian Green', 'London', 300, 5002);


CREATE table orders(
  ord_no NUMERIC PRIMARY KEY,
  purch_amt FLOAT,
  ord_date INTEGER,
  customer_id integer,
  salesman_id INTEGER
);

CREATE TABLE salesman(
  salesman_id INTEGER,
  name VARCHAR(255),
  city VARCHAR(255),
  comission float
);

SELECT Sum(purch_amt) From orders; --3

SELECT avg(purch_amt) FROM orders; -- 4

SELECT count(*) FROM customers; --5

SELECT min(purch_amt) FROM orders; --6

SELECT * FROM customers where cust_name LIKE '%b'; --7

SELECT * FROM orders WHERE customer_id = (SELECT customer_id FROM customers WHERE city = 'New York' ); --8

SELECT * FROM customers WHERE customer_id = (SELECT customer_id FROM orders WHERE purch_amt>10); --9

SELECT sum(grade) FROM customers; --10

SELECT * FROM customers WHERE cust_name IS NOT NULL ; --11

SELECT max(grade) FROM customers; --12


















