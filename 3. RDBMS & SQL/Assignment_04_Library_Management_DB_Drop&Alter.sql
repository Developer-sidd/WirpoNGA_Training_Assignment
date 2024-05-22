
--Assignment 4: Write SQL statements to CREATE a new database and tables that reflect the library schema you designed earlier. Use ALTER statements to modify the table structures and DROP statements to remove a redundant table.

-- Step 1: Create the database
CREATE DATABASE IF NOT EXISTS Library_Management;

-- Step 2: Use the created database
USE Library_Management;

-- Step 3: Create the Authors table
CREATE TABLE IF NOT EXISTS Authors (
  AuthorID INT PRIMARY KEY AUTO_INCREMENT,
  FirstName VARCHAR(100) NOT NULL,
  LastName VARCHAR(100) NOT NULL,
  BirthYear INT CHECK (BirthYear > 0)
);

-- Step 4: Create the Books table
CREATE TABLE IF NOT EXISTS Books (
  BookID INT PRIMARY KEY AUTO_INCREMENT,
  Title VARCHAR(255) NOT NULL,
  AuthorID INT NOT NULL,
  Genre VARCHAR(100),
  PublishedYear INT CHECK (PublishedYear > 0),
  ISBN VARCHAR(13) UNIQUE NOT NULL,
  Copies INT DEFAULT 1 CHECK (Copies >= 0),
  CONSTRAINT fk_author FOREIGN KEY (AuthorID) REFERENCES Authors(AuthorID)
);

-- Step 5: Create the Members table
CREATE TABLE IF NOT EXISTS Members (
  MemberID INT PRIMARY KEY AUTO_INCREMENT,
  FirstName VARCHAR(100) NOT NULL,
  LastName VARCHAR(100) NOT NULL,
  Email VARCHAR(255) UNIQUE NOT NULL,
  JoinDate DATETIME NOT NULL
);

-- Step 6: Create a redundant table for demonstration
CREATE TABLE IF NOT EXISTS RedundantTable (
  RedundantID INT PRIMARY KEY AUTO_INCREMENT,
  SomeData VARCHAR(100)
);

-- Step 7: Insert data into Authors table
INSERT INTO Authors (FirstName, LastName, BirthYear) VALUES
('George', 'Orwell', 1903),
('Jane', 'Austen', 1775),
('Mark', 'Twain', 1835);

-- Step 8: Insert data into Books table
INSERT INTO Books (Title, AuthorID, Genre, PublishedYear, ISBN, Copies) VALUES
('1984', 1, 'Dystopian', 1949, '9780451524935', 5),
('Pride and Prejudice', 2, 'Romance', 1813, '9780141439518', 3),
('The Adventures of Tom Sawyer', 3, 'Adventure', 1876, '9780486400778', 4);

-- Step 9: Insert data into Members table
INSERT INTO Members (FirstName, LastName, Email, JoinDate) VALUES
('John', 'Doe', 'john.doe@example.com', '2024-01-15 00:00:00'),
('Jane', 'Smith', 'jane.smith@example.com', '2024-02-10 00:00:00');

-- Step 10: Alter the Books table to add a new column for book status
ALTER TABLE Books
ADD COLUMN Status VARCHAR(50) DEFAULT 'Available';

-- Step 11: Alter the Members table to add a new column for membership type
ALTER TABLE Members
ADD COLUMN MembershipType VARCHAR(50) DEFAULT 'Regular';

-- Step 12: Drop the redundant table
DROP TABLE IF EXISTS RedundantTable;
