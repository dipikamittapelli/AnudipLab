mysql> show databases;
+--------------------------+
| Database                 |
+--------------------------+
| bankaccount              |
| ecommerces               |
| information_schema       |
| mysql                    |
| performance_schema       |
| student                  |
| studentmanagementsystem  |
| studentmanagementsystem1 |
| studentmanagementsystem2 |
| studentmanagementsystem3 |
| sys                      |
+--------------------------+
11 rows in set (0.01 sec)

mysql> use ecommerces;
Database changed
mysql> show tables;
+----------------------+
| Tables_in_ecommerces |
+----------------------+
| bankacccount         |
| bankaccount          |
| bankaccountt         |
| customer1            |
| customer_detail1     |
| customer_details     |
| customer_detailss    |
| customers            |
| emp_details          |
| employee             |
| orders               |
+----------------------+
11 rows in set (0.00 sec)

mysql> select*from employee;
+--------+---------+--------+
| emp_id | name    | salary |
+--------+---------+--------+
|      1 | deepika |  50000 |
|      2 | deepu   |  60000 |
|      3 | dipika  |  70000 |
|      4 | laya    |  80000 |
|      5 | chitti  |  90000 |
+--------+---------+--------+
5 rows in set (0.00 sec)

mysql> select*from employee where salary > 70000;
+--------+--------+--------+
| emp_id | name   | salary |
+--------+--------+--------+
|      4 | laya   |  80000 |
|      5 | chitti |  90000 |
+--------+--------+--------+
2 rows in set (0.00 sec)

mysql> select *from employee order by salary desc;
+--------+---------+--------+
| emp_id | name    | salary |
+--------+---------+--------+
|      5 | chitti  |  90000 |
|      4 | laya    |  80000 |
|      3 | dipika  |  70000 |
|      2 | deepu   |  60000 |
|      1 | deepika |  50000 |
+--------+---------+--------+
5 rows in set (0.00 sec)

mysql> select *from employee order by salary ;
+--------+---------+--------+
| emp_id | name    | salary |
+--------+---------+--------+
|      1 | deepika |  50000 |
|      2 | deepu   |  60000 |
|      3 | dipika  |  70000 |
|      4 | laya    |  80000 |
|      5 | chitti  |  90000 |
+--------+---------+--------+
5 rows in set (0.00 sec)

mysql> create table orderss(order_id int primary key not null,department  varchar(50) not null,amount double not null);
Query OK, 0 rows affected (0.04 sec)

mysql> insert into orders values(1,'sales',1000);
Query OK, 1 row affected (0.01 sec)

mysql> insert into orders values(2,'sales',2500);
Query OK, 1 row affected (0.01 sec)

mysql> insert into orders values(3,'HR',800);
Query OK, 1 row affected (0.01 sec)

mysql>
mysql> select*from orders;
+----------+------------+--------+
| order_id | department | amount |
+----------+------------+--------+
|        1 | sales      |   1000 |
|        2 | sales      |   2500 |
|        3 | HR         |    800 |
|      101 | sales      |   1500 |
|      102 | sales      |   2500 |
|      103 | HR         |   3000 |
+----------+------------+--------+
6 rows in set (0.00 sec)

mysql> insert into orderss values(1,'sales',1000);
Query OK, 1 row affected (0.01 sec)

mysql> insert into orderss values(2,'sales',2500);
Query OK, 1 row affected (0.01 sec)

mysql> insert into orderss values(3,'HR',800);
Query OK, 1 row affected (0.01 sec)

mysql> select*from orderss;
+----------+------------+--------+
| order_id | department | amount |
+----------+------------+--------+
|        1 | sales      |   1000 |
|        2 | sales      |   2500 |
|        3 | HR         |    800 |
+----------+------------+--------+
3 rows in set (0.00 sec)

mysql> select department,sum(amount) as total_amount from orderss group by department;
+------------+--------------+
| department | total_amount |
+------------+--------------+
| sales      |         3500 |
| HR         |          800 |
+------------+--------------+
2 rows in set (0.00 sec)

