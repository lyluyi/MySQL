# 5 分组函数

/*

	功能：用作统计使用 又称为聚合函数或者统计函数 组函数
	
	分类：
	sum 求和 avg 平均值 max 最大值 min 最小值 count 计算个数

*/

# 1. 简单组合使用

SELECT SUM(salary) FROM employees;

SELECT AVG(salary) FROM employees;

SELECT MAX(salary) FROM employees;

SELECT MIN(salary) FROM employees;

SELECT COUNT(salary) FROM employees;

SELECT SUM(salary) AS '总和', ROUND(AVG(salary)) AS '平均值', 
MAX(salary) AS '最大值', MIN(salary) AS '最小值', COUNT(salary) AS '总个数' FROM employees; 

# 还可以结合round四舍五入 等函数一起使用


# 2 参数支持哪些类型  count 不计算非空的值 SUM 也是 可以忽略null

SELECT SUM(last_name), AVG(last_name) FROM employees; // 不会报错 但是没有逻辑意义

# 3 配合distinct 搭配使用  去重

SELECT SUM(DISTINCT salary), SUM(salary) FROM employees;

SELECT COUNT(DISTINCT salary), COUNT(salary) FROM employees;

# count函数的详细介绍 统计行数 count（*）

SELECT COUNT(*) FROM employees; // 只要该行的所有列存在一个非NULL 就能进行统计+1

SELECT COUNT(1) FROM employees; // 统计行数 相当于默认加了一列常量1 就可以统计行数

/*
	效率：
	
	MYISAM存储引擎下 count(*)  的效率高
	
	INNODE 存储银枪下  count（1）和count（*） 效率差不多  比count（字段）要高



*/ 







