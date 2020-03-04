create table student1
(
regno varchar2(10),
names varchar2(20),
major varchar2(5),
bdate date,
primary key(regno)
);

create table course_table
(
courseid number(3),
cname varchar2(3),
dept varchar2(4),
primary key(courseid)
);

create table text
(
isbn number(4),
book_title varchar2(10),
publisher varchar2(10),
author varchar2(20),
primary key(isbn)
);

create table book_adaption
(
courseid number(2),
sem number(2),
isbn number(4),
primary key(courseid,isbn),
foreign key(courseid) references course_table(courseid),
foreign key(isbn) references text(isbn)
);

create table enroll 
(
regno varchar2(10),
courseid number(2),
sem number(1),
marks number(2),
primary key(regno,courseid),
foreign key(regno) references student1(regno),
foreign key(courseid) references course_table(courseid)
);


insert into student1 values('1DB01IS01','KIRAN','ISE','02-JAN-84');
insert into student1 values('1DB01CS02','DIVYA','CSE','12-OCT-85');
insert into student1 values('1DB01ME03','BABU','MECH','23-SEP-82');
insert into student1 values('1DB01IS01','JOHN','EC','21-FEB-84');
insert into student1 values('1DB01CS05','ASHA','CSE','07-OCT-79');

insert into course_table values(11,'DCS','CSE');
insert into course_table values(22,'ADA','CSE');
insert into course_table values(33,'CN','EC');
insert into course_table values(44,'TD','MECH');
insert into course_table values(55,'MUP','EC');

insert into text values(7722,'VB','PHI','HOLZNER');
insert into text values(1144,'DS WITH C','SAPNA','NANDAGOPAL');
insert into text values(4400,'C PROG','PHI','BALAGURU');
insert into text values(5566,'CN','PHI','TENENBAUM');
insert into text values(3388,'MP','TATA','BREY');

insert into book_adaption values(11,3,7722);
insert into book_adaption values(22,4,7722);
insert into book_adaption values(11,5,4400);
insert into book_adaption values(11,8,5566);
insert into book_adaption values(55,4,3388);
insert into book_adaption values(44,4,5566);
insert into book_adaption values(44,7,3388);

insert into enroll values('1DB01IS01',22,5,76); 
insert into enroll values('1DB01IS01',11,3,90); 
insert into enroll values('1DB01CS02',33,6,55); 
insert into enroll values('1DB01ME03',22,5,75); 
insert into enroll values('1DB01CS05',44,5,75); 

insert into text values()1801,'OS','WILEY','ABHRAM');
insert into book_adaption values(11,2,1801);
