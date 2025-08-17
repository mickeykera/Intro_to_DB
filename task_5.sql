-- Task 5: Insert single row into customers table
-- This script inserts customer data into the customers table
-- Database name will be passed as argument of mysql command

USE alx_book_store;

INSERT INTO customer (customer_id, customer_name, email, address) 
VALUES (1, 'Cole Baidoo', 'cbaidoo@sandtech.com', '123 Happiness Ave.');
