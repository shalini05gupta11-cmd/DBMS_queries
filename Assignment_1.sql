
MariaDB [SHALINI_0615]> SHOW DATABASES;
+--------------------+
| Database           |
+--------------------+
| company_db         |
| experiment1        |
| iilm               |
| information_schema |
| mysql              |
| performance_schema |
| phpmyadmin         |
| shalini            |
| shalini_0615       |
| shalini_241        |
| shalini_615        |
| test               |
+--------------------+
12 rows in set (0.008 sec)


MariaDB [shalini_0615]> CREATE TABLE department (
    ->     deptno INT PRIMARY KEY,
    ->     dname  VARCHAR(15) NOT NULL
    -> );
Query OK, 0 rows affected (0.040 sec)

MariaDB [shalini_0615]> SHOW TABLES;
+------------------------+
| Tables_in_shalini_0615 |
+------------------------+
| department             |
+------------------------+
1 row in set (0.003 sec)

MariaDB [shalini_0615]> CREATE TABLE employee (
    ->     empno    INT PRIMARY KEY,
    ->     ename    VARCHAR(20) NOT NULL,
    ->     job      VARCHAR(20),
    ->     mgr      INT,
    ->     hiredate DATE,
    ->     sal      INT,
    ->     comm     INT,
    ->     deptno   INT,
    ->     CONSTRAINT fk_dept
    ->         FOREIGN KEY (deptno)
    ->         REFERENCES department(deptno)
    -> );
Query OK, 0 rows affected (0.148 sec)

MariaDB [shalini_0615]> SHOW TABLES;
+------------------------+
| Tables_in_shalini_0615 |
+------------------------+
| department             |
| employee               |
+------------------------+
2 rows in set (0.003 sec)

MariaDB [shalini_0615]> DESC DEPARTMENT;
+--------+-------------+------+-----+---------+-------+
| Field  | Type        | Null | Key | Default | Extra |
+--------+-------------+------+-----+---------+-------+
| deptno | int(11)     | NO   | PRI | NULL    |       |
| dname  | varchar(15) | NO   |     | NULL    |       |
+--------+-------------+------+-----+---------+-------+
2 rows in set (0.118 sec)

MariaDB [shalini_0615]> DESC EMPLOYEE;
+----------+-------------+------+-----+---------+-------+
| Field    | Type        | Null | Key | Default | Extra |
+----------+-------------+------+-----+---------+-------+
| empno    | int(11)     | NO   | PRI | NULL    |       |
| ename    | varchar(20) | NO   |     | NULL    |       |
| job      | varchar(20) | YES  |     | NULL    |       |
| mgr      | int(11)     | YES  |     | NULL    |       |
| hiredate | date        | YES  |     | NULL    |       |
| sal      | int(11)     | YES  |     | NULL    |       |
| comm     | int(11)     | YES  |     | NULL    |       |
| deptno   | int(11)     | YES  | MUL | NULL    |       |
+----------+-------------+------+-----+---------+-------+
8 rows in set (0.098 sec)

MariaDB [shalini_0615]> INSERT INTO department (deptno, dname) VALUES
    -> (10, 'RESEARCH'),
    -> (20, 'ACCOUNTING'),
    -> (30, 'SALES'),
    -> (40, 'OPERATIONS');
Query OK, 4 rows affected (0.010 sec)
Records: 4  Duplicates: 0  Warnings: 0

MariaDB [shalini_0615]> SELECT * FROM DEPARTMENT;
+--------+------------+
| deptno | dname      |
+--------+------------+
|     10 | RESEARCH   |
|     20 | ACCOUNTING |
|     30 | SALES      |
|     40 | OPERATIONS |
+--------+------------+
4 rows in set (0.002 sec)

