mysql> show databases;
+--------------------------+
| Database                 |
+--------------------------+
| information_schema       |
| mysql                    |
| performance_schema       |
| studentmanagementsystem  |
| studentmanagementsystem2 |
| studentmanagementsystem3 |
| sys                      |
+--------------------------+
7 rows in set (0.05 sec)

mysql> create database ecommerces
    -> ;
Query OK, 1 row affected (0.04 sec)

mysql> use ecommerces;
Database changed
mysql> create tablr employee(emp_id int(10) not null primary key,emp_name varchar(50) not null,salary double not null);
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'tablr employee(emp_id int(10) not null primary key,emp_name varchar(50) not null' at line 1
mysql> create table employee(emp_id int(10) not null primary key,emp_name varchar(50) not null,salary double not null);
Query OK, 0 rows affected, 1 warning (0.08 sec)

mysql> insert into employee values(01,'deepika',50000);
Query OK, 1 row affected (0.04 sec)

mysql> insert into employee values(02,'deepu',60000);
Query OK, 1 row affected (0.04 sec)

mysql> insert into employee values(03,'dipika',70000);
Query OK, 1 row affected (0.04 sec)

mysql> insert into employee values(04,'laya',80000);
Query OK, 1 row affected (0.04 sec)

mysql> insert into employee values(05,'chitti',90000);
Query OK, 1 row affected (0.01 sec)

mysql> update employee set salary=50000 where emp_id=5;
Query OK, 1 row affected (0.04 sec)
Rows matched: 1  Changed: 1  Warnings: 0

mysql> select*from employee;
+--------+----------+--------+
| emp_id | emp_name | salary |
+--------+----------+--------+
|      1 | deepika  |  50000 |
|      2 | deepu    |  60000 |
|      3 | dipika   |  70000 |
|      4 | laya     |  80000 |
|      5 | chitti   |  50000 |
+--------+----------+--------+
5 rows in set (0.03 sec)

mysql> update employee set emp_name='lavanya' where emp_id=04
    -> update employee set emp_name='lavanya' where emp_id=04
    -> ;
mysql> update employee set emp_name='lavanya' where emp_id=04;
Query OK, 1 row affected (0.04 sec)
Rows matched: 1  Changed: 1  Warnings: 0

mysql> select*from employee;
+--------+----------+--------+
| emp_id | emp_name | salary |
+--------+----------+--------+
|      1 | deepika  |  50000 |
|      2 | deepu    |  60000 |
|      3 | dipika   |  70000 |
|      4 | lavanya  |  80000 |
|      5 | chitti   |  50000 |
+--------+----------+--------+
5 rows in set (0.00 sec)

mysql> delete from employee where emp_id=3;
Query OK, 1 row affected (0.01 sec)

mysql> select*from employee;
+--------+----------+--------+
| emp_id | emp_name | salary |
+--------+----------+--------+
|      1 | deepika  |  50000 |
|      2 | deepu    |  60000 |
|      4 | lavanya  |  80000 |
|      5 | chitti   |  50000 |
+--------+----------+--------+
4 rows in set (0.00 sec)

mysql> delete from employee;
Query OK, 4 rows affected (0.04 sec)

mysql> select*from employee;
Empty set (0.00 sec)

mysql> truncate table employee;
Query OK, 0 rows affected (0.10 sec)

mysql> select*from employee;
Empty set (0.00 sec)

mysql> insert into employee values(01,'deepika',50000);
Query OK, 1 row affected (0.04 sec)

mysql> insert into employee values(02,'deepu',60000);
Query OK, 1 row affected (0.04 sec)

mysql> insert into employee values(03,'dipika',70000);
Query OK, 1 row affected (0.04 sec)

mysql> insert into employee values(04,'laya',80000);
Query OK, 1 row affected (0.04 sec)

mysql> insert into employee values(05,'chitti',90000);
Query OK, 1 row affected (0.04 sec)

mysql> truncate table employee;
Query OK, 0 rows affected (0.04 sec)

mysql> select*from employee;
Empty set (0.00 sec)

mysql> drop table employee;
Query OK, 0 rows affected (0.06 sec)

mysql> 

mysql> select*from employee;
ERROR 1146 (42S02): Table 'ecommerces.employee' doesn't exist
mysql> create table employee(emp_id int(10) not null primary key,emp_name varchar(50) not null,salary double not null);
Query OK, 0 rows affected, 1 warning (0.07 sec)

