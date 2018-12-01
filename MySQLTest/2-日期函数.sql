# 日期函数

#1 now 返回当前系统日期+时间

SELECT NOW();  2018-11-25 19:57:23

#2 curdate 返回当前系统日期 不包含时间

SELECT CURDATE();  2018-11-25

#3 curtime 返回当前系统时间 不包含日期

SELECT CURTIME();  19:59:05

#4 可以获取指定部分 年 月  日  小时 分钟 秒

SELECT YEAR(NOW()) AS 年;  // 2018

SELECT YEAR('1998-1-1');  // 1998

SELECT YEAR(data_time) AS 年 FROM  employees;

SELECT MONTH(NOW()) AS 年;  // 11

SELECT MONTHNAME(NOW()) AS 年;  // November 获取英文

#5 str_to_date 将字符 通过指定格式转为日期

SELECT STR_TO_DATE('1998-3-2', '%Y-%c-%d') AS out_put; // 1998-03-02

# eg 1 查询入职日期为1992-4-3的员工信息

SELECT * FROM employees WHERE birthDate = '1992-4-3';

SELECT * FROM employees WHERE birthDate = STR_TO_DATE('4-3 1992', '$c-%d %Y');

#6 date_format 将日期转为指定的字符格式

SELECT DATE_FORMAT(NOW(), '%Y年：%m月：%d日'); // 2018年：11月：25日

# eq 1 查询有奖金的员工名和入职日期（xx月/xx日/xx年）

SELECT last_name, DATE_FORMAT(hiredate, '%m月/%d日/%Y') AS 入职日期 FROM employees;