MariaDB [shalini_0615]> INSERT INTO employee
    -> (empno, ename, job, mgr, hiredate, sal, comm, deptno)
    -> VALUES
    -> (7369,'SMITH','CLERK',7902,'1980-12-17',800,NULL,20),
    -> (7499,'ALLEN','SALESMAN',7698,'1981-02-20',1600,300,30),
    -> (7521,'WARD','SALESMAN',7698,'1981-02-22',1250,300,30),
    -> (7566,'JONES','MANAGER',7839,'1981-04-02',2975,NULL,20),
    -> (7654,'MARTIN','SALESMAN',7698,'1981-09-28',1250,1400,30),
    -> (7698,'BLAKE','MANAGER',7839,'1981-05-01',2850,NULL,30),
    -> (7782,'CLARK','MANAGER',7839,'1981-06-09',2450,NULL,20),
    -> (7788,'SCOTT','ANALYST',7566,'1982-12-09',3000,NULL,40),
    -> (7839,'KING','PRESIDENT',NULL,'1981-11-17',5000,NULL,20),
    -> (7844,'TURNER','SALESMAN',7698,'1981-09-08',1500,0,30),
    -> (7876,'ADAMS','CLERK',7788,'1983-01-12',1100,NULL,20),
    -> (7900,'JAMES','CLERK',7698,'1981-12-03',950,NULL,30),
    -> (7902,'FORD','ANALYST',7566,'1981-12-03',3000,NULL,20),
    -> (7934,'MILLER','CLERK',7782,'1982-01-23',1300,NULL,10);
Query OK, 14 rows affected (0.062 sec)
Records: 14  Duplicates: 0  Warnings: 0

MariaDB [shalini_0615]> SELECT * FROM EMPLOYEE;
+-------+--------+-----------+------+------------+------+------+--------+
| empno | ename  | job       | mgr  | hiredate   | sal  | comm | deptno |
+-------+--------+-----------+------+------------+------+------+--------+
|  7369 | SMITH  | CLERK     | 7902 | 1980-12-17 |  800 | NULL |     20 |
|  7499 | ALLEN  | SALESMAN  | 7698 | 1981-02-20 | 1600 |  300 |     30 |
|  7521 | WARD   | SALESMAN  | 7698 | 1981-02-22 | 1250 |  300 |     30 |
|  7566 | JONES  | MANAGER   | 7839 | 1981-04-02 | 2975 | NULL |     20 |
|  7654 | MARTIN | SALESMAN  | 7698 | 1981-09-28 | 1250 | 1400 |     30 |
|  7698 | BLAKE  | MANAGER   | 7839 | 1981-05-01 | 2850 | NULL |     30 |
|  7782 | CLARK  | MANAGER   | 7839 | 1981-06-09 | 2450 | NULL |     20 |
|  7788 | SCOTT  | ANALYST   | 7566 | 1982-12-09 | 3000 | NULL |     40 |
|  7839 | KING   | PRESIDENT | NULL | 1981-11-17 | 5000 | NULL |     20 |
|  7844 | TURNER | SALESMAN  | 7698 | 1981-09-08 | 1500 |    0 |     30 |
|  7876 | ADAMS  | CLERK     | 7788 | 1983-01-12 | 1100 | NULL |     20 |
|  7900 | JAMES  | CLERK     | 7698 | 1981-12-03 |  950 | NULL |     30 |
|  7902 | FORD   | ANALYST   | 7566 | 1981-12-03 | 3000 | NULL |     20 |
|  7934 | MILLER | CLERK     | 7782 | 1982-01-23 | 1300 | NULL |     10 |
+-------+--------+-----------+------+------------+------+------+--------+
14 rows in set (0.002 sec)

MariaDB [shalini_0615]> CREATE TABLE employee_master AS
    -> SELECT * FROM employee;
Query OK, 14 rows affected (0.073 sec)
Records: 14  Duplicates: 0  Warnings: 0

MariaDB [shalini_0615]> SHOW TABLES;
+------------------------+
| Tables_in_shalini_0615 |
+------------------------+
| department             |
| employee               |
| employee_master        |
+------------------------+
3 rows in set (0.002 sec)

MariaDB [shalini_0615]> DELETE FROM employee_master
    -> WHERE deptno = 10;
Query OK, 1 row affected (0.010 sec)

MariaDB [shalini_0615]> UPDATE employee_master
    -> SET sal = sal * 1.10
    -> WHERE deptno = 20;
Query OK, 6 rows affected (0.006 sec)
Rows matched: 6  Changed: 6  Warnings: 0

MariaDB [shalini_0615]> ALTER TABLE employee_master
    -> MODIFY sal DECIMAL(10,2);
Query OK, 13 rows affected (0.203 sec)
Records: 13  Duplicates: 0  Warnings: 0

MariaDB [shalini_0615]> DROP TABLE employee_master;
Query OK, 0 rows affected (0.022 sec)