
-- CREATE TABLE
CREATE TABLE niv_employees (
    id SERIAL PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    department VARCHAR(50),
    salary NUMERIC(10, 2),
    email VARCHAR(100) UNIQUE NOT NULL,
    phone VARCHAR(20),
    hire_date DATE NOT NULL,
    job_title VARCHAR(50),
    manager_id INTEGER,
    status VARCHAR(20) DEFAULT 'active',
    CONSTRAINT fk_manager FOREIGN KEY (manager_id) REFERENCES niv_employees(id)
);

-----------------------------------------------------------------------------------------------------------------
-- INSERT

INSERT INTO niv_employees (name, department, salary, email, phone, hire_date, job_title, manager_id, status) VALUES
('Test 1', 'App mod', 85000.00, 'test1@niveussolutions.com', '+91999999999', '2022-01-15', 'Cloud Associate', NULL, 'active'),
('Test 2', 'Data mod', 60000.00, 'test2@niveussolutions.com', '+91888888888', '2021-06-20', 'Cloud Specialist', NULL, 'active'),
('test 3', 'Infra mod', 95000.00, 'test3@niveussolutions.com', '+9177777777', '2020-03-10', 'Cloud Leader', 1, 'active'),
('test4', 'HR', 70000.00, 'test4@niveussolutions.com', '+9166666666', '2019-11-05', 'Cloud specialist', NULL, 'active');

------------------------------------------------------------------------------------------------------------------------------------

-- UPDATE
UPDATE niv_employees
SET salary = 65000.00,
    job_title = 'Cloud specialist'
WHERE name = 'test4';

--------------------------------
-- UPDATE


SELECT * FROM niv_employees WHERE department = 'App mod';

---------------------------
-- DELETE
 DELETE FROM niv_employees
WHERE name = 'test 3';
