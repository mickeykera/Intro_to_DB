-- Task 4: Show full description of books table
-- This script shows the complete table structure of the books table
-- Database name will be passed as argument of mysql command

USE alx_book_store;

SELECT COLUMN_NAME, COLUMN_TYPE, IS_NULLABLE, COLUMN_KEY, COLUMN_DEFAULT, EXTRA
FROM INFORMATION_SCHEMA.COLUMNS 
WHERE TABLE_SCHEMA = 'alx_book_store' AND TABLE_NAME = 'Books'
ORDER BY ORDINAL_POSITION;
