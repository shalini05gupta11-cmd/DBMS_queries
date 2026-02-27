
MariaDB [shalini_0615]> SELECT DISTINCT JOB
    -> FROM EMPLOYEE;
+-----------+
| JOB       |
+-----------+
| CLERK     |
| SALESMAN  |
| MANAGER   |
| ANALYST   |
| PRESIDENT |
+-----------+
5 rows in set (0.003 sec)

MariaDB [shalini_0615]> SELECT *
    -> FROM EMPLOYEE
    -> WHERE SAL BETWEEN 1200 AND 1400;
+-------+--------+----------+------+------------+------+------+--------+
| empno | ename  | job      | mgr  | hiredate   | sal  | comm | deptno |
+-------+--------+----------+------+------------+------+------+--------+
|  7521 | WARD   | SALESMAN | 7698 | 1981-02-22 | 1250 |  300 |     30 |
|  7654 | MARTIN | SALESMAN | 7698 | 1981-09-28 | 1250 | 1400 |     30 |
|  7934 | MILLER | CLERK    | 7782 | 1982-01-23 | 1300 | NULL |     10 |
+-------+--------+----------+------+------------+------+------+--------+
3 rows in set (0.002 sec)

MariaDB [shalini_0615]> SELECT ENAME, DEPTNO
    -> FROM EMPLOYEE
    -> WHERE JOB IN ('CLERK', 'ANALYST', 'SALESMAN');
+--------+--------+
| ENAME  | DEPTNO |
+--------+--------+
| SMITH  |     20 |
| ALLEN  |     30 |
| WARD   |     30 |
| MARTIN |     30 |
| SCOTT  |     40 |
| TURNER |     30 |
| ADAMS  |     20 |
| JAMES  |     30 |
| FORD   |     20 |
| MILLER |     10 |
+--------+--------+
10 rows in set (0.001 sec)

MariaDB [shalini_0615]> SELECT ENAME, DEPTNO
    -> FROM EMPLOYEE
    -> WHERE ENAME LIKE 'M%';
+--------+--------+
| ENAME  | DEPTNO |
+--------+--------+
| MARTIN |     30 |
| MILLER |     10 |
+--------+--------+
2 rows in set (0.002 sec)

MariaDB [shalini_0615]> SELECT EMPNO, ENAME, DEPTNO
    -> FROM EMPLOYEE
    -> WHERE JOB = 'CLERK';
+-------+--------+--------+
| EMPNO | ENAME  | DEPTNO |
+-------+--------+--------+
|  7369 | SMITH  |     20 |
|  7876 | ADAMS  |     20 |
|  7900 | JAMES  |     30 |
|  7934 | MILLER |     10 |
+-------+--------+--------+
4 rows in set (0.001 sec)

MariaDB [shalini_0615]> SELECT *
    -> FROM EMPLOYEE
    -> WHERE JOB = 'MANAGER'
    -> AND DEPTNO <> 30;
+-------+-------+---------+------+------------+------+------+--------+
| empno | ename | job     | mgr  | hiredate   | sal  | comm | deptno |
+-------+-------+---------+------+------------+------+------+--------+
|  7566 | JONES | MANAGER | 7839 | 1981-04-02 | 2975 | NULL |     20 |
|  7782 | CLARK | MANAGER | 7839 | 1981-06-09 | 2450 | NULL |     20 |
+-------+-------+---------+------+------------+------+------+--------+
2 rows in set (0.003 sec)

MariaDB [shalini_0615]> SELECT *
    -> FROM EMPLOYEE
    -> WHERE DEPTNO = 10
    -> AND JOB NOT IN ('MANAGER', 'CLERK');
Empty set (0.002 sec)

MariaDB [shalini_0615]> SELECT *
    -> FROM EMPLOYEE
    -> WHERE DEPTNO = 30;
+-------+--------+----------+------+------------+------+------+--------+
| empno | ename  | job      | mgr  | hiredate   | sal  | comm | deptno |
+-------+--------+----------+------+------------+------+------+--------+
|  7499 | ALLEN  | SALESMAN | 7698 | 1981-02-20 | 1600 |  300 |     30 |
|  7521 | WARD   | SALESMAN | 7698 | 1981-02-22 | 1250 |  300 |     30 |
|  7654 | MARTIN | SALESMAN | 7698 | 1981-09-28 | 1250 | 1400 |     30 |
|  7698 | BLAKE  | MANAGER  | 7839 | 1981-05-01 | 2850 | NULL |     30 |
|  7844 | TURNER | SALESMAN | 7698 | 1981-09-08 | 1500 |    0 |     30 |
|  7900 | JAMES  | CLERK    | 7698 | 1981-12-03 |  950 | NULL |     30 |
+-------+--------+----------+------+------------+------+------+--------+
6 rows in set (0.002 sec)

MariaDB [shalini_0615]> SELECT *
    -> FROM DEPARTMENT
    -> WHERE DEPTNO > 20;
+--------+------------+
| deptno | dname      |
+--------+------------+
|     30 | SALES      |
|     40 | OPERATIONS |
+--------+------------+
2 rows in set (0.002 sec)

MariaDB [shalini_0615]> SELECT *
    -> FROM EMPLOYEE
    -> WHERE DEPTNO = 30
    -> AND JOB IN ('MANAGER', 'CLERK');
+-------+-------+---------+------+------------+------+------+--------+
| empno | ename | job     | mgr  | hiredate   | sal  | comm | deptno |
+-------+-------+---------+------+------------+------+------+--------+
|  7698 | BLAKE | MANAGER | 7839 | 1981-05-01 | 2850 | NULL |     30 |
|  7900 | JAMES | CLERK   | 7698 | 1981-12-03 |  950 | NULL |     30 |
+-------+-------+---------+------+------------+------+------+--------+
2 rows in set (0.002 sec)