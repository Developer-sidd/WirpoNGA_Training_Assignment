--  Assignment 5:
-- Demonstrate the creation of an index on a table and discuss how it 
-- improves query performance. Use a DROP INDEX statement to remove the 
-- index and analyze the impact on query execution.


-- Create employees table
CREATE TABLE employees (
 employee_id INT PRIMARY KEY,
 first_name VARCHAR(50),
 last_name VARCHAR(50),
 department_id INT
);
-- Insert sample data
INSERT INTO employees (employee_id, first_name, last_name, department_id)
VALUES 
 (1, 'John', 'Doe', 101),
 (2, 'Jane', 'Smith', 102),
 (3, 'Michael', 'Johnson', 101),
 (4, 'Emily', 'Williams', 103),
 (5, 'David', 'Brown', 102);
 
 -- Create index on department_id column
CREATE INDEX department_index ON employees(department_id);
-- Query using index
SELECT * FROM employees WHERE department_id = 101;
-- Drop the index
DROP INDEX department_index ON employees;

-- how this index improves query performance:

-- Faster Data Retrieval: When querying based on the 'department' column, the index allows the database to quickly locate the rows that match the specified department without scanning the entire table.

-- Reduced Disk I/O: Indexes store sorted copies of the indexed columns, reducing the amount of disk I/O required to fetch data. Instead of scanning the entire table, the database engine can efficiently navigate the index structure to find the desired rows.

-- Improved Query Execution Plans: The presence of an index can lead the query optimizer to choose more efficient execution plans, such as index scans or index seeks, resulting in faster query execution.

-- Removing the index will result in the following effects:

-- Slower Data Retrieval: Queries that rely on filtering or sorting by the 'department' column may experience slower performance since the database engine will need to perform full table scans to locate relevant rows.

-- Increased Disk I/O: Without the index, the database engine may need to read more data from disk to satisfy queries, leading to higher disk I/O overhead.

-- Potential Degradation in Query Performance: Query execution plans may revert to less efficient table scans or other access methods, potentially leading to slower query execution times compared to when the index was present.