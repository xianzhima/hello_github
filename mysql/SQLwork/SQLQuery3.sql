
--主键
drop table spname --删除

create table clerk --建表
(cleId int primary key,
--设置主键，主键值不能重复,必须赋值
cleName nvarchar(50),
age int
)

insert into clerk values(1,'贾宝玉',18)
insert into clerk values(2,'贾政',18)
insert into clerk values(4,'贾母',75)
insert into clerk values(5,'焦大',70)
--部分插入
insert into clerk(cleId,cleName) values(3,'林黛玉')

select*from clerk --查询

--修改
update clerk set age=38 where cleName='贾政'
--多项修改
update clerk set cleName='薛蟠',age=40 where cleId=2
--以空值为修改条件
update clerk set cleName='薛宝钗' where age is null

--删除年龄为75的数据
delete from clerk where age=75
--删除年龄为70-75的数据
delete from clerk where age<=75 and age >=70
--删除年龄为70-75的数据且为空的
delete from clerk where (age<=75 and age >=70) or age is null
