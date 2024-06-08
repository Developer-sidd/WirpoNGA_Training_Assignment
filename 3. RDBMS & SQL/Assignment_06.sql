--Assignment 6:
-- Create a new database user with specific privileges using the CREATE USER
-- and GRANT commands. Then, write a script to REVOKE certain privileges and DROP the user.

-- Create a new database user
CREATE USER 'new_user'@'localhost' IDENTIFIED BY 'password';

-- Grant privileges to the new user
GRANT SELECT, INSERT, UPDATE ON database_name.* TO 'new_user'@'localhost';

-- Revoke UPDATE privilege from the user
REVOKE UPDATE ON database_name.* FROM 'new_user'@'localhost';

-- Drop the user
DROP USER 'new_user'@'localhost';
