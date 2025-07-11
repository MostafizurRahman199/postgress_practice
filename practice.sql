drop table employees;
drop table departments;


create table employees(
    employee_id SERIAL PRIMARY KEY,
    employee_name VARCHAR(50),
    department_id int REFERENCES departments(department_id),
    salary DECIMAL (10,2),
    hire_date DATE
);


create table departments(
    department_id SERIAL PRIMARY KEY,
    department_name VARCHAR(50)
);



INSERT INTO departments (department_name) VALUES
('Human Resources'),
('Engineering'),
('Marketing'),
('Finance'),
('Sales'),
('Customer Support'),
('Legal'),
('IT Support'),
('Research and Development');





INSERT INTO employees (employee_name, department_id, salary, hire_date) VALUES
('Grace Lee', 1, 60000.00, '2021-06-15'),
('Henry Miles', 2, 85000.00, '2020-09-10'),
('Isabella Moore', 3, 61000.00, '2022-03-18'),
('James Brown', 4, 92000.00, '2017-08-05'),
('Karen Taylor', 5, 59000.00, '2023-01-25'),
('Liam Wilson', 6, 48000.00, '2021-11-11'),
('Mia Harris', 7, 76000.00, '2019-04-07'),
('Noah Clark', 8, 69000.00, '2020-12-30'),
('Olivia Young', 9, 83000.00, '2018-06-20'),
('Paul Walker', 2, 77000.00, '2019-10-01'),
('Quinn Allen', 2, 74000.00, '2021-04-14'),
('Ruby Adams', 3, 63000.00, '2022-07-09'),
('Samuel Baker', 4, 81000.00, '2020-01-02'),
('Tina Carter', 5, 56000.00, '2023-06-16');



select employee_name, department_name from employees 
JOIN departments ON employees.department_id = departments.department_id;


select * from employees 
JOIN departments USING(department_id);


SELECT department_name, round(avg(salary)) as avg_salary FROM employees 
JOIN departments USING(department_id) 
GROUP BY department_name







