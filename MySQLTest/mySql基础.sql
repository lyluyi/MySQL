#1. 查询表中的单个字段
SELECT last_name FROM employees;

SELECT * FROM user_info;

SELECT `name` FROM user_address


#2 查询常量值  表达式 函数

SELECT 100;

SELECT 100%10;

SELECT VERSION();

#3. 起别名 1. 使用as  2. 使用空格 加“”号

SELECT 100%10 AS 结果；

SELECT 10 AS 姓, 20 AS 名；

SELECT 100%12 "余数 a";

#4. 查询字段去重

SELECT DISTINCT department_id FROM employees; # 去重 相同的部门id

#5. +的作用 都为数字类型 就是假发运算

SELECT 1 + 2 AS "姓名";

#6. concat('a','b','c') 字段拼接

SELECT CONCAT('a', 'b', 'c') AS "结果";

#7. 条件查询 1. 按条件表达式筛选 > <  = (!= <>) => <=; 2. 按逻辑表达式筛选 (&& || ！) (and or  not)
# . 模糊查询 like between  and   in  is null

#8. 按条件表达式筛选

SELECT * FROM employees WHERE salary>12000;


# 案例 查询部门编号不等于90号的员工名和部门编号

SELECT last_name, department_id FROM employees WHERE department_id <> 90;

# 按逻辑表达式筛选 

# 案例1 查询工资在10000到20000之前的员工名 工资以及奖金

SELECT last_name, salary, commission_pct FROM employees WHERE salary>=10000 && salary<=20000;

# 案例2 查询部门编号是在90到110之间，或者工资高于15000的员工信息

SELECT * FROM emlpoyees WHERE (department_id =< 90 AND department_id >= 110) OR salary > 15000;

# 三 模糊查询 like between and  in  is null| is not null

# like  %代表任意多个字符 前后不限制位数  一般和通配符搭配使用  特殊符号 使用 \ 转义 字符
#案例1： 查询员工名中包含字符a的信息

SELECT * FROM employees WHERE last_name LIKE '%a%';

# 案例二 _表示一个单个字符  查询员工中第三个字符为e 第五个字符为a的员工名和工资 _代表一个字符占位符

SELECT last_name, salary form employees WHERE last_name LIKE '__e_a%'

# 2. between and 

# 案例一： 查询员工编号在100到120之间的员工信息

SELECT * FROM employees WHERE employees_id BETWEEN 100 AND 120;

# 3. in 关键字 多个值一定要类型统一

# 案例： 查询员工的工种编号 111 222 333

SELECT last_name, job_id FROM employees WHERE job_id = '111' OR job_id = '222' OR job_id = '333';

# 用 in的写法 

SELECT last_name, job_id FROM employees WHERE job_id IN ('111','222','333');

# is null

# 案例1： 查询没有奖金的员工名和奖金率  number = null 不能判断null 必须用 is not null 也可以使用 安全<=>

SELECT last_name, commissin_pct FROM employees WHERE commission_pct IS NOT NULL;

# 安全等于 <=> 可以判断null <=> null 可以判断不同类型的值 是否等于


# test1：查询员工工号为176的员工的姓名和部门号和年薪

SELECT last_name, department_id, salary*12 AS 年薪 FROM employees WHERE department_id = 176;






 