create database school;

use school;

create table students(
	id int unique not null,
    name varcharacter(100) not null,
    class varcharacter(2) not null,
    roll int not null,
    age int not null
);

alter table students drop column id;

ALTER TABLE students ADD id INT NOT NULL AUTO_INCREMENT PRIMARY KEY;

alter table students drop column email;


