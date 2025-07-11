select * from employees;

select max(salary) from employees where department_name = 'Sales';


drop table employees;

drop table departments;

create table employees(
    employee_id serial primary key,
    employee_name varchar(50) not null,
    department_name varchar(50) not null,
    salary decimal(10,2) not null,
    hire_date date not null
)

insert into employees (employee_name, department_name, salary, hire_date)
values  ('John Doe', 'Sales', 50000.00, '2020-01-15'),
        ('Jane Smith', 'Marketing', 60000.00, '2019-03-22'),
        ('Emily Johnson', 'Sales', 55000.00, '2021-07-30'),
        ('Michael Brown', 'HR', 70000.00, '2018-11-05'),
        ('Sarah Davis', 'Marketing', 65000.00, '2020-05-10'),
        ('David Wilson', 'IT', 80000.00, '2017-09-15'),
        ('Laura Garcia', 'HR', 72000.00, '2022-02-20'),
        ('James Martinez', 'Sales', 58000.00, '2019-12-01'),
        ('Linda Rodriguez', 'IT', 75000.00, '2021-04-25'),
        ('Robert Lee', 'Marketing', 62000.00, '2020-08-18');



select * from employees;

select * from employees where salary > 60000;




select employee_name, salary from employees 
where salary > 
(select max(salary) from employees where department_name = 'HR')



select department_name, sum(salary) from employees GROUP BY department_name







