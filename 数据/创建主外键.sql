--alter table tb_name modify id int auto_increment (primary key)

--多表查询-->映射
--创建一张表,该数据的外表的外键需要和需要映射的表是相同的值
--如:a表中外键字段,数据为1,2,3,4...;  b表中主键也应该是1,2,3,4....;  数据类型与长度一致
--foreign key a表(外键字段) references b表(主键字段)

--内连接查询
--笛卡尔积:select * from a表,b表;
--普通内连接:select * from a表 inner join b表 on a表主键=b表外键;
--隐式内连接:select * from a表,b表 where a表主键=b表外键;


--多表结构设计
--一对一:a表主键对应b表主键(没必要,还不如二合一,两张表合为一张表)
--一对多:
--多对多:
create table people(
        uid varchar(10) primary key not null,
        name varchar(10),
        pay varchar(10),
        team varchar(10),
        foreign key people(team) references item(tid)
)ENGINE=InnoDB CHARSET=UTF8;

insert into people values
(1,'tom',8000,3),
(2,'李博',10000,2),
(3,'曹宇航',15000,1),
(4,'JACK',5000,4),
(5,'Ken'),
(6,'JC');


create table item(
        tid varchar(15) primary key not null,
        tname varchar(15) not null
)CHARSET=UTF8;

insert into item values
(1,'人事部'),
(2,'技术部'),
(3,'销售部'),
(4,'采购部');