mysql> select department,avg(amount) as total_amount from orderss group by department;
+------------+--------------+
| department | total_amount |
+------------+--------------+
| sales      |         1750 |
| HR         |          800 |
+------------+--------------+
2 rows in set (0.00 sec)

mysql> select department,sum(amount) as total_amount from orderss group by department having sum(amount)>1000;
+------------+--------------+
| department | total_amount |
+------------+--------------+
| sales      |         3500 |
+------------+--------------+
1 row in set (0.00 sec)


mysql> create table emp_detailss(emp_id int not null,name varchar(50) not null,department varchar(50) not null,salary double not null);
Query OK, 0 rows affected (0.03 sec)

mysql> insert into emp_detailss values(101,'riya','HR',5000);
Query OK, 1 row affected (0.01 sec)

mysql> insert into emp_detailss values(102,'pavani','IT',6000);
Query OK, 1 row affected (0.01 sec)

mysql> insert into emp_detailss values(103,'deepika','IT',8000);
Query OK, 1 row affected (0.01 sec)

mysql> insert into emp_detailss values(104,'laya','finance',7000);
Query OK, 1 row affected (0.01 sec)

mysql> insert into emp_detailss values(105,'chitti','HR',9000);
Query OK, 1 row affected (0.01 sec)

mysql> select*from emp_detailss;
+--------+---------+------------+--------+
| emp_id | name    | department | salary |
+--------+---------+------------+--------+
|    101 | riya    | HR         |   5000 |
|    102 | pavani  | IT         |   6000 |
|    103 | deepika | IT         |   8000 |
|    104 | laya    | finance    |   7000 |
|    105 | chitti  | HR         |   9000 |
+--------+---------+------------+--------+
5 rows in set (0.00 sec)


mysql> select department,count(*) as total_employee from emp_detailss group by department;
+------------+----------------+
| department | total_employee |
+------------+----------------+
| HR         |              2 |
| IT         |              2 |
| finance    |              1 |
+------------+----------------+
3 rows in set (0.00 sec)

mysql> select department,sum(salary) as total_amount from emp_detailss group by department ;
+------------+--------------+
| department | total_amount |
+------------+--------------+
| HR         |        14000 |
| IT         |        14000 |
| finance    |         7000 |
+------------+--------------+
3 rows in set (0.00 sec)

mysql> select department,avg(salary) as total_amount from emp_detailss group by department ;
+------------+--------------+
| department | total_amount |
+------------+--------------+
| HR         |         7000 |
| IT         |         7000 |
| finance    |         7000 |
+------------+--------------+
3 rows in set (0.00 sec)

mysql> select department,salary,count(*)from emp_details group by department,salary;
Empty set (0.03 sec)


mysql> select department, salary, count(*) from emp_detailss group by department,salary;
+------------+--------+----------+
| department | salary | count(*) |
+------------+--------+----------+
| HR         |   5000 |        1 |
| IT         |   6000 |        1 |
| IT         |   8000 |        1 |
| finance    |   7000 |        1 |
| HR         |   9000 |        1 |
+------------+--------+----------+
5 rows in set (0.00 sec)


mysql> select department,count(*) as total from emp_detailss group by department having count(*)>1;
+------------+-------+
| department | total |
+------------+-------+
| HR         |     2 |
| IT         |     2 |
+------------+-------+
2 rows in set (0.00 sec)

mysql> select department,count(*) as total from emp_detailss group by department having count(*)>=1;
+------------+-------+
| department | total |
+------------+-------+
| HR         |     2 |
| IT         |     2 |
| finance    |     1 |
+------------+-------+
3 rows in set (0.00 sec)



mysql> select department,count(*)from emp_detailss group by department having count(*)>1;
+------------+----------+
| department | count(*) |
+------------+----------+
| HR         |        2 |
| IT         |        2 |
+------------+----------+
2 rows in set (0.00 sec)