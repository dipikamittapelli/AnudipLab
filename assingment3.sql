show databases;
+--------------------------+
| Database                 |
+--------------------------+
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
9 rows in set (0.04 sec)

mysql> use ecommerces;
Database changed
mysql> show tables;
+----------------------+
| Tables_in_ecommerces |
+----------------------+
| employee             |
+----------------------+
1 row in set (0.06 sec)

mysql> select * from employee;
+--------+---------+--------+
| emp_id | name    | salary |
+--------+---------+--------+
|      1 | deepika |  50000 |
|      2 | deepu   |  60000 |
|      3 | dipika  |  70000 |
|      4 | laya    |  80000 |
|      5 | chitti  |  90000 |
+--------+---------+--------+
5 rows in set (0.03 sec)

mysql> select*from employee limit 3;
+--------+---------+--------+
| emp_id | name    | salary |
+--------+---------+--------+
|      1 | deepika |  50000 |
|      2 | deepu   |  60000 |
|      3 | dipika  |  70000 |
+--------+---------+--------+
3 rows in set (0.00 sec)

mysql> select*from employee order by salary;
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

mysql> select*from employee order by name;
+--------+---------+--------+
| emp_id | name    | salary |
+--------+---------+--------+
|      5 | chitti  |  90000 |
|      1 | deepika |  50000 |
|      2 | deepu   |  60000 |
|      3 | dipika  |  70000 |
|      4 | laya    |  80000 |
+--------+---------+--------+
5 rows in set (0.00 sec)

mysql> select*from employee order by salary desc;
+--------+---------+--------+
| emp_id | name    | salary |
+--------+---------+--------+
|      5 | chitti  |  90000 |
|      4 | laya    |  80000 |
|      3 | dipika  |  70000 |
|      2 | deepu   |  60000 |
|      1 | deepika |  50000 |
+--------+---------+--------+
5 rows in set (0.01 sec)

mysql> select*from employee order by salary desc limit 2;
+--------+--------+--------+
| emp_id | name   | salary |
+--------+--------+--------+
|      5 | chitti |  90000 |
|      4 | laya   |  80000 |
+--------+--------+--------+
2 rows in set (0.04 sec)

mysql> show tables;
+----------------------+
| Tables_in_ecommerces |
+----------------------+
| employee             |
+----------------------+
1 row in set (0.04 sec)

mysql> show databases;
+--------------------------+
| Database                 |
+--------------------------+
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
9 rows in set (0.01 sec)

mysql> use studentmanagementsystem1;
Database changed
mysql> create table custemor(cus_ID varchar(50),name varchar(50),salary int(10));
Query OK, 0 rows affected, 1 warning (0.10 sec)

mysql> show databases;
+--------------------------+
| Database                 |
+--------------------------+
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
9 rows in set (0.03 sec)

mysql> use ecommerces;
Database changed
mysql> create table customers(cus_ID varchar(50),name varchar(50),salary int(10));
Query OK, 0 rows affected, 1 warning (0.04 sec)

mysql> create table customer1(cus_ID varchar(50),name varchar(50),salary int(10));
Query OK, 0 rows affected, 1 warning (0.07 sec)

mysql>
mysql> insert into customer1 values('1','laya',90000);
Query OK, 1 row affected (0.04 sec)

mysql> insert into customer1 values('2','sri',90000);
Query OK, 1 row affected (0.01 sec)

mysql> insert into customer1 values('3','deepu',20000);
Query OK, 1 row affected (0.04 sec)

mysql> insert into customer1 values('4','chitti',10000);
Query OK, 1 row affected (0.04 sec)

mysql> select*from customer1;
+--------+--------+--------+
| cus_ID | name   | salary |
+--------+--------+--------+
| 1      | laya   |  90000 |
| 2      | sri    |  90000 |
| 3      | deepu  |  20000 |
| 4      | chitti |  10000 |
+--------+--------+--------+
4 rows in set (0.00 sec)

mysql> select distinct salary from customer1
    -> ;
+--------+
| salary |
+--------+
|  90000 |
|  20000 |
|  10000 |
+--------+
3 rows in set (0.03 sec)

mysql> select distinct salary from customer1;
+--------+
| salary |
+--------+
|  90000 |
|  20000 |
|  10000 |
+--------+
3 rows in set (0.03 sec)

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

mysql> select*from employee where emp_id between 1 and 4;
+--------+---------+--------+
| emp_id | name    | salary |
+--------+---------+--------+
|      1 | deepika |  50000 |
|      2 | deepu   |  60000 |
|      3 | dipika  |  70000 |
|      4 | laya    |  80000 |
+--------+---------+--------+
4 rows in set (0.03 sec)

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


mysql> create table customer_details(id int(5),name varchar(50),date datetime);
Query OK, 0 rows affected, 1 warning (0.06 sec)

mysql> create table customer_detailss(id int(5),name varchar(50),date datetime);
Query OK, 0 rows affected, 1 warning (0.03 sec)


mysql> insert into customer_detailss values(101,'lavanya','2026-04-03');
Query OK, 1 row affected (0.04 sec)

mysql> insert into customer_detailss values(101,'lavanya','2026-01-04');
Query OK, 1 row affected (0.04 sec)

mysql> insert into customer_detailss values(101,'lavanya','2026-06-04');
Query OK, 1 row affected (0.04 sec)

mysql> select*from customer_detailss;
+------+---------+---------------------+
| id   | name    | date                |
+------+---------+---------------------+
|  101 | lavanya | 2026-04-03 00:00:00 |
|  101 | lavanya | 2026-01-04 00:00:00 |
|  101 | lavanya | 2026-06-04 00:00:00 |
+------+---------+---------------------+
3 rows in set (0.00 sec)

