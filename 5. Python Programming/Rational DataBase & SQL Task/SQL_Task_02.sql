-- Update a record in the Users table
UPDATE Users
SET FirstName = 'NewFirstName', LastName = 'NewLastName'
WHERE UserID = 123;

-- Delete a record from the Users table
DELETE FROM Users
WHERE UserID = 456;
