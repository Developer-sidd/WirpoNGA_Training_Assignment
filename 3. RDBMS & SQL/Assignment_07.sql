-- DAY-8 Assignment 7:
-- Prepare a series of SQL statements to INSERT new records into the 
-- library tables, UPDATE existing records with new information, and 
-- DELETE records based on specific criteria. Include BULK INSERT
-- operations to load data from an external source.

INSERT INTO books (title, author, genre, published_year)
VALUES ('The Great Gatsby', 'F. Scott Fitzgerald', 'Fiction', 1925);
INSERT INTO patrons (name, email, phone_number)
VALUES ('Jane Doe', 'jane@example.com', '555-1234');
INSERT INTO transactions (book_id, patron_id, checkout_date, return_date)
VALUES (1, 1, '2024-05-16', NULL);

-- UPDATE:
UPDATE books
SET genre = 'Classic'
WHERE title = 'The Great Gatsby';
UPDATE patrons
SET phone_number = '555-5678'
WHERE name = 'Jane Doe';
UPDATE transactions
SET return_date = '2024-05-23'
WHERE book_id = 1 AND patron_id = 1;

-- DELETE:
DELETE FROM books
WHERE title = 'The Great Gatsby';
DELETE FROM patrons
WHERE name = 'Jane Doe';
DELETE FROM transactions
WHERE book_id = 1 AND patron_id = 1;

-- BULK INSERT:
BULK INSERT books
FROM 'C:\path\to\books.csv'
WITH (FIELDTERMINATOR = ',', ROWTERMINATOR = '\n', FIRSTROW = 2);