mysql> create table customer_detail1(id int(5),name varchar(50),date datetime);
Query OK, 0 rows affected, 1 warning (0.07 sec)

mysql> insert into customer_detailss values(101,'lavanya','2026-04-03');
Query OK, 1 row affected (0.04 sec)

mysql> insert into customer_detailss values(102,'depika','2026-01-04');
Query OK, 1 row affected (0.04 sec)

mysql> insert into customer_detailss values(103,'chitti','2026-06-04');
Query OK, 1 row affected (0.04 sec)

mysql> select*from customer_detail1;
Empty set (0.00 sec)

mysql> insert into customer_detail1 values(101,'lavanya','2026-04-03');
Query OK, 1 row affected (0.04 sec)


mysql> insert into customer_detail1 values(102,'depika','2026-01-04');
Query OK, 1 row affected (0.04 sec)

mysql> insert into customer_detail1 values(103,'chitti','2026-06-04');
Query OK, 1 row affected (0.04 sec)

mysql> select*from customer_detail1;
+------+---------+---------------------+
| id   | name    | date                |
+------+---------+---------------------+
|  101 | lavanya | 2026-04-03 00:00:00 |
|  102 | depika  | 2026-01-04 00:00:00 |
|  103 | chitti  | 2026-06-04 00:00:00 |
+------+---------+---------------------+
3 rows in set (0.00 sec)

mysql> select *from customer_detail1 where date between '2026-01-01' and '2026-04-01';
+------+--------+---------------------+
| id   | name   | date                |
+------+--------+---------------------+
|  102 | depika | 2026-01-04 00:00:00 |
+------+--------+---------------------+
1 row in set (0.00 sec)

mysql> select *from customer_detail1 where date not between '2026-01-01' and '2026-04-01';
+------+---------+---------------------+
| id   | name    | date                |
+------+---------+---------------------+
|  101 | lavanya | 2026-04-03 00:00:00 |
|  103 | chitti  | 2026-06-04 00:00:00 |
+------+---------+---------------------+
2 rows in set (0.00 sec)

mysql> select*from customer_detail1 where id in(101,103);
+------+---------+---------------------+
| id   | name    | date                |
+------+---------+---------------------+
|  101 | lavanya | 2026-04-03 00:00:00 |
|  103 | chitti  | 2026-06-04 00:00:00 |
+------+---------+---------------------+
2 rows in set (0.00 sec)

mysql> select*from customer_detail1 where id not in(101,103);
+------+--------+---------------------+
| id   | name   | date                |
+------+--------+---------------------+
|  102 | depika | 2026-01-04 00:00:00 |
+------+--------+---------------------+
1 row in set (0.00 sec)

mysql> select*from customer_detail1 where name not null;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'null' at line 1
mysql> select*from customer_detail1 where name is not null;
+------+---------+---------------------+
| id   | name    | date                |
+------+---------+---------------------+
|  101 | lavanya | 2026-04-03 00:00:00 |
|  102 | depika  | 2026-01-04 00:00:00 |
|  103 | chitti  | 2026-06-04 00:00:00 |
+------+---------+---------------------+
3 rows in set (0.00 sec)

mysql> alter table customer_detail1 add payment_mode int(10);
Query OK, 0 rows affected, 1 warning (0.08 sec)
Records: 0  Duplicates: 0  Warnings: 1

mysql> alter table customer_detail1 add address varchar(50);
Query OK, 0 rows affected (0.03 sec)
Records: 0  Duplicates: 0  Warnings: 0

mysql> desc customer_detail1;
+--------------+-------------+------+-----+---------+-------+
| Field        | Type        | Null | Key | Default | Extra |
+--------------+-------------+------+-----+---------+-------+
| id           | int         | YES  |     | NULL    |       |
| name         | varchar(50) | YES  |     | NULL    |       |
| date         | datetime    | YES  |     | NULL    |       |
| payment_mode | int         | YES  |     | NULL    |       |
| address      | varchar(50) | YES  |     | NULL    |       |
+--------------+-------------+------+-----+---------+-------+
5 rows in set (0.03 sec)

mysql> insert into customer_detail1 values(102,'depika','2026-01-04',10000,'bhiwandi');
Query OK, 1 row affected (0.04 sec)

mysql> insert into customer_detail1 values(102,'depika','2026-01-04',20000,'bhiwandi');
Query OK, 1 row affected (0.04 sec)

mysql> insert into customer_detail1 values(103,'chitti','2026-06-04',20000,'thane');
Query OK, 1 row affected (0.04 sec)

mysql> insert into customer_detail1 values(104,'maya','2026-06-05',15000,'diva');
Query OK, 1 row affected (0.01 sec)

mysql> select*from customer_detail1 where payment_mode=20000 and address='bhiwandi';
+------+--------+---------------------+--------------+----------+
| id   | name   | date                | payment_mode | address  |
+------+--------+---------------------+--------------+----------+
|  102 | depika | 2026-01-04 00:00:00 |        20000 | bhiwandi |
+------+--------+---------------------+--------------+----------+
1 row in set (0.03 sec)

mysql> select*from customer_detail1 where payment_mode=20000 or address='bhiwandi';
+------+--------+---------------------+--------------+----------+
| id   | name   | date                | payment_mode | address  |
+------+--------+---------------------+--------------+----------+
|  102 | depika | 2026-01-04 00:00:00 |        10000 | bhiwandi |
|  102 | depika | 2026-01-04 00:00:00 |        20000 | bhiwandi |
|  103 | chitti | 2026-06-04 00:00:00 |        20000 | thane    |
+------+--------+---------------------+--------------+----------+
3 rows in set (0.00 sec)

mysql>