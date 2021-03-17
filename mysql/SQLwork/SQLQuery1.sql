--创建数据库
create database LiangshangHero2

--创建表
use LiangshangHero2--使用某个数据库
go
--删除表（结构和数据）
drop table hero

create table hero
(heroid int,--排名
heroName varchar(50),--名字
heroNickName varchar(50),--外号
sex char(2),
sal int)

--使用sql语句来添加数据
insert into hero values(1,'宋江','及时雨','男',20000)
insert into hero values(2,'卢俊义','玉麒麟','男',15000)
insert into hero values(3,'吴用','智多星','男',30)
insert into hero values(4,'公孙胜','入云龙','男',80)

--使用sql语句查询数据
select*from hero
--条件查询
select*from hero where sal<100

--修改语句
update hero set sal=sal*1.1 where sal <100

--删除语句
delete from hero where sex='女'