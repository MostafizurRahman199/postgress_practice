create table "user"(
    id serial PRIMARY key,
    username VARCHAR(25) not null

)


create table post (
    id SERIAL PRIMARY key,
    title text not null,
    user_id INTEGER REFERENCES "user"(id) on delete CASCADE
)



INSERT INTO "user" (username) VALUES
('alice'),
('bob'),
('charlie'),
('diana'),
('eve');




INSERT INTO post (title, user_id) VALUES
('Alice first post', 1),
('Bob shares an update', 2),
('Charlie posts something cool', 3),
('Diana writes about SQL', 4),
('Eve explores databases', 5),
('Alice writes again', 1),
('Charlie drops another post', 3),
('Eve posts a follow-up', 5);


select * from post;

select * from "user";




alter table post
    alter column user_id set not null;




drop table "user"

drop table post;


select * from "user"

select * from post

delete from "user"
    where id = 4



select title, username from post 
    join "user" on post.user_id = "user".id;



select * from post as p
    join "user" as u on p.user_id = u.id;





insert into post(id, title, user_id) VALUES 
(9, 'This is a test', null);


select * from post as p
left join "user" as u on p.user_id = u.id;


select * from post as p 
right join "user" as u on p.user_id = u.id;



select * from post as p 
full outer join "user" as u on p.user_id = u.id; 









