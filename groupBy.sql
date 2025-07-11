select country, count(*), avg(age) from student 
    group by country 
    having avg(age)>21;



select extract(year from dob) as birth_year , count(*), 
    from student
    group by birth_year;









