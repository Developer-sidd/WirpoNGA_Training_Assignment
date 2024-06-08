-- SQL Assignment 4: 
-- Compose SQL statements to BEGIN a transaction, INSERT a new record into the 'orders' table, COMMIT the transaction,
-- then UPDATE the 'products' table, and ROLLBACK the transaction.

-- Begin a transaction
-- Insert a new record into the 'orders' table
INSERT INTO orders (order_id, product_id, quantity, order_date)
VALUES (1001, 101, 3, '2024-05-17');

-- Commit the transaction
COMMIT;

-- Update the 'products' table
UPDATE products
SET stock_quantity = stock_quantity - 3
WHERE product_id = 101;

-- Rollback the transaction
ROLLBACK;
