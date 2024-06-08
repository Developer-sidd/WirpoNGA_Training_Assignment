
--SQL Assignment 2:
-- Craft a query using an INNER JOIN to combine 'orders' and 'customers' tables for
-- customers in a specified region, and a LEFT JOIN to display all customers including 
-- those without orders.


SELECT *
FROM customers
LEFT JOIN orders ON
customers.customer_id = orders.customer_id
Where customers.region = "specified_region";