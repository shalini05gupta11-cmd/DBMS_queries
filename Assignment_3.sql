
MariaDB [SHALINI_615]> USE SHALINI_0615;
Database changed
MariaDB [SHALINI_0615]> SELECT ename, job, sal
    -> FROM employee
    -> WHERE deptno = 30
    -> ORDER BY sal DESC;
+--------+----------+------+
| ename  | job      | sal  |
+--------+----------+------+
| BLAKE  | MANAGER  | 2850 |
| ALLEN  | SALESMAN | 1600 |
| TURNER | SALESMAN | 1500 |
| WARD   | SALESMAN | 1250 |
| MARTIN | SALESMAN | 1250 |
| JAMES  | CLERK    |  950 |
+--------+----------+------+
6 rows in set (0.005 sec)

MariaDB [SHALINI_0615]> SELECT job, deptno
    -> FROM employee
    -> WHERE ename LIKE 'A___N';
+----------+--------+
| job      | deptno |
+----------+--------+
| SALESMAN |     30 |
+----------+--------+
1 row in set (0.001 sec)

MariaDB [SHALINI_0615]> SELECT ename
    -> FROM employee
    -> WHERE ename LIKE '%S';
+-------+
| ename |
+-------+
| JONES |
| ADAMS |
| JAMES |
+-------+
3 rows in set (0.001 sec)

MariaDB [SHALINI_0615]> SELECT ename
    -> FROM employee
    -> WHERE ename LIKE 'S%';
+-------+
| ename |
+-------+
| SMITH |
| SCOTT |
+-------+
2 rows in set (0.001 sec)

MariaDB [SHALINI_0615]> SELECT ename
    -> FROM employee
    -> WHERE deptno IN (10,20,40)
    ->    OR job IN ('CLERK','SALESMAN','ANALYST');
+--------+
| ename  |
+--------+
| SMITH  |
| ALLEN  |
| WARD   |
| JONES  |
| MARTIN |
| CLARK  |
| SCOTT  |
| KING   |
| TURNER |
| ADAMS  |
| JAMES  |
| FORD   |
| MILLER |
+--------+
13 rows in set (0.002 sec)

MariaDB [SHALINI_0615]> SELECT empno, ename
    -> FROM employee
    -> WHERE comm IS NOT NULL
    -> AND comm > 0;
+-------+--------+
| empno | ename  |
+-------+--------+
|  7499 | ALLEN  |
|  7521 | WARD   |
|  7654 | MARTIN |
+-------+--------+
3 rows in set (0.001 sec)

MariaDB [SHALINI_0615]> SELECT empno,
    ->        sal + IFNULL(comm,0) AS total_salary
    -> FROM employee;
+-------+--------------+
| empno | total_salary |
+-------+--------------+
|  7369 |          800 |
|  7499 |         1900 |
|  7521 |         1550 |
|  7566 |         2975 |
|  7654 |         2650 |
|  7698 |         2850 |
|  7782 |         2450 |
|  7788 |         3000 |
|  7839 |         5000 |
|  7844 |         1500 |
|  7876 |         1100 |
|  7900 |          950 |
|  7902 |         3000 |
|  7934 |         1300 |
+-------+--------------+
14 rows in set (0.002 sec)

MariaDB [SHALINI_0615]> SELECT empno,
    ->        sal * 12 AS annual_salary
    -> FROM employee;
+-------+---------------+
| empno | annual_salary |
+-------+---------------+
|  7369 |          9600 |
|  7499 |         19200 |
|  7521 |         15000 |
|  7566 |         35700 |
|  7654 |         15000 |
|  7698 |         34200 |
|  7782 |         29400 |
|  7788 |         36000 |
|  7839 |         60000 |
|  7844 |         18000 |
|  7876 |         13200 |
|  7900 |         11400 |
|  7902 |         36000 |
|  7934 |         15600 |
+-------+---------------+
14 rows in set (0.001 sec)

MariaDB [SHALINI_0615]> SELECT ename
    -> FROM employee
    -> WHERE job = 'CLERK'
    -> AND sal > 3000;
Empty set (0.001 sec)

MariaDB [SHALINI_0615]> SELECT ename
    -> FROM employee
    -> WHERE job = 'CLERK'
    -> AND sal > 3000;
Empty set (0.002 sec)