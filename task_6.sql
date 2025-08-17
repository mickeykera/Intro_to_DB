-- Task 6: Insert multiple rows into customers table
-- This script inserts multiple customer records into the customers table
-- Database name will be passed as argument of mysql command

USE alx_book_store;

INSERT INTO Customers (customer_id, customer_name, email, address) VALUES
(2, 'Blessing Malik', 'bmalik@sandtech.com', '124 Happiness  Ave.'),
(3, 'Obed Ehoneah', 'eobed@sandtech.com', '125 Happiness  Ave.'),
(4, 'Nehemial Kamolu', 'nkamolu@sandtech.com', '126 Happiness  Ave.');
