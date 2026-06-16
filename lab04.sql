/*
Create database Studentmanagementsystem contain  "Student" table with the following a columns:StudentId,FirstName,lastName and "Course" table with the following a columns: CourseId,CourseName  and Enrollment table with the following a columns:EnrollmentID,StudentID(Foreign key),CourseID(Foreign Key).

You want to use inner join to generate a list of all possible student-course combinations.
*/


mysql> show databases;
+--------------------------+
| Database                 |
+--------------------------+
| bankaccount              |
| ecommerces               |
| information_schema       |
| joins                    |
| mysql                    |
| performance_schema       |
| storeprocedure           |
| student                  |
| studentmanagementsystem  |
| studentmanagementsystem1 |
| studentmanagementsystem2 |
| studentmanagementsystem3 |
| sys                      |
+--------------------------+
13 rows in set (0.04 sec)

mysql> use StudentManagementSystem;
Database changed

mysql> create table students(student_id int primary key not null,FirstName varchar(50) not null,LastName varchar(50) not null);
Query OK, 0 rows affected (0.12 sec)

mysql> create table course(course_id int primary key not null,courseName varchar(100) not null);
Query OK, 0 rows affected (0.07 sec)


mysql> create table enrollment(enrollment_id int primary key ,student_id int,course_id int,foreign key(student_id)references students(student_id),foreign key(course_id)references course(course_id));
Query OK, 0 rows affected (0.13 sec)

mysql> desc students;
+------------+-------------+------+-----+---------+-------+
| Field      | Type        | Null | Key | Default | Extra |
+------------+-------------+------+-----+---------+-------+
| student_id | int         | NO   | PRI | NULL    |       |
| FirstName  | varchar(50) | NO   |     | NULL    |       |
| LastName   | varchar(50) | NO   |     | NULL    |       |
+------------+-------------+------+-----+---------+-------+
3 rows in set (0.05 sec)

mysql> desc course;
+------------+--------------+------+-----+---------+-------+
| Field      | Type         | Null | Key | Default | Extra |
+------------+--------------+------+-----+---------+-------+
| course_id  | int          | NO   | PRI | NULL    |       |
| courseName | varchar(100) | NO   |     | NULL    |       |
+------------+--------------+------+-----+---------+-------+
2 rows in set (0.00 sec)

mysql> desc enrollment;
+---------------+------+------+-----+---------+-------+
| Field         | Type | Null | Key | Default | Extra |
+---------------+------+------+-----+---------+-------+
| enrollment_id | int  | NO   | PRI | NULL    |       |
| student_id    | int  | YES  | MUL | NULL    |       |
| course_id     | int  | YES  | MUL | NULL    |       |
+---------------+------+------+-----+---------+-------+
3 rows in set (0.03 sec)


mysql> insert into students values(1,'deepika','mittapelli');
Query OK, 1 row affected (0.04 sec)

mysql> insert into students values(2,'laya','gajula');
Query OK, 1 row affected (0.04 sec)

mysql> insert into students values(3,'chitti','koduri');
Query OK, 1 row affected (0.04 sec)

mysql> insert into  course values(101,'database management');
Query OK, 1 row affected (0.04 sec)

mysql> insert into  course values(102,'web development');
Query OK, 1 row affected (0.04 sec)

mysql> insert into  course values(103,'data structures');
Query OK, 1 row affected (0.04 sec)

mysql> select*from students;
+------------+-----------+------------+
| student_id | FirstName | LastName   |
+------------+-----------+------------+
|          1 | deepika   | mittapelli |
|          2 | laya      | gajula     |
|          3 | chitti    | koduri     |
+------------+-----------+------------+
3 rows in set (0.00 sec)

mysql> select*from course;
+-----------+---------------------+
| course_id | courseName          |
+-----------+---------------------+
|       101 | database management |
|       102 | web development     |
|       103 | data structures     |
+-----------+---------------------+
3 rows in set (0.03 sec)

mysql> insert into enrollment values(1,1,101);
Query OK, 1 row affected (0.23 sec)

mysql> insert into enrollment values(2,1,102);
Query OK, 1 row affected (0.01 sec)

mysql> insert into enrollment values(3,2,103);
Query OK, 1 row affected (0.01 sec)

mysql> insert into enrollment values(4,3,101);
Query OK, 1 row affected (0.04 sec)

mysql> select*from enrollment;
+---------------+------------+-----------+
| enrollment_id | student_id | course_id |
+---------------+------------+-----------+
|             1 |          1 |       101 |
|             2 |          1 |       102 |
|             3 |          2 |       103 |
|             4 |          3 |       101 |
+---------------+------------+-----------+
4 rows in set (0.00 sec)

mysql> select students.student_id,students.FirstName,students.LastName,course.course_id,courseName from enrollment inner join students on enrollment.student_id=students.student_id inner join course on enrollment.course_id=course.course_id;
+------------+-----------+------------+-----------+---------------------+
| student_id | FirstName | LastName   | course_id | courseName          |
+------------+-----------+------------+-----------+---------------------+
|          1 | deepika   | mittapelli |       101 | database management |
|          1 | deepika   | mittapelli |       102 | web development     |
|          2 | laya      | gajula     |       103 | data structures     |
|          3 | chitti    | koduri     |       101 | database management |
+------------+-----------+------------+-----------+---------------------+
4 rows in set (0.00 sec)

mysql>