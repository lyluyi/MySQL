# 进阶3： 排序查询

/*

引入：

	select * from employees;
	
	语法 select 查询列表
	from 表
	
	【where 筛选条件】
	order by 排序列表 【asc|desc】

	1 asc: 升序
	2.desc： 降序   
	
	使用order by  不写  默认升序 可以支持 单个 多个字段 表达式 函数  别名（即字段名）
	
	# 一般都是放在查询语句的最后面  limit除外
*/

# 案例1： 查询员工信息 要求工资从高到低排序

SELECT * FROM employees ORDER BY salary DESC; // 降序


# 案例2： 查询部门编号>=90的员工信息 按入职时间的先手进行排序

`test`

# 案例3： 按表达式排序 按年薪的高低显示员工的信息

SELECT *, salary*12*(1 + IFNULL(commission_pct, 0)) 年薪 FROM employees ORDER BY salary*12*(1 + IFNULL(commission_pct, 0));

# 案例4： 年薪降序
SELECT *, salary*12*(1 + IFNULL(commission_pct, 0)) 年薪 FROM employees ORDER BY 年薪 DESC; // 降序 用字段进行筛选

# 案例5： 按姓名的长度显示员工的姓名和工资

SELECT LENGTH(last_name) 姓名字节长度, last_name, salary FROM employees ORDER BY LENGTH(last_name);

# 案例6： 查询员工信息 先按工资排序 再按工号排序[按多个字段排序]

SELECT * form employees ORDER BY salary ASC, employees_id DESC;











