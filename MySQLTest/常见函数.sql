# 常见函数

# 调用 select 函数名（实参列表） [from 表]

/*

	单行函数：如 concat length isfull
	
	分组函数（又称聚合函数、组函数、统计函数）


*/

// 单行函数

# 1、length函数  获取参数值的字节个数

SELECT LENGTH('join');


# 2 concat函数 拼接字符串

SELECT CONCAT(last_name, '--', first_name) AS 姓名 FROM empolyees;

# 3 upper lower 大小写转换函数

SELECT CONCAT(UPPER(last_name), '--', LOWER(first_name)) AS 姓名 FROM employees;

# 4 substr substring  **** mysql中 索引是从1开始 截取

SELECT SUBSTR('测试单行函数截取', 5) AS out_put; // 从索引5开始截取

SELECT SUBSTR('测试单行函数截取', 5, 2) AS out_put; // 从索引5开始 截取2个字符长度

# eg 1 姓名中首字符大写 其它字符小写 然后用_拼接 显示

SELECT CONCAT(UPPER(SUBSTR(last_name,1,1)), '-', SUBSTR(last_name,2)) AS out_put;

# 5、 instr 可返回一个字符串在另一个字符串中首次出现的位置索引  不存在返回0

SELECT INSTR('test insert', 'insert') AS out_put;

# 6 trim 去首尾空格

SELECT LENGTH(TRIM('  bbaa a   ')) AS out_put;

SELECT TRIM('b' FROM 'aaabccbaaa') AS out_put; // 匹配字符去除

# 7 lpad 用指定字符实现左填充指定长度

SELECT LPAD('aaa', 10, 'c') AS out_put;

# 8 rpad 相当于右填充

# 9 replace 替换

SELECT REPLACE('aaabbbcccaabbcc', 'bb', '123') AS out_put; // aaa123bcccaa123cc



