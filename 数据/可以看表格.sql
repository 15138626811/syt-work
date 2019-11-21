-- CREATE DATABASE person;
USE person;

CREATE TABLE base(
    id INT(10) AUTO_INCREMENT PRIMARY KEY NOT NULL,
    username VARCHAR(255) NOT NULL,
    sex VARCHAR(10) NOT NULL,
    age INT(10) NOT NULL,
    salary FLOAT(10,2) NOT NULL,
    jointime DATE NOT NULL,
    remarks VARCHAR(255)
)ENGINE=InnoDB CHARSET=utf8;

-- 查看表
SHOW TABLES;

-- 查看表结构
DESC 表名;