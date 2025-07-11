create table employees(
    emp_id int,
    emp_name varchar(50),
    dept_id int
);

create table department(
    dept_id int,
    dept_name varchar(50)
);

insert into employees values(1,'Shifat',101);
insert into employees values(2,'Mostafiz',102);

insert into department values(101,'Human Resources');

insert into department values(102, 'Marketing');


--cross join

select * from employees 
    CROSS JOIN department;


--natural join

select * from employees 
NATURAL JOIN department;

