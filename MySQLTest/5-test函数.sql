# 1. 显示系统时间

 SELECT NOW();

# 2. 查询员工号 姓名 工资 以及工资提高20%后的结果（new salary）

SELECT employee_id, last_name, salary, salary*1.2 AS "new salary" FROM employees;

# 3. 将员工的姓名按首字母排序 并写出姓名的长度（length）

SELECT last_name, SUBSTR(last_name, 1, 1) AS "首字母", LENGTH(last_name) AS "姓名长度" 

FROM employees ORDER BY "首字母";

/*
SELECT last_name, SUBSTR(last_name, 1, 1) AS "首字母", LENGTH(last_name) AS "姓名长度" 

FROM employees ORDER BY "last_name";

如果按照last_name 进行排序的话 首字母是按ABC排序 但是首字母相同的行数中 会按照第二个字母比较 进行升序排序
 
*/



# 4 做一个查询 产生下面的结果

/*

	<last_name> earns <salary> monthly but wants <salary*3>
	Dream Salary
	King enrns 24000 monthly but wants 72000;

*/

SELECT CONCAT(last_name, 'earns', salary, 'monthly but wants', salary*3) AS 'Dream Salary'

FROM employees

WHERE salary = 24000 AND last_name = 'King';


# 5 使用case-when 按照下面条件查询

/*
	job          grade
	
	AD_PRES      A
	ST_MAN       B
	TI_PROG      C

*/

// 这里有个疑问 可不可进行顺序调换 将条件放后面

SELECT last_name, job_id AS 'job'

CASE job_id
	WHEN 'AD_PRES' THEN 'A'
	WHEN 'ST_MAN' THEN 'A'
	WHEN 'TI_PROG' THEN 'A'
END AS 'grade'

FROM employees;



