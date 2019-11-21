--插入多条数据
--选择数据库
USE person;
--插入一条数据
INSERT INTO base(id,username,sex,age,salary,jointime,remarks) 
VALUES(1,'ccc','男',20,3000,'2019-11-10','测试');
--插入一条数据:简写,可以省略字段名
INSERT INTO base VALUES(8,'Tom','男',20,3000,'2019-11-10','测试');

--查看是否插入
SELECT * FROM base;
--插入有缺省的数据
INSERT INTO base(id,username,age,salary,jointime,remarks)
VALUES(20,'Jack',20,3000,'2019-11-10','测试');
--插入两条数据
INSERT INTO base(id,username,sex,age,salary,jointime,remarks)
VALUES(3,'Bob','男',20,3000,'2019-11-10','测试'),
VALUES(4,'Ken','男',20,3000,'2019-11-10','测试');