USE test;

CREATE	TABLE Employees(

	id INT NOT NULL,
	age INT NOT NULL,
	FIRST VARCHAR (255),
	LAST VARCHAR (255)
);

SHOW TABLES;

SELECT * FROM employees;


INSERT INTO employees VALUES(100, 28, 'MAX', 'Su');

INSERT INTO employees VALUES(101, 25, 'Wei', 'Wang');

INSERT INTO employees VALUES(102, 30, 'Xueyou', 'Zhang' );

INSERT INTO `test`.`employees`
            (`id`,
             `age`,
             `first`,
             `last`)
VALUES ('102',
        '30',
        'Xueyou',
        'Zhang');


TRUNCATE TABLE t_user; // 删除表中内容 并且数据不可恢复

DELETE FROM t_user; // 删除表中内容 数据可恢复






