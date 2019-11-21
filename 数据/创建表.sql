--案例:创建一个 base 数据表
--创建一个叫person的数据库
CREATE TABLE base(
    --字段名 数据类型(范围) 约束条件1 约束条件2 约束条件n,
    id INT(10) AUTO_INCREMENT PRIMARY KEY NOT NULL,
-- id字段 数字类型 自增长            主键   不能为空
    username VARCHAR(255) NOT NULL,
--    姓名     字符串类型   不能为空
    sex VARCHAR(10) NOT NULL,
--  性别 字符串类型   不能为空
    age VARCHAR(10) NOT NULL,
--  年龄 字符串类型   不能为空
    salary FLOAT(10,2) NOT NULL,
--    薪资 字符串类型    不能为空
    jointime DATE NOT NULL,
--   入职时间 字符串类型 不能为空
    remarks VARCHAR(255)
--   备注
)ENGINE=InnoDB CHARSET=utf8;