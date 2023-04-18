create database quanlysinhvien;
use quanlysinhvien;
create table class(
classId int primary key not null auto_increment,
className varchar(30) not null,
startTime datetime,
classStatus tinyint
);
create table student(
studentId int primary key auto_increment,
studentName varchar(30) not null,
adress varchar(50),
phone varchar(11),
studentStatus tinyint,
classId int,
foreign key (classId) references class(classId)
);
create table `subject`(
subjectId int primary key auto_increment,
subjectName varchar(30),
credit int not null default 1 check(credit >=1),
status tinyint
);
create table mark (
markId int primary key auto_increment,
studentId int,
subjectId int,
mark float default 0 check (mark between 0 and 100),
foreign key (studentId) references student(studentId),
foreign key (subjectId) references `subject`(subjectId)
);