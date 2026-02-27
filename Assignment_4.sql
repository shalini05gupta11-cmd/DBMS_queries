MariaDB [SHALINI]> USE SHALINI_615;
Database changed
MariaDB [SHALINI_615]> SELECT *
    -> FROM EMPLOYEE
    -> WHERE HIREDATE < '1980-06-30'
    ->    OR HIREDATE > '1981-12-31';
+-------+--------+---------+------+------------+------+------+--------+
| empno | ename  | job     | mgr  | hiredate   | sal  | comm | deptno |
+-------+--------+---------+------+------------+------+------+--------+
|  7788 | SCOTT  | ANALYST | 7566 | 1982-12-09 | 3993 | NULL |     40 |
|  7876 | ADAMS  | CLERK   | 7788 | 1983-01-12 | 1464 | NULL |     20 |
|  7934 | MILLER | CLERK   | 7782 | 1982-01-23 | 1730 | NULL |     10 |
+-------+--------+---------+------+------------+------+------+--------+
3 rows in set (0.014 sec)

MariaDB [SHALINI_615]> SELECT ENAME
    -> FROM EMPLOYEE
    -> WHERE SUBSTRING(ENAME,2,1) = 'A';
+--------+
| ENAME  |
+--------+
| WARD   |
| MARTIN |
| JAMES  |
+--------+
3 rows in set (0.001 sec)

MariaDB [SHALINI_615]> SELECT ENAME
    -> FROM EMPLOYEE
    -> WHERE LENGTH(ENAME) = 5;
+-------+
| ENAME |
+-------+
| SMITH |
| ALLEN |
| JONES |
| BLAKE |
| CLARK |
| SCOTT |
| ADAMS |
| JAMES |
+-------+
8 rows in set (0.001 sec)

MariaDB [SHALINI_615]> SELECT ENAME
    -> FROM EMPLOYEE
    -> WHERE ENAME LIKE '_A%';
+--------+
| ENAME  |
+--------+
| WARD   |
| MARTIN |
| JAMES  |
+--------+
3 rows in set (0.001 sec)

MariaDB [SHALINI_615]> SELECT ENAME
    -> FROM EMPLOYEE
    -> WHERE JOB NOT IN ('CLERK','SALESMAN','ANALYST');
+-------+
| ENAME |
+-------+
| JONES |
| BLAKE |
| CLARK |
| KING  |
+-------+
4 rows in set (0.002 sec)

MariaDB [SHALINI_615]> SELECT ENAME, SAL*12 AS ANNUAL_SAL
    -> FROM EMPLOYEE
    -> ORDER BY SAL DESC;
+--------+------------+
| ENAME  | ANNUAL_SAL |
+--------+------------+
| KING   |      79860 |
| SCOTT  |      47916 |
| FORD   |      47916 |
| JONES  |      47520 |
| BLAKE  |      45528 |
| CLARK  |      39144 |
| MILLER |      20760 |
| TURNER |      19800 |
| ALLEN  |      19200 |
| ADAMS  |      17568 |
| JAMES  |      15180 |
| MARTIN |      15000 |
| WARD   |      15000 |
| SMITH  |      12780 |
+--------+------------+
14 rows in set (0.002 sec)

MariaDB [SHALINI_615]> SELECT
    ->     ENAME,
    ->     SAL,
    ->     SAL*0.15 AS HRA,
    ->     SAL*0.10 AS DA,
    ->     SAL*0.05 AS PF,
    ->     (SAL + (SAL*0.15) + (SAL*0.10) - (SAL*0.05)) AS TOTAL_SAL
    -> FROM EMPLOYEE;
+--------+------+--------+--------+--------+-----------+
| ENAME  | SAL  | HRA    | DA     | PF     | TOTAL_SAL |
+--------+------+--------+--------+--------+-----------+
| SMITH  | 1065 | 159.75 | 106.50 |  53.25 |   1278.00 |
| ALLEN  | 1600 | 240.00 | 160.00 |  80.00 |   1920.00 |
| WARD   | 1250 | 187.50 | 125.00 |  62.50 |   1500.00 |
| JONES  | 3960 | 594.00 | 396.00 | 198.00 |   4752.00 |
| MARTIN | 1250 | 187.50 | 125.00 |  62.50 |   1500.00 |
| BLAKE  | 3794 | 569.10 | 379.40 | 189.70 |   4552.80 |
| CLARK  | 3262 | 489.30 | 326.20 | 163.10 |   3914.40 |
| SCOTT  | 3993 | 598.95 | 399.30 | 199.65 |   4791.60 |
| KING   | 6655 | 998.25 | 665.50 | 332.75 |   7986.00 |
| TURNER | 1650 | 247.50 | 165.00 |  82.50 |   1980.00 |
| ADAMS  | 1464 | 219.60 | 146.40 |  73.20 |   1756.80 |
| JAMES  | 1265 | 189.75 | 126.50 |  63.25 |   1518.00 |
| FORD   | 3993 | 598.95 | 399.30 | 199.65 |   4791.60 |
| MILLER | 1730 | 259.50 | 173.00 |  86.50 |   2076.00 |
+--------+------+--------+--------+--------+-----------+
14 rows in set (0.002 sec)

