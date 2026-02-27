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
12 rows in set (0.265 sec)

MariaDB [(none)]> USE shalini_0615;
Database changed
MariaDB [shalini_0615]> SELECT EMPNO, ENAME,
    -> CASE DEPTNO
    ->     WHEN 10 THEN 'RESEARCH'
    ->     WHEN 20 THEN 'ACCOUNTING'
    ->     WHEN 30 THEN 'SALES'
    ->     WHEN 40 THEN 'OPERATIONS'
    -> END AS DEPT_NAME
    -> FROM EMPLOYEE;
+-------+--------+------------+
| EMPNO | ENAME  | DEPT_NAME  |
+-------+--------+------------+
|  7369 | SMITH  | ACCOUNTING |
|  7499 | ALLEN  | SALES      |
|  7521 | WARD   | SALES      |
|  7566 | JONES  | ACCOUNTING |
|  7654 | MARTIN | SALES      |
|  7698 | BLAKE  | SALES      |
|  7782 | CLARK  | ACCOUNTING |
|  7788 | SCOTT  | OPERATIONS |
|  7839 | KING   | ACCOUNTING |
|  7844 | TURNER | SALES      |
|  7876 | ADAMS  | ACCOUNTING |
|  7900 | JAMES  | SALES      |
|  7902 | FORD   | ACCOUNTING |
|  7934 | MILLER | RESEARCH   |
+-------+--------+------------+
14 rows in set (0.245 sec)

MariaDB [shalini_0615]> SELECT DATEDIFF(CURDATE(), '2006-11-05') AS AGE_IN_DAYS;
+-------------+
| AGE_IN_DAYS |
+-------------+
|        7046 |
+-------------+
1 row in set (0.001 sec)

MariaDB [shalini_0615]> SELECT TIMESTAMPDIFF(MONTH, '2006-11-05', CURDATE()) AS AGE_IN_MONTHS;
+---------------+
| AGE_IN_MONTHS |
+---------------+
|           231 |
+---------------+
1 row in set (0.001 sec)

MariaDB [shalini_0615]> SELECT CONCAT(
    ->        DATE_FORMAT('1997-08-15', '%D %M %W '),
    ->        'Nineteen Ninety Seven'
    -> ) AS FORMATTED_DATE;
+------------------------------------------+
| FORMATTED_DATE                           |
+------------------------------------------+
| 15th August Friday Nineteen Ninety Seven |
+------------------------------------------+
1 row in set (0.001 sec)

MariaDB [shalini_0615]> SELECT DATE_FORMAT(CURDATE(), '%D %M %W %Y') AS CURRENT_DATE_FORMAT;
+-----------------------------+
| CURRENT_DATE_FORMAT         |
+-----------------------------+
| 19th February Thursday 2026 |
+-----------------------------+
1 row in set (0.001 sec)

MariaDB [shalini_0615]> SELECT DATE_ADD(
    ->        CURDATE(),
    ->        INTERVAL ((7 - WEEKDAY(CURDATE()) + 5) % 7) DAY
    -> ) AS NEXT_SATURDAY;
+---------------+
| NEXT_SATURDAY |
+---------------+
| 2026-02-21    |
+---------------+
1 row in set (0.001 sec)

+--------------+
| CURRENT_TIME |
+--------------+
| 15:53:29     |
+--------------+
1 row in set (0.002 sec)

MariaDB [shalini_0615]> SELECT DATE_SUB(CURDATE(), INTERVAL 3 MONTH) AS DATE_BEFORE_3_MONTHS;
+----------------------+
| DATE_BEFORE_3_MONTHS |
+----------------------+
| 2025-11-19           |
+----------------------+
1 row in set (0.001 sec)

MariaDB [shalini_0615]> SELECT ENAME, HIREDATE
    -> FROM EMPLOYEE
    -> WHERE MONTH(HIREDATE) = 12;
+-------+------------+
| ENAME | HIREDATE   |
+-------+------------+
| SMITH | 1980-12-17 |
| SCOTT | 1982-12-09 |
| JAMES | 1981-12-03 |
| FORD  | 1981-12-03 |
+-------+------------+
4 rows in set (0.002 sec)

