/*
Create Database StudentManagementSystem

1.Create Table student

with attribute :● StudentID (Primary Key)
●Name
●Age
●Address

2.Create a table with named Feedback 

with attributes: ● FeedbackID (Primary Key) 

● StudentID (Foreign key) 

● Date 

● InstructorName 

● Feedback

Add 5 Records in table
*/
mysql>
mysql> create database StudentManagementSystem1;
Query OK, 1 row affected (0.10 sec)

mysql> use StudentManagementSystem1;
Database changed
mysql> create table student(student_ID varchar(50) not null primary key,name varchar(50) not null,age int(10) not null,address varchar(50) not null);
Query OK, 0 rows affected, 1 warning (0.12 sec)

mysql> desc student;
+------------+-------------+------+-----+---------+-------+
| Field      | Type        | Null | Key | Default | Extra |
+------------+-------------+------+-----+---------+-------+
| student_ID | varchar(50) | NO   | PRI | NULL    |       |
| name       | varchar(50) | NO   |     | NULL    |       |
| age        | int         | NO   |     | NULL    |       |
| address    | varchar(50) | NO   |     | NULL    |       |
+------------+-------------+------+-----+---------+-------+
4 rows in set (0.08 sec)

mysql> insert into student values('s101','deepika','20','bhiwandi');
Query OK, 1 row affected (0.01 sec)

mysql> insert into student values('s102','Laya','19','padmanagar');
Query OK, 1 row affected (0.01 sec)

mysql> insert into student values('s103','chitti','20','alankar talkies');
Query OK, 1 row affected (0.04 sec)

mysql>
mysql> insert into student values('s104','rama','21','pune');
Query OK, 1 row affected (0.04 sec)

mysql> insert into student values('s105','riya','22','mumbai');
Query OK, 1 row affected (0.01 sec)

mysql> select * from student;
+------------+---------+-----+-----------------+
| student_ID | name    | age | address         |
+------------+---------+-----+-----------------+
| s101       | deepika |  20 | bhiwandi        |
| s102       | Laya    |  19 | padmanagar      |
| s103       | chitti  |  20 | alankar talkies |
| s104       | rama    |  21 | pune            |
| s105       | riya    |  22 | mumbai          |
+------------+---------+-----+-----------------+
5 rows in set (0.00 sec)


mysql> create table feedback(feedback_id varchar(10) not null primary key,student_ID varchar(10) not null,date datetime not null,Instructor_Name varchar(20) not null,feedback varchar(50) not null,foreign key(student_ID) references student(student_ID));
Query OK, 0 rows affected (0.12 sec)

mysql> desc feedback;
+-----------------+-------------+------+-----+---------+-------+
| Field           | Type        | Null | Key | Default | Extra |
+-----------------+-------------+------+-----+---------+-------+
| feedback_id     | varchar(10) | NO   | PRI | NULL    |       |
| student_ID      | varchar(10) | NO   | MUL | NULL    |       |
| date            | datetime    | NO   |     | NULL    |       |
| Instructor_Name | varchar(20) | NO   |     | NULL    |       |
| feedback        | varchar(50) | NO   |     | NULL    |       |
+-----------------+-------------+------+-----+---------+-------+
5 rows in set (0.00 sec)

mysql> create table feedback1(feedback_id varchar(10) not null primary key,student_ID varchar(10) not null,date datetime not null,Instructor_Name varchar(20) not null,feedback varchar(50) not null,foreign key(student_ID) references student(student_ID));
Query OK, 0 rows affected (0.11 sec)

mysql> desc feedback1;
+-----------------+-------------+------+-----+---------+-------+
| Field           | Type        | Null | Key | Default | Extra |
+-----------------+-------------+------+-----+---------+-------+
| feedback_id     | varchar(10) | NO   | PRI | NULL    |       |
| student_ID      | varchar(10) | NO   | MUL | NULL    |       |
| date            | datetime    | NO   |     | NULL    |       |
| Instructor_Name | varchar(20) | NO   |     | NULL    |       |
| feedback        | varchar(50) | NO   |     | NULL    |       |
+-----------------+-------------+------+-----+---------+-------+
5 rows in set (0.00 sec)

mysql> insert into feedback values('f101','s101','2026-05-03','dipika mittapelli','The session was good');
Query OK, 1 row affected (0.04 sec)

mysql> insert into feedback values('f102','s102','2026-05-02','lavanya gajjula','The session was informative');
Query OK, 1 row affected (0.04 sec)

mysql> insert into feedback values('f103','s103','2026-05-04','srilaxmi gajjula','I learned new things');
Query OK, 1 row affected (0.04 sec)

mysql> insert into feedback values('f104','s104','2026-05-05','koduri manashwini','The explanation was clear');
Query OK, 1 row affected (0.04 sec)

mysql> insert into feedback values('f105','s105','2026-05-08','srinivas mittapelli','The explanation was clear and understable');
Query OK, 1 row affected (0.04 sec)

mysql> select*from feedback
    -> ;
+-------------+------------+---------------------+---------------------+-------------------------------------------+
| feedback_id | student_ID | date                | Instructor_Name     | feedback                                  |
+-------------+------------+---------------------+---------------------+-------------------------------------------+
| f101        | s101       | 2026-05-03 00:00:00 | dipika mittapelli   | The session was good                      |
| f102        | s102       | 2026-05-02 00:00:00 | lavanya gajjula     | The session was informative               |
| f103        | s103       | 2026-05-04 00:00:00 | srilaxmi gajjula    | I learned new things                      |
| f104        | s104       | 2026-05-05 00:00:00 | koduri manashwini   | The explanation was clear                 |
| f105        | s105       | 2026-05-08 00:00:00 | srinivas mittapelli | The explanation was clear and understable |
+-------------+------------+---------------------+---------------------+-------------------------------------------+
5 rows in set (0.00 sec)
