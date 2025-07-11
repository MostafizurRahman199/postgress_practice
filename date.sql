show timezone;


select now()

create table timeZ(ts TIMESTAMP without time zone, tsz TIMESTAMP with time zone);

insert into timez values('2024-12-12 10:45:00', '2024-01-12 10:45:00');

select * from timez;


select CURRENT_DATE;

select now();

select now()::date;

select now()::time;

-- to make formar
select to_char(now(), 'yyyy/mm/dd');

select to_char(now(), 'DDD');

select current_date - interval '1 year 2 month 30 day';


select age(CURRENT_DATE , '1998-11-23');

select age(CURRENT_DATE, '2001-12-14');



select *, age  from student;

create table timetable(simpleTime TIMESTAMP without time zone, complexTime TIMESTAMP with time zone);
insert into timetable values('2020-02-02 10:49','2020-02-02 10:39');

select * from timetable;

select current_date;

select current_time;


select now()::date;

select now()::time;

select to_char(now(), 'yyyy/mm/dd');


select CURRENT_DATE - interval '1 year';

select age (current_date , '1878-2-22');

select extract(year from '2024-01-25'::date)


select 1::boolean;