MariaDB [shalini_0615]> SELECT ENAME, HIREDATE, SAL
    -> FROM EMPLOYEE
    -> WHERE LEFT(YEAR(HIREDATE),2) = RIGHT(SAL,2);
Empty set (0.003 sec)

MariaDB [shalini_0615]> SELECT ENAME, HIREDATE
    -> FROM EMPLOYEE
    -> WHERE DAY(HIREDATE) < 15;
+--------+------------+
| ENAME  | HIREDATE   |
+--------+------------+
| JONES  | 1981-04-02 |
| BLAKE  | 1981-05-01 |
| CLARK  | 1981-06-09 |
| SCOTT  | 1982-12-09 |
| TURNER | 1981-09-08 |
| ADAMS  | 1983-01-12 |
| JAMES  | 1981-12-03 |
| FORD   | 1981-12-03 |
+--------+------------+
8 rows in set (0.002 sec)

MariaDB [shalini_0615]> SELECT ENAME, HIREDATE
    -> FROM EMPLOYEE
    -> WHERE DAY(HIREDATE) > 15;
+--------+------------+
| ENAME  | HIREDATE   |
+--------+------------+
| SMITH  | 1980-12-17 |
| ALLEN  | 1981-02-20 |
| WARD   | 1981-02-22 |
| MARTIN | 1981-09-28 |
| KING   | 1981-11-17 |
| MILLER | 1982-01-23 |
+--------+------------+
6 rows in set (0.001 sec)

MariaDB [shalini_0615]> SELECT ENAME, HIREDATE, DEPTNO
    -> FROM EMPLOYEE
    -> WHERE HIREDATE IS NOT NULL
    -> AND DEPTNO IS NOT NULL;
+--------+------------+--------+
| ENAME  | HIREDATE   | DEPTNO |
+--------+------------+--------+
| SMITH  | 1980-12-17 |     20 |
| ALLEN  | 1981-02-20 |     30 |
| WARD   | 1981-02-22 |     30 |
| JONES  | 1981-04-02 |     20 |
| MARTIN | 1981-09-28 |     30 |
| BLAKE  | 1981-05-01 |     30 |
| CLARK  | 1981-06-09 |     20 |
| SCOTT  | 1982-12-09 |     40 |
| KING   | 1981-11-17 |     20 |
| TURNER | 1981-09-08 |     30 |
| ADAMS  | 1983-01-12 |     20 |
| JAMES  | 1981-12-03 |     30 |
| FORD   | 1981-12-03 |     20 |
| MILLER | 1982-01-23 |     10 |
+--------+------------+--------+
14 rows in set (0.006 sec)

MariaDB [shalini_0615]> SELECT CONCAT(
    ->        ENAME,
    ->        ' has joined the company on ',
    ->        DATE_FORMAT(HIREDATE, '%W %D %M %Y')
    -> ) AS JOINING_DETAILS
    -> FROM EMPLOYEE;
+--------------------------------------------------------------+
| JOINING_DETAILS                                              |
+--------------------------------------------------------------+
| SMITH has joined the company on Wednesday 17th December 1980 |
| ALLEN has joined the company on Friday 20th February 1981    |
| WARD has joined the company on Sunday 22nd February 1981     |
| JONES has joined the company on Thursday 2nd April 1981      |
| MARTIN has joined the company on Monday 28th September 1981  |
| BLAKE has joined the company on Friday 1st May 1981          |
| CLARK has joined the company on Tuesday 9th June 1981        |
| SCOTT has joined the company on Thursday 9th December 1982   |
| KING has joined the company on Tuesday 17th November 1981    |
| TURNER has joined the company on Tuesday 8th September 1981  |
| ADAMS has joined the company on Wednesday 12th January 1983  |
| JAMES has joined the company on Thursday 3rd December 1981   |
| FORD has joined the company on Thursday 3rd December 1981    |
| MILLER has joined the company on Saturday 23rd January 1982  |
+--------------------------------------------------------------+
14 rows in set (0.002 sec)