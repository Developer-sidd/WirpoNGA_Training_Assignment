-- Create table Users
CREATE TABLE Users (
    UserId INT PRIMARY KEY,
    UserName VARCHAR(50) NOT NULL,
    Email VARCHAR(100) NOT NULL,
    Age INT
);

-- Insert multiple records into Users
INSERT INTO Users (UserId, UserName, Email, Age) VALUES
    (1, 'John Doe', 'john.doe@example.com', 30),
    (2, 'Jane Smith', 'jane.smith@example.com', 25),
    (3, 'Michael Johnson', 'michael.johnson@example.com', 40),
    (4, 'Emily Brown', 'emily.brown@example.com', NULL); -- Example with NULL value
