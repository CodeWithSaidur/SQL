create database school;

use school;

create table student(
	id int(2) primary key not null auto_increment,
    name varchar(255) not null
);

insert into student (id,name) values(2,'sabed');

select * from student;