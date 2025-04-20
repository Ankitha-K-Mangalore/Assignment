-- Create the employees table
CREATE TABLE employees (
    id SERIAL PRIMARY KEY,
    name VARCHAR(100),
    department VARCHAR(50),
    salary NUMERIC
);

-- Insert sample data
INSERT INTO employees (name, department, salary) VALUES ('Alice Johnson', 'Engineering', 75000);
INSERT INTO employees (name, department, salary) VALUES ('Bob Smith', 'HR', 60000);

-- Select all data
SELECT * FROM employees;

-- Update salary for a specific employee
UPDATE employees SET salary = 80000 WHERE name = 'Alice Johnson';

-- Delete a specific employee
DELETE FROM employees WHERE name = 'Bob Smith';
