--查看表内的所有数据
SELECT * FROM 表名;
--查询单个字段
select 字段名 from 表名;
--查询多个字段
select 字段名1,字段名n from 表名


--以下g_id,g_js等为字段名,base/grade为表名
--条件查询 where关键词
--等于
select * from 表名 where 字段='某值';
select * from base where b_name='王志华';
--不等于
select * from 表名 where 字段!='某值';
select * from 表名 where 字段<>'某值';
--大于和小于
select * from 表名 where 字段>'某值';
select 字段1,字段n from 表名 where 字段n<'某值';
--例如:
select g_html,g_js from grade where g_html>=60 and g_js<=60;
select * from 表名 where 字段 between 小值 and 大值;


--模糊条件查询
--包含某字段
select * from 表名 where 字段 like '%字段%';
--以某字段开头
select * from where 字段 like '字段%';
--以某字段结尾
select * from 表名 where 字段 like '%字段';


--计算查询,值计算
--标题改变值改变,筛选结果不计算
select g_id,g_js+10 from grade where g_js<=60;
--标题不变,值改变,筛选结果计算
select g_id,g_js from grade where g_js+10<=60;
--合计
select 字段1,(字段2+字段3-字段n) from 表名;


--设置别名:当表名过长或执行一些特殊查询,为方便多次的查询相同表,用一个别名代表,同样字段也如此
--     表别名.字段              表名     表别名
select b.b_name,b.b_phone from baseinfo as b;
--   表别名.字段  字段别名   表名    表别名
select b.b_name as n from baseinfo as b; 
--可以设置中文
select b.b_name as 姓名 from baseinfo as b;

--指定条数:从上到下截取XX条数据
--              表名        截取长度
select * from baseinfo limit 4;
--5:起始位置,4:截取长度
select * from baseinfo limit 5,4;

--排序查询
--        字段           表名           字段  升序
select g_name,g_js from grade order by g_js asc;
--        字段           表名           字段  降序
select g_name,g_js from grade order by g_js desc;

--函数查询
--聚集函数
--求和
sum()
--平均值
avg()
--最大值
max()
--最小值
min()
--select g_name,min(g_js) from grade;
--字段行数
count()
--处理时间
year(时间字段)
month(时间字段)