 create database joins;
Query OK, 1 row affected (0.10 sec)

mysql> use joins;
Database changed
mysql> create table department(dep_id int not null primary key,dep_name varchar(50) not null);
Query OK, 0 rows affected (0.13 sec)

mysql> desc department;
+----------+-------------+------+-----+---------+-------+
| Field    | Type        | Null | Key | Default | Extra |
+----------+-------------+------+-----+---------+-------+
| dep_id   | int         | NO   | PRI | NULL    |       |
| dep_name | varchar(50) | NO   |     | NULL    |       |
+----------+-------------+------+-----+---------+-------+
2 rows in set (0.07 sec)

mysql> insert into department values(1,'HR');
Query OK, 1 row affected (0.04 sec)

mysql> insert into department values(2,'IT');
Query OK, 1 row affected (0.04 sec)

mysql> insert into department values(3,'finance');
Query OK, 1 row affected (0.04 sec)

mysql> insert into department values(4,'Marketing');
Query OK, 1 row affected (0.04 sec)

mysql> select*from department;
+--------+-----------+
| dep_id | dep_name  |
+--------+-----------+
|      1 | HR        |
|      2 | IT        |
|      3 | finance   |
|      4 | Marketing |
+--------+-----------+
4 rows in set (0.00 sec)

mysql> create table employee(emp_id int primary key not null,emp_name varchar(50) not null,dep_id int ,foreign key(dep_id)references department(dep_id));
Query OK, 0 rows affected (0.12 sec)

mysql> desc employee;
+----------+-------------+------+-----+---------+-------+
| Field    | Type        | Null | Key | Default | Extra |
+----------+-------------+------+-----+---------+-------+
| emp_id   | int         | NO   | PRI | NULL    |       |
| emp_name | varchar(50) | NO   |     | NULL    |       |
| dep_id   | int         | YES  | MUL | NULL    |       |
+----------+-------------+------+-----+---------+-------+
3 rows in set (0.00 sec)

mysql> insert into employee values(1,'rohan',1);
Query OK, 1 row affected (0.04 sec)

mysql> insert into employee values(2,'mohan',2);
Query OK, 1 row affected (0.04 sec)

mysql> insert into employee values(3,'riya',1);
Query OK, 1 row affected (0.04 sec)

mysql> insert into employee values(4,'miya',NULL);
Query OK, 1 row affected (0.04 sec)

mysql> insert into employee values(5,'priya',4);
Query OK, 1 row affected (0.04 sec)

mysql> select*from employee;
+--------+----------+--------+
| emp_id | emp_name | dep_id |
+--------+----------+--------+
|      1 | rohan    |      1 |
|      2 | mohan    |      2 |
|      3 | riya     |      1 |
|      4 | miya     |   NULL |
|      5 | priya    |      4 |
+--------+----------+--------+
5 rows in set (0.00 sec)

mysql> select*from department;
+--------+-----------+
| dep_id | dep_name  |
+--------+-----------+
|      1 | HR        |
|      2 | IT        |
|      3 | finance   |
|      4 | Marketing |
+--------+-----------+
4 rows in set (0.00 sec)


mysql> select emp_name,dep_name from employee inner join department on employee.dep_id=department.dep_id;
+----------+-----------+
| emp_name | dep_name  |
+----------+-----------+
| rohan    | HR        |
| riya     | HR        |
| mohan    | IT        |
| priya    | Marketing |
+----------+-----------+
4 rows in set (0.00 sec)

mysql> select*from employee;
+--------+----------+--------+
| emp_id | emp_name | dep_id |
+--------+----------+--------+
|      1 | rohan    |      1 |
|      2 | mohan    |      2 |
|      3 | riya     |      1 |
|      4 | miya     |   NULL |
|      5 | priya    |      4 |
+--------+----------+--------+
5 rows in set (0.00 sec)

mysql> select*from department;
+--------+-----------+
| dep_id | dep_name  |
+--------+-----------+
|      1 | HR        |
|      2 | IT        |
|      3 | finance   |
|      4 | Marketing |
+--------+-----------+
4 rows in set (0.00 sec)

mysql> select emp_name,dep_name from employee left join department on employee.dep_id=department.dep_id;
+----------+-----------+
| emp_name | dep_name  |
+----------+-----------+
| rohan    | HR        |
| mohan    | IT        |
| riya     | HR        |
| miya     | NULL      |
| priya    | Marketing |
+----------+-----------+
5 rows in set (0.00 sec)

mysql> select emp_name,dep_name from employee right join department on employee.dep_id=department.dep_id;
+----------+-----------+
| emp_name | dep_name  |
+----------+-----------+
| rohan    | HR        |
| riya     | HR        |
| mohan    | IT        |
| NULL     | finance   |
| priya    | Marketing |
+----------+-----------+
5 rows in set (0.00 sec)

mysql> select emp_name,dep_name from employee cross join department;
+----------+-----------+
| emp_name | dep_name  |
+----------+-----------+
| rohan    | Marketing |
| rohan    | finance   |
| rohan    | IT        |
| rohan    | HR        |
| mohan    | Marketing |
| mohan    | finance   |
| mohan    | IT        |
| mohan    | HR        |
| riya     | Marketing |
| riya     | finance   |
| riya     | IT        |
| riya     | HR        |
| miya     | Marketing |
| miya     | finance   |
| miya     | IT        |
| miya     | HR        |
| priya    | Marketing |
| priya    | finance   |
| priya    | IT        |
| priya    | HR        |
+----------+-----------+
20 rows in set (0.03 sec)