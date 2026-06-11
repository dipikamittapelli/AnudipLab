/*
Task: Let's consider a scenario where you want to retrieve information about students

from a database table named student and display the results in ascending order based on their last names.

Student table contain column (stud_id,FirstName,LastName,Age,Phoneno,Address) add 5 records in tables.

Hint: Use orderBy clause in a ascending Order 
*/

show databases;
+--------------------------+
| Database                 |
+--------------------------+
| bankaccount              |
| ecommerces               |
| information_schema       |
| mysql                    |
| performance_schema       |
| studentmanagementsystem  |
| studentmanagementsystem1 |
| studentmanagementsystem2 |
| studentmanagementsystem3 |
| sys                      |
+--------------------------+
10 rows in set (0.01 sec)

mysql> create database student;
Query OK, 1 row affected (0.04 sec)

mysql> use student;
Database changed
mysql> create table student(stu_id int(10) not null,Firstname varchar(50) not null,Lastname varchar(50) not null,age int(10) not null,phoneno int(20) not null,address varchar(50));
Query OK, 0 rows affected, 3 warnings (0.08 sec)

mysql> desc student;
+-----------+-------------+------+-----+---------+-------+
| Field     | Type        | Null | Key | Default | Extra |
+-----------+-------------+------+-----+---------+-------+
| stu_id    | int         | NO   |     | NULL    |       |
| Firstname | varchar(50) | NO   |     | NULL    |       |
| Lastname  | varchar(50) | NO   |     | NULL    |       |
| age       | int         | NO   |     | NULL    |       |
| phoneno   | int         | NO   |     | NULL    |       |
| address   | varchar(50) | YES  |     | NULL    |       |
+-----------+-------------+------+-----+---------+-------+
6 rows in set (0.00 sec)

mysql> insert into student values(101,'riya','yadav',16,123654792,'pune');
Query OK, 1 row affected (0.01 sec)

mysql> insert into student values(101,'dipika','mittapelli',16,1245698719,'bhiwandi');
Query OK, 1 row affected (0.04 sec)

mysql> insert into student values(102,'bhargav','betti',19,456321789,'kurla');
Query OK, 1 row affected (0.01 sec)

mysql> insert into student values(103,'priya','mistra',21,789632541,'mumbai');
Query OK, 1 row affected (0.04 sec)


mysql> insert into student values(104,'venu','gupta',25,741258963,'thane');
Query OK, 1 row affected (0.04 sec)

mysql> select*from student;
+--------+-----------+------------+-----+------------+----------+
| stu_id | Firstname | Lastname   | age | phoneno    | address  |
+--------+-----------+------------+-----+------------+----------+
|    101 | riya      | yadav      |  16 |  123654792 | pune     |
|    101 | dipika    | mittapelli |  16 | 1245698719 | bhiwandi |
|    102 | bhargav   | betti      |  19 |  456321789 | kurla    |
|    103 | priya     | mistra     |  21 |  789632541 | mumbai   |
|    104 | venu      | gupta      |  25 |  741258963 | thane    |
+--------+-----------+------------+-----+------------+----------+
5 rows in set (0.00 sec)

mysql> select*from student order by Lastname desc;
+--------+-----------+------------+-----+------------+----------+
| stu_id | Firstname | Lastname   | age | phoneno    | address  |
+--------+-----------+------------+-----+------------+----------+
|    101 | riya      | yadav      |  16 |  123654792 | pune     |
|    101 | dipika    | mittapelli |  16 | 1245698719 | bhiwandi |
|    103 | priya     | mistra     |  21 |  789632541 | mumbai   |
|    104 | venu      | gupta      |  25 |  741258963 | thane    |
|    102 | bhargav   | betti      |  19 |  456321789 | kurla    |
+--------+-----------+------------+-----+------------+----------+
5 rows in set (0.03 sec)