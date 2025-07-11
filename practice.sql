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


select department_name, count(*) from employees
JOIN departments USING(department_id)
GROUP BY department_name;




SELECT department_name
FROM employees
JOIN departments USING (department_id)
GROUP BY department_name
ORDER BY AVG(salary) DESC
LIMIT 1;


select department_name, round(avg(salary)) from employees
join departments using(department_id)
group by department_name
order by avg(salary) desc limit 1;




SELECT EXTRACT(YEAR FROM hire_date) AS hire_year, COUNT(*) AS total_hired
FROM employees
GROUP BY hire_year
ORDER BY hire_year;


CREATE TABLE orders (
    order_id SERIAL PRIMARY KEY,
    customer_id INT NOT NULL,
    order_date DATE NOT NULL,
    total_amount DECIMAL(10, 2) NOT NULL
);



INSERT INTO orders (customer_id, order_date, total_amount)
VALUES 
(201, '2025-07-11', 500.00),
(202, '2025-07-10', 150.75),
(203, '2025-07-09', 340.20),
(204, '2025-07-08', 99.99),
(205, '2025-07-07', 199.00),
(205, '2024-07-07', 199.00),
(205, '2025-07-07', 199.00),
(205, '2025-07-07', 199.00),
(205, '2025-07-07', 199.00),
(205, '2025-07-07', 199.00);


SELECT customer_id, COUNT(*) AS total_orders, SUM(total_amount) AS total_spent
FROM orders
GROUP BY customer_id
HAVING COUNT(*) > 2;



SELECT 
  TO_CHAR(order_date, 'Month') AS month_name,
  DATE_TRUNC('month', order_date)::DATE AS month_start,
  COUNT(*) AS total_orders
FROM orders
WHERE EXTRACT(YEAR FROM order_date) = 2024
GROUP BY month_name, month_start
ORDER BY month_start;