MariaDB [SHALINI_615]> UPDATE EMPLOYEE
    -> SET SAL = SAL+(SAL*0.10)
    -> WHERE COMM IS NULL OR COMM =0;
Query OK, 11 rows affected (0.011 sec)
Rows matched: 11  Changed: 11  Warnings: 0

MariaDB [SHALINI_615]> SELECT * FROM EMPLOYEE;
+-------+--------+-----------+------+------------+------+------+--------+
| empno | ename  | job       | mgr  | hiredate   | sal  | comm | deptno |
+-------+--------+-----------+------+------------+------+------+--------+
|  7369 | SMITH  | CLERK     | 7902 | 1980-12-17 | 1289 | NULL |     20 |
|  7499 | ALLEN  | SALESMAN  | 7698 | 1981-02-20 | 1600 |  300 |     30 |
|  7521 | WARD   | SALESMAN  | 7698 | 1981-02-22 | 1250 |  300 |     30 |
|  7566 | JONES  | MANAGER   | 7839 | 1981-04-02 | 4792 | NULL |     20 |
|  7654 | MARTIN | SALESMAN  | 7698 | 1981-09-28 | 1250 | 1400 |     30 |
|  7698 | BLAKE  | MANAGER   | 7839 | 1981-05-01 | 4590 | NULL |     30 |
|  7782 | CLARK  | MANAGER   | 7839 | 1981-06-09 | 3947 | NULL |     20 |
|  7788 | SCOTT  | ANALYST   | 7566 | 1982-12-09 | 4831 | NULL |     40 |
|  7839 | KING   | PRESIDENT | NULL | 1981-11-17 | 8053 | NULL |     20 |
|  7844 | TURNER | SALESMAN  | 7698 | 1981-09-08 | 1815 |    0 |     30 |
|  7876 | ADAMS  | CLERK     | 7788 | 1983-01-12 | 1771 | NULL |     20 |
|  7900 | JAMES  | CLERK     | 7698 | 1981-12-03 | 1531 | NULL |     30 |
|  7902 | FORD   | ANALYST   | 7566 | 1981-12-03 | 4831 | NULL |     20 |
|  7934 | MILLER | CLERK     | 7782 | 1982-01-23 | 2093 | NULL |     10 |
+-------+--------+-----------+------+------------+------+------+--------+
14 rows in set (0.002 sec)

MariaDB [SHALINI_615]> SELECT ENAME, SAL, SAL*1.20 AS INCREMENTED_SAL
    -> FROM EMPLOYEE
    -> WHERE SAL*1.20 > 3000;
+-------+------+-----------------+
| ENAME | SAL  | INCREMENTED_SAL |
+-------+------+-----------------+
| JONES | 4792 |         5750.40 |
| BLAKE | 4590 |         5508.00 |
| CLARK | 3947 |         4736.40 |
| SCOTT | 4831 |         5797.20 |
| KING  | 8053 |         9663.60 |
| FORD  | 4831 |         5797.20 |
+-------+------+-----------------+
6 rows in set (0.001 sec)

MariaDB [SHALINI_615]> SELECT ENAME, SAL
    -> FROM EMPLOYEE
    -> WHERE SAL >= 100;
+--------+------+
| ENAME  | SAL  |
+--------+------+
| SMITH  | 1289 |
| ALLEN  | 1600 |
| WARD   | 1250 |
| JONES  | 4792 |
| MARTIN | 1250 |
| BLAKE  | 4590 |
| CLARK  | 3947 |
| SCOTT  | 4831 |
| KING   | 8053 |
| TURNER | 1815 |
| ADAMS  | 1771 |
| JAMES  | 1531 |
| FORD   | 4831 |
| MILLER | 2093 |
+--------+------+
14 rows in set (0.002 sec)