--Libarary Manageemment 
CREATE DATABASE Library_Management;
USE Library_Management;




CREATE TABLE Authors (
    AuthorID INT PRIMARY KEY AUTO_INCREMENT,
    FirstName VARCHAR(100) NOT NULL,
    LastName VARCHAR(100) NOT NULL,
    BirthYear INT CHECK (BirthYear > 0)
);


CREATE TABLE Books (
    BookID INT PRIMARY KEY AUTO_INCREMENT,
    Title VARCHAR(255) NOT NULL,
    AuthorID INT NOT NULL,
    Genre VARCHAR(100),
    PublishedYear INT CHECK (PublishedYear > 0),
    ISBN VARCHAR(13) UNIQUE NOT NULL,
    Copies INT DEFAULT 1 CHECK (Copies >= 0),
    CONSTRAINT fk_author FOREIGN KEY (AuthorID) REFERENCES Authors(AuthorID)
);


CREATE TABLE Members (
    MemberID INT PRIMARY KEY AUTO_INCREMENT,
    FirstName VARCHAR(100) NOT NULL,
    LastName VARCHAR(100) NOT NULL,
    Email VARCHAR(255) UNIQUE NOT NULL,
    JoinDate DATE NOT NULL
);




INSERT INTO Authors (FirstName, LastName, BirthYear) VALUES
('George', 'Orwell', 1903),
('Jane', 'Austen', 1775),
('Mark', 'Twain', 1835);


INSERT INTO Books (Title, AuthorID, Genre, PublishedYear, ISBN, Copies) VALUES
('1984', 1, 'Dystopian', 1949, '9780451524935', 5),
('Pride and Prejudice', 2, 'Romance', 1813, '9780141439518', 3),
('The Adventures of Tom Sawyer', 3, 'Adventure', 1876, '9780486400778', 4);


INSERT INTO Members (FirstName, LastName, Email, JoinDate) VALUES
('John', 'Doe', 'john.doe@example.com', '2024-01-15'),
('Jane', 'Smith', 'jane.smith@example.com', '2024-02-10');

SELECT * FROM  Authors;



