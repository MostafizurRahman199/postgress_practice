-- Create the student table
create table student (
    student_id serial primary key,
    first_name varchar(50) not NULL,
    last_name varchar(50) not NULL,
    age INT,
    grade char(2),
    course varchar(50),
    email varchar(100),
    dob date,
    blood_group varchar(5),
    country varchar(50)
);

-- Insert 20 rows of sample data into the student table
INSERT INTO student (first_name, last_name, age, grade, course, email, dob, blood_group, country) VALUES
('Arif', 'Hasan', 21, 'A+', 'Computer Science', 'arif.hasan@example.com', '2003-02-15', 'O+', 'Bangladesh'),
('Nusrat', 'Jahan', 22, 'B', 'Mathematics', 'nusrat.j@example.com', '2002-07-09', 'A-', 'Bangladesh'),
('Rahim', 'Uddin', 20, 'A', 'Physics', 'rahim.uddin@example.com', '2004-01-25', 'B+', 'India'),
('Salma', 'Khatun', 23, 'B+', 'Chemistry', 'salma.k@example.com', '2001-06-18', 'O-', 'Nepal'),
('Tanvir', 'Ahmed', 19, 'A-', 'English', 'tanvir.ahmed@example.com', '2005-11-20', 'AB+', 'Bangladesh'),
('Shila', 'Roy', 22, 'C', 'Economics', 'shila.roy@example.com', '2002-09-10', 'A+', 'India'),
('Junaid', 'Islam', 21, 'B', 'Biology', 'junaid.islam@example.com', '2003-04-17', 'O+', 'Pakistan'),
('Sadia', 'Afrin', 20, 'A+', 'Computer Science', 'sadia.afrin@example.com', '2004-12-05', 'B-', 'Bangladesh'),
('Riyad', 'Mahmud', 23, 'A', 'Accounting', 'riyad.mahmud@example.com', '2001-03-30', 'AB-', 'Bangladesh'),
('Mira', 'Singh', 21, 'B-', 'Statistics', 'mira.singh@example.com', '2003-08-22', 'O-', 'India'),
('Hossain', 'Kabir', 24, 'C+', 'Sociology', 'kabir.hossain@example.com', '2000-05-14', 'A+', 'Nepal'),
('Ayesha', 'Begum', 22, 'B', 'Political Science', 'ayesha.b@example.com', '2002-10-02', 'B+', 'Bangladesh'),
('Rifat', 'Rahman', 21, 'A', 'Philosophy', 'rifat.rahman@example.com', '2003-06-25', 'O+', 'Bangladesh'),
('Faria', 'Haque', 20, 'A-', 'Psychology', 'faria.haque@example.com', '2004-02-19', 'A-', 'India'),
('Sabbir', 'Khan', 23, 'B+', 'Finance', 'sabbir.khan@example.com', '2001-12-08', 'B+', 'Bangladesh'),
('Tamanna', 'Islam', 22, 'A+', 'Marketing', 'tamanna.islam@example.com', '2002-07-01', 'O-', 'Bangladesh'),
('Nayeem', 'Hasan', 19, 'B', 'History', 'nayeem.hasan@example.com', '2005-04-04', 'AB+', 'Pakistan'),
('Lubna', 'Sultana', 20, 'A', 'English', 'lubna.sultana@example.com', '2004-09-12', 'O+', 'Bangladesh'),
('Adnan', 'Kabir', 21, 'C', 'Computer Science', 'adnan.kabir@example.com', '2003-01-18', 'A-', 'Bangladesh'),
('Rehana', 'Siddique', 23, 'B-', 'Law', 'rehana.s@example.com', '2001-08-30', 'AB-', 'Nepal');

-- Select all columns from the student table
SELECT * FROM student;

-- Select only the first_name and last_name columns from the student table
SELECT first_name, last_name from student;

-- Select the email column and rename it to "student_email", and also select the age column
SELECT email as student_email , age from student;

-- Select all columns from the student table and order the results by age in ascending order
select * from student ORDER BY age asc;

-- Select all unique countries from the student table
select DISTINCT country from student;

-- Select the first_name and last_name of students from Bangladesh
select first_name, last_name from student 
   where country = 'Bangladesh';

-- Select all columns from the student table
select * from student;

-- Select all students with a grade of 'A'
select * from student
where grade = 'A' ;

-- Select all unique countries from the student table and order them in ascending order
select distinct country from student order by country ASC;

-- Select all columns from the student table
select * from student;

-- Select all unique grades from the student table
SELECT DISTINCT grade  from student;

-- Select all students with a grade of 'A' and who are studying 'Physics'
select * from student
    where grade = 'A' and course = 'Physics';

-- Select all students with a blood group of 'A+'
select * from student
    where blood_group = 'A+'

-- Select all students who are from 'Bangladesh' or 'India' and are 20 years old
select * from student
    where (country = 'Bangladesh' or country='India') and age = 20;

-- Select all students who are 20 years old or younger and are studying 'Chemistry'
select * from student where age<=20 and course='Chemistry'

-- Select all students who are not 20 years old
select * from student
where age != 20;

-- Select the first name in uppercase and all other columns from the student table
select upper(first_name) as upper_first_name, * from student;

-- Concatenate the first and last names with an underscore
select concat(first_name, '_', last_name) from student;

-- Calculate the average age of all students
select avg(age) from student;

-- Find the maximum age among all students
select max(age) from student;

-- Find the minimum age among all students
select min(age) from student;

-- Calculate the sum of all students' ages
select sum(age) from student;

-- Count the total number of students
select count(*) from student;

-- Find the maximum length of the first name among all students
select max(length(first_name)) from student;

-- Select all students who are not from 'Bangladesh'
select * from student
where not country ='Bangladesh'

-- Select all students who have a non-null email address
select * from student
where email is not null;

-- Select the email column, replacing null emails with 'Email not provided'
select coalesce(email, 'Email not provided') as "Email" from student;

-- Select all students from 'Bangladesh', 'India', or 'Nepal'
select * from student where country = 'Bangladesh' or country='india' or country='Nepal';

-- Select all students who are not from 'Bangladesh', 'India', or 'Nepal'
select * from student where country not in('Bangladesh', 'India', 'Nepal')

-- Select all students between the ages of 19 and 20 (inclusive)
select * from student where age between 19 and 20;

-- Select all students with a date of birth between '2001-01-01' and '2005-01-01'
select * from student where dob BETWEEN '2001-01-01' and '2005-01-01';

-- Select all students whose first name has 'a' as the second letter
select * from student
    where first_name ilike '_a%';

-- Select 5 students, skipping the first 2
select * from student limit 5 offset 2;

-- Select the first_name, age, dob, and email of 5 students who are 30 or younger, skipping the first 2
select first_name, age, dob, email from student
where age<=30 limit 5 OFFSET 2;

-- Delete all students with a grade of 'B'
delete from student 
    where grade='B'

-- Delete all students from 'Bangladesh' with a grade of 'C'
delete from student
    where grade='C' and country='Bangladesh'

-- Select all columns from the student table
select * from student;

-- Update the email, grade, and country for all students who are 21 years old
update student
    set email ='default@mail.com' , grade='A+', country='Uganda'
    where age='21';

-- Select all columns from the student table
select * from student;