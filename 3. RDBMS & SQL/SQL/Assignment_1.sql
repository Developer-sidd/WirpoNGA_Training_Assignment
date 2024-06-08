-- SQL Assignment 1:
-- Write a SELECT query to retrieve all columns from a 'customers' table, 
-- and modify it to return only the customer name and email address for 
-- customers in a specific city.

SELECT *
FROM customers;
SELECT customer_name, email_address
FROM customers
WHERE city = 'New York';
