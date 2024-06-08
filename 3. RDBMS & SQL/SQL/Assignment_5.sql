-- DAY-9 Assignment 5:
-- Begin a transaction, perform a series of INSERTs into 'orders',
-- setting a SAVEPOINT after each, rollback to the second SAVEPOINT,
-- and COMMIT the overall transaction.

-- First INSERT into 'orders' table
INSERT INTO orders (order_id, product_id, quantity, order_date)
VALUES (1001, 101, 3, '2024-05-17');

-- Set a SAVEPOINT after the first INSERT
SAVEPOINT savepoint1;

-- Second INSERT into 'orders' table
INSERT INTO orders (order_id, product_id, quantity, order_date)
VALUES (1002, 102, 2, '2024-05-18');

-- Set a SAVEPOINT after the second INSERT
SAVEPOINT savepoint2;

-- Third INSERT into 'orders' table
INSERT INTO orders (order_id, product_id, quantity, order_date)
VALUES (1003, 103, 1, '2024-05-19');

-- Rollback to the second SAVEPOINT
ROLLBACK TO SAVEPOINT savepoint2;

-- Commit the overall transaction
COMMIT;
