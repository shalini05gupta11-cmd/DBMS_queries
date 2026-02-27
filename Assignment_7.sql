
MariaDB [(none)]> SHOW DATABASES;
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
12 rows in set (0.235 sec)

MariaDB [(none)]> USE SHALINI_0615;
Database changed
MariaDB [SHALINI_0615]> SELECT
    ->     DEPTNO,
    ->     SUM(SAL) AS TOTAL_SALARY
    -> FROM EMPLOYEE
    -> GROUP BY DEPTNO;
+--------+--------------+
| DEPTNO | TOTAL_SALARY |
+--------+--------------+
|     10 |         1300 |
|     20 |        15325 |
|     30 |         9400 |
|     40 |         3000 |
+--------+--------------+
4 rows in set (0.194 sec)

MariaDB [SHALINI_0615]> SELECT
    ->     DEPTNO,
    ->     COUNT(*) AS TOTAL_EMPLOYEES
    -> FROM EMPLOYEE
    -> GROUP BY DEPTNO;
+--------+-----------------+
| DEPTNO | TOTAL_EMPLOYEES |
+--------+-----------------+
|     10 |               1 |
|     20 |               6 |
|     30 |               6 |
|     40 |               1 |
+--------+-----------------+
4 rows in set (0.002 sec)

MariaDB [SHALINI_0615]> SELECT
    ->     DATE_SUB(
    ->         LAST_DAY(CURDATE()),
    ->         INTERVAL (DAYOFWEEK(LAST_DAY(CURDATE())) % 7) DAY
    ->     ) AS LAST_SUNDAY;
+-------------+
| LAST_SUNDAY |
+-------------+
| 2026-02-28  |
+-------------+
1 row in set (0.002 sec)

MariaDB [SHALINI_0615]> SELECT
    ->     DATEDIFF(
    ->         STR_TO_DATE(CONCAT(YEAR(CURDATE()), '-12-31'), '%Y-%m-%d'),
    ->         CURDATE()
    ->     ) AS DAYS_REMAINING;
+----------------+
| DAYS_REMAINING |
+----------------+
|            308 |
+----------------+
1 row in set (0.001 sec)

MariaDB [SHALINI_0615]> SELECT
    ->     JOB,
    ->     COUNT(*) AS TOTAL_EMPLOYEES
    -> FROM EMPLOYEE
    -> GROUP BY JOB;
+-----------+-----------------+
| JOB       | TOTAL_EMPLOYEES |
+-----------+-----------------+
| ANALYST   |               2 |
| CLERK     |               4 |
| MANAGER   |               3 |
| PRESIDENT |               1 |
| SALESMAN  |               4 |
+-----------+-----------------+
5 rows in set (0.004 sec)

MariaDB [SHALINI_0615]> SELECT
    ->     JOB,
    ->     SUM(CASE WHEN DEPTNO = 10 THEN SAL ELSE 0 END) AS DEPT_10,
    ->     SUM(CASE WHEN DEPTNO = 20 THEN SAL ELSE 0 END) AS DEPT_20,
    ->     SUM(CASE WHEN DEPTNO = 30 THEN SAL ELSE 0 END) AS DEPT_30,
    ->     SUM(CASE WHEN DEPTNO = 40 THEN SAL ELSE 0 END) AS DEPT_40,
    ->     SUM(SAL) AS TOTAL_SALARY
    -> FROM EMPLOYEE
    -> GROUP BY JOB;
+-----------+---------+---------+---------+---------+--------------+
| JOB       | DEPT_10 | DEPT_20 | DEPT_30 | DEPT_40 | TOTAL_SALARY |
+-----------+---------+---------+---------+---------+--------------+
| ANALYST   |       0 |    3000 |       0 |    3000 |         6000 |
| CLERK     |    1300 |    1900 |     950 |       0 |         4150 |
| MANAGER   |       0 |    5425 |    2850 |       0 |         8275 |
| PRESIDENT |       0 |    5000 |       0 |       0 |         5000 |
| SALESMAN  |       0 |       0 |    5600 |       0 |         5600 |
+-----------+---------+---------+---------+---------+--------------+
5 rows in set (0.003 sec)

MariaDB [SHALINI_0615]> SELECT
    ->     ENAME,
    ->     CONCAT('$', FORMAT(SAL, 2)) AS SALARY_IN_DOLLAR
    -> FROM EMPLOYEE;
+--------+------------------+
| ENAME  | SALARY_IN_DOLLAR |
+--------+------------------+
| SMITH  | $800.00          |
| ALLEN  | $1,600.00        |
| WARD   | $1,250.00        |
| JONES  | $2,975.00        |
| MARTIN | $1,250.00        |
| BLAKE  | $2,850.00        |
| CLARK  | $2,450.00        |
| SCOTT  | $3,000.00        |
| KING   | $5,000.00        |
| TURNER | $1,500.00        |
| ADAMS  | $1,100.00        |
| JAMES  | $950.00          |
| FORD   | $3,000.00        |
| MILLER | $1,300.00        |
+--------+------------------+
14 rows in set (0.002 sec)

MariaDB [SHALINI_0615]> SELECT
    ->     ENAME,
    ->     SAL,
    ->     COMM
    -> FROM EMPLOYEE
    -> WHERE COMM > (0.25 * SAL);
+--------+------+------+
| ENAME  | SAL  | COMM |
+--------+------+------+
| MARTIN | 1250 | 1400 |
+--------+------+------+
1 row in set (0.001 sec)

MariaDB [SHALINI_0615]> SELECT
    ->     MAX(SAL) AS Highest_Salary,
    ->     MIN(SAL) AS Lowest_Salary,
    ->     (MAX(SAL) - MIN(SAL)) AS Salary_Difference
    -> FROM EMPLOYEE;
+----------------+---------------+-------------------+
| Highest_Salary | Lowest_Salary | Salary_Difference |
+----------------+---------------+-------------------+
|           5000 |           800 |              4200 |
+----------------+---------------+-------------------+
1 row in set (0.001 sec)

MariaDB [SHALINI_0615]> SELECT
    ->     COUNT(*) AS TOTAL_EMPLOYEES,
    ->     SUM(YEAR(HIREDATE) = 1980) AS HIRED_1980,
    ->     SUM(YEAR(HIREDATE) = 1981) AS HIRED_1981,
    ->     SUM(YEAR(HIREDATE) = 1982) AS HIRED_1982,
    ->     SUM(YEAR(HIREDATE) = 1983) AS HIRED_1983
    -> FROM EMPLOYEE;
+-----------------+------------+------------+------------+------------+
| TOTAL_EMPLOYEES | HIRED_1980 | HIRED_1981 | HIRED_1982 | HIRED_1983 |
+-----------------+------------+------------+------------+------------+
|              14 |          1 |         10 |          2 |          1 |
+-----------------+------------+------------+------------+------------+
1 row in set (0.002 sec)
