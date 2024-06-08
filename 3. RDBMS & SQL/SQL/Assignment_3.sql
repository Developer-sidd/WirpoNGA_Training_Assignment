-- -- RDMS & SQL Assignment 3:
-- Utilize a subquery to find customers who have placed orders 
-- above the average order value, and write a UNION query to combine two SELECT
-- statements with the same number of columns.

-- Subquery to find customers who have placed orders above the average order value
SELECT customers.customer_id, customers.customer_name
FROM customers
WHERE customers.customer_id IN (
    SELECT orders.customer_id
    FROM orders
    GROUP BY orders.customer_id
    HAVING AVG(orders.order_value) > (
        SELECT AVG(order_value)
        FROM orders
    )
);

--  UNION query to combine two SELECT statements with the same number of columns
-- First SELECT statement
SELECT employee_id, first_name, last_name
FROM employees
WHERE department = 'Sales'
UNION
-- Second SELECT statement
SELECT employee_id, first_name, last_name
FROM employees
WHERE department = 'Marketing';