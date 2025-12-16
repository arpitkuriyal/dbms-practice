CREATE TABLE departments (
department_id INTEGER PRIMARY KEY,
department_name TEXT
);

CREATE TABLE employees (
employee_id INTEGER PRIMARY KEY,
department_id INTEGER,
CONSTRAINT fk_employee_department
FOREIGN KEY (department_id)
REFERENCES departments(department_id)
ON DELETE CASCADE
);