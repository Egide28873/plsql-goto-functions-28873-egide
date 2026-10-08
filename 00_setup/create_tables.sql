CREATE TABLE departments (
    department_id NUMBER PRIMARY KEY,
    department_name VARCHAR2(100) NOT NULL
);

CREATE TABLE employees (
    employee_id NUMBER PRIMARY KEY,
    first_name VARCHAR2(50) NOT NULL,
    last_name VARCHAR2(50) NOT NULL,
    department_id NUMBER,
    monthly_salary NUMBER(10,2) NOT NULL,
    hire_date DATE NOT NULL,

    CONSTRAINT fk_employee_department
        FOREIGN KEY (department_id)
        REFERENCES departments(department_id)
);

CREATE TABLE payroll (
    payroll_id NUMBER PRIMARY KEY,
    employee_id NUMBER NOT NULL,
    payroll_month DATE NOT NULL,
    basic_salary NUMBER(10,2) NOT NULL,
    tax NUMBER(10,2),
    net_salary NUMBER(10,2),

    CONSTRAINT fk_payroll_employee
        FOREIGN KEY (employee_id)
        REFERENCES employees(employee_id)
);

INSERT INTO departments
VALUES (10, 'Information Technology');

INSERT INTO departments
VALUES (20, 'Finance');

INSERT INTO departments
VALUES (30, 'Human Resources');

INSERT INTO employees
VALUES (101, 'Egide', 'Niyonzima', 10, 500000, DATE '2023-01-15');

INSERT INTO employees
VALUES (102, 'Jean', 'Uwimana', 20, 700000, DATE '2022-06-10');

INSERT INTO employees
VALUES (103, 'Alice', 'Mukamana', 30, 450000, DATE '2024-02-20');

INSERT INTO employees
VALUES (104, 'David', 'Habimana', 10, 900000, DATE '2021-09-05');

INSERT INTO payroll
VALUES (1, 101, DATE '2026-10-01', 500000, 50000, 450000);

INSERT INTO payroll
VALUES (2, 102, DATE '2026-10-01', 700000, 70000, 630000);

INSERT INTO payroll
VALUES (3, 103, DATE '2026-10-01', 450000, 45000, 405000);

INSERT INTO payroll
VALUES (4, 104, DATE '2026-10-01', 900000, 90000, 810000);

COMMIT;

SELECT * FROM departments;

SELECT * FROM employees;

SELECT * FROM payroll;