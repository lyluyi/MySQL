# 4 流程控制函数

#1 if函数

SELECT IF(10 > 5, '大', '小' );  // 大 类似三元运算符

SELECT last_name, commission_pct, IF(commission_pct IS NULL, '没有奖金', '有奖金，嘻嘻嘻');

#2 case函数的使用一： switch case 的效果

/*

	mysql中
	
	case 表达式
	when type1 then 输出
	when type2 then 输出
	when type3 then 输出
	when type1 then 输出
	...
	else 输出
	end
*/

/*

	eg 1: 查询员工的工资 要求
	
	部门号=30 显示的工资为1.1倍
	部门号=40 显示的工资为1.2倍
	部门号=50 显示的工资为1.3倍
	其它部门， 显示工资为原工资
	
	// WHEN语句不能加; 加了就会结束该语句
*/

SELECT salary, department_id,

CASE department_id
WHEN 30 THEN salary*1.1  
WHEN 40 THEN salary*1.2
WHEN 50 THEN salary*1.3
ELSE salary
END AS 新工资

FROM employees;

#3 case函数的使用二  类似于多重if

/*

	mysql中
	
	case
	when 条件1 then 输出
	when 条件1 then 输出
	。。。
	else 输出
	end
*/

/*
	eg 1 查询员工的工资情况
	
	如果工资大于>20000 显示级别A
	如果工资大于>15000 显示级别B
	如果工资大于>10000 显示级别C
	
	否则显示级别D
*/ 

	SELECT salary,
	  CASE
		WHEN	salary>20000 THEN 'A'
		WHEN	salary>15000 THEN 'B'
		WHEN	salary>10000 THEN 'C'
		ELSE 	THEN 'D'
	  END AS 工资级别
	FROM employees;
	

	







