SELECT * from person;


ALTER table person 
 add column email VARCHAR(50) DEFAULT 'default@mail.com' not null ;


alter table person 
drop COLUMN email;



 insert into person values (5, 'masum', 33, 'masum@gmail.com');


 alter table person 
  rename column age to person_age;


alter table person
  alter column user_name type varchar(30);



alter table person
    alter column person_age set not null;


alter table person
    alter column person_age drop not null;


alter table person
    add constraint unique_person_user_name unique(user_name);

alter table person
    drop constraint unique_person_user_name ;


