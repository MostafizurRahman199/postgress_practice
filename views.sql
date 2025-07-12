

create view dept_avg_salary 
as SELECT department_name , avg(salary) from employees 
group by(department_name);


select * from dept_avg_salary;



