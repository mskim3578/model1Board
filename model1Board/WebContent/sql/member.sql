drop table member;
create table member (
id varchar(12) not null  primary key,
passwd varchar(12) not null,
name varchar(10) not null,
jumin1 varchar(6) not null,
jumin2 varchar(7) not null,
email varchar(30),
blog varchar(50),
reg_date date not null
);