mysql> insert into employee values(01,'deepika',50000);
Query OK, 1 row affected (0.04 sec)

mysql> insert into employee values(02,'deepu',60000);
Query OK, 1 row affected (0.04 sec)

mysql> insert into employee values(03,'dipika',70000);
Query OK, 1 row affected (0.01 sec)

mysql> insert into employee values(04,'laya',80000);
Query OK, 1 row affected (0.04 sec)

mysql> insert into employee values(05,'chitti',90000);
Query OK, 1 row affected (0.04 sec)

mysql> select*from employee;
+--------+----------+--------+
| emp_id | emp_name | salary |
+--------+----------+--------+
|      1 | deepika  |  50000 |
|      2 | deepu    |  60000 |
|      3 | dipika   |  70000 |
|      4 | laya     |  80000 |
|      5 | chitti   |  90000 |
+--------+----------+--------+
5 rows in set (0.00 sec)

mysql> alter table employee add phone int(20) not null;
Query OK, 0 rows affected, 1 warning (0.07 sec)
Records: 0  Duplicates: 0  Warnings: 1

mysql> desc  employee;
+----------+-------------+------+-----+---------+-------+
| Field    | Type        | Null | Key | Default | Extra |
+----------+-------------+------+-----+---------+-------+
| emp_id   | int         | NO   | PRI | NULL    |       |
| emp_name | varchar(50) | NO   |     | NULL    |       |
| salary   | double      | NO   |     | NULL    |       |
| phone    | int         | NO   |     | NULL    |       |
+----------+-------------+------+-----+---------+-------+
4 rows in set (0.00 sec)

mysql> alter table employee modify emp_name varchar(100)not null;
Query OK, 5 rows affected (0.10 sec)
Records: 5  Duplicates: 0  Warnings: 0

mysql> desc  employee;
+----------+--------------+------+-----+---------+-------+
| Field    | Type         | Null | Key | Default | Extra |
+----------+--------------+------+-----+---------+-------+
| emp_id   | int          | NO   | PRI | NULL    |       |
| emp_name | varchar(100) | NO   |     | NULL    |       |
| salary   | double       | NO   |     | NULL    |       |
| phone    | int          | NO   |     | NULL    |       |
+----------+--------------+------+-----+---------+-------+
4 rows in set (0.00 sec)

mysql> alter table employee drop phone ;
Query OK, 0 rows affected (0.07 sec)
Records: 0  Duplicates: 0  Warnings: 0

mysql> desc  employee;
+----------+--------------+------+-----+---------+-------+
| Field    | Type         | Null | Key | Default | Extra |
+----------+--------------+------+-----+---------+-------+
| emp_id   | int          | NO   | PRI | NULL    |       |
| emp_name | varchar(100) | NO   |     | NULL    |       |
| salary   | double       | NO   |     | NULL    |       |
+----------+--------------+------+-----+---------+-------+
3 rows in set (0.00 sec)

mysql> alter table employee rename column emp_name to name ;
Query OK, 0 rows affected (0.06 sec)
Records: 0  Duplicates: 0  Warnings: 0

mysql> desc  employee;
+--------+--------------+------+-----+---------+-------+
| Field  | Type         | Null | Key | Default | Extra |
+--------+--------------+------+-----+---------+-------+
| emp_id | int          | NO   | PRI | NULL    |       |
| name   | varchar(100) | NO   |     | NULL    |       |
| salary | double       | NO   |     | NULL    |       |
+--------+--------------+------+-----+---------+-------+
3 rows in set (0.00 sec)

mysql> alter table employee drop primary key;
Query OK, 5 rows affected (0.12 sec)
Records: 5  Duplicates: 0  Warnings: 0

mysql> alter table employee add constraint primary key(emp_id);
Query OK, 0 rows affected (0.17 sec)
Records: 0  Duplicates: 0  Warnings: 0

mysql> desc  employee;
+--------+--------------+------+-----+---------+-------+
| Field  | Type         | Null | Key | Default | Extra |
+--------+--------------+------+-----+---------+-------+
| emp_id | int          | NO   | PRI | NULL    |       |
| name   | varchar(100) | NO   |     | NULL    |       |
| salary | double       | NO   |     | NULL    |       |
+--------+--------------+------+-----+---------+-------+
3 rows in set (0.00 sec)

mysql>