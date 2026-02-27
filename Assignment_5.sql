
MariaDB [shalini_0615]> USE SHALINI;
Database changed
MariaDB [SHALINI]> SELECT COUNT(*) AS TOTAL_EMPLOYEES
    -> FROM employee;
+-----------------+
| TOTAL_EMPLOYEES |
+-----------------+
|              14 |
+-----------------+
1 row in set (0.019 sec)

MariaDB [SHALINI]> SELECT SUM(salary) AS TOTAL_SALARY
    -> FROM employee;
+--------------+
| TOTAL_SALARY |
+--------------+
|        29025 |
+--------------+
1 row in set (0.002 sec)

MariaDB [SHALINI]> SELECT MAX(salary) AS MAX_SALARY
    -> FROM employee;
+------------+
| MAX_SALARY |
+------------+
|       5000 |
+------------+
1 row in set (0.001 sec)

MariaDB [SHALINI]> SELECT MIN(salary) AS MIN_SALARY
    -> FROM employee;
+------------+
| MIN_SALARY |
+------------+
|        800 |
+------------+
1 row in set (0.001 sec)

MariaDB [SHALINI]> SELECT AVG(salary) AS AVERAGE_SALARY
    -> FROM employee;
+----------------+
| AVERAGE_SALARY |
+----------------+
|      2073.2143 |
+----------------+
1 row in set (0.001 sec)

MariaDB [SHALINI]> SELECT MAX(salary) AS MAX_CLERK_SALARY
    -> FROM employee
    -> WHERE job = 'CLERK';
+------------------+
| MAX_CLERK_SALARY |
+------------------+
|             1300 |
+------------------+
1 row in set (0.002 sec)

MariaDB [SHALINI]> SELECT MAX(salary) AS MAX_DEPT20_SALARY
    -> FROM employee
    -> WHERE deptno = 20;
+-------------------+
| MAX_DEPT20_SALARY |
+-------------------+
|              5000 |
+-------------------+
1 row in set (0.002 sec)

MariaDB [SHALINI]> SELECT MIN(salary) AS MIN_SALESMAN_SALARY
    -> FROM employee
    -> WHERE job = 'SALESMAN';
+---------------------+
| MIN_SALESMAN_SALARY |
+---------------------+
|                1250 |
+---------------------+
1 row in set (0.002 sec)

MariaDB [SHALINI]> SELECT AVG(salary) AS AVG_MANAGER_SALARY
    -> FROM employee
    -> WHERE job = 'MANAGER';
+--------------------+
| AVG_MANAGER_SALARY |
+--------------------+
|          2912.5000 |
+--------------------+
1 row in set (0.001 sec)

MariaDB [SHALINI]> SELECT SUM(salary) AS TOTAL_ANALYST_SALARY
    -> FROM employee
    -> WHERE job = 'ANALYST'
    -> AND deptno = 40;
+----------------------+
| TOTAL_ANALYST_SALARY |
+----------------------+
|                 3000 |
+----------------------+
1 row in set (0.003 sec)

MariaDB [SHALINI]> SELECT UPPER(ename)
    -> FROM employee;
+--------------+
| UPPER(ename) |
+--------------+
| SMITH        |
| ALLEN        |
| WARD         |
| JONES        |
| MARTIN       |
| BLAKE        |
| CLARK        |
| SCOTT        |
| KING         |
| TURNER       |
| ADAMS        |
| JAMES        |
| FORD         |
| MILLER       |
+--------------+
14 rows in set (0.003 sec)

MariaDB [SHALINI]> SELECT LOWER(ename)
    -> FROM employee;
+--------------+
| LOWER(ename) |
+--------------+
| smith        |
| allen        |
| ward         |
| jones        |
| martin       |
| blake        |
| clark        |
| scott        |
| king         |
| turner       |
| adams        |
| james        |
| ford         |
| miller       |
+--------------+
14 rows in set (0.001 sec)

MariaDB [SHALINI]> SELECT CONCAT(
    ->        UPPER(LEFT(ename,1)),
    ->        LOWER(SUBSTRING(ename,2))
    ->        ) AS PROPER_NAME
    -> FROM employee;
+-------------+
| PROPER_NAME |
+-------------+
| Smith       |
| Allen       |
| Ward        |
| Jones       |
| Martin      |
| Blake       |
| Clark       |
| Scott       |
| King        |
| Turner      |
| Adams       |
| James       |
| Ford        |
| Miller      |
+-------------+
14 rows in set (0.001 sec)

MariaDB [SHALINI]> SELECT LENGTH('SHALINI') AS NAME_LENGTH;
+-------------+
| NAME_LENGTH |
+-------------+
|           7 |
+-------------+
1 row in set (0.001 sec)

MariaDB [SHALINI]> SELECT ename, LENGTH(ename) AS NAME_LENGTH
    -> FROM employee;
+--------+-------------+
| ename  | NAME_LENGTH |
+--------+-------------+
| SMITH  |           5 |
| ALLEN  |           5 |
| WARD   |           4 |
| JONES  |           5 |
| MARTIN |           6 |
| BLAKE  |           5 |
| CLARK  |           5 |
| SCOTT  |           5 |
| KING   |           4 |
| TURNER |           6 |
| ADAMS  |           5 |
| JAMES  |           5 |
| FORD   |           4 |
| MILLER |           6 |
+--------+-------------+
14 rows in set (0.002 sec)
