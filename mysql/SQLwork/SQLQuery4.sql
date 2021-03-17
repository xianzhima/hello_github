
--删除表（结构和数据）
drop table dept
drop table emp

--使用sql语句查询数据
select*from emp
select*from dept
--查询Smith的薪水
select sal,jod,deptno from emp where ename='smith'
--查询有多少个部门
select distinct deptno from emp --distinct 消除结果相同的
--展示所有人的年工资
select ename,sal*12 年工资 from emp --年工资是别名
--展示所有人的年收入
select ename,sal*12+isnull(comm,0)*12 "年收入" from emp
--展示工资高于3000的员工
select*from emp where sal>3000
--展示1982.1.1之后入职的员工
select * from emp where hiredate>'1982-1-1'
--展示工资2000到2500的员工
select * from emp where sal>2000 and sal<2500
select * from emp where sal between 2000 and 2500 
--展示没有上级的员工
select * from emp where mgr is null 


--模糊查询
-- %表示零到多个字符 _表示单个字符
--展示第三个字符为o的员工姓名和工资
select ename,sal from emp where ename like '__o%'
--展示首字母为s的员工姓名和工资
select ename,sal from emp where ename like 's%'
--多条件查询
--展示empno为123，456 ，789，员工的情况
select *from emo where empno=123 or empno=456 orempno=789
select*from emp where empno in(123,456,789)--in关键字
--展示工资高于500或岗位为manager的员工，且名字首字母为j
select * from emp where (sal>500 or jod='manger')and ename like 'j%'


--按工资高低排序，由低到高
--order by 默认为升序
select * from emp order by sal
select * from emp order by sal asc --asc升序
select * from emp order by sal desc--desc 降序
--order by多条件排序 每一个字段都可接升序降序语句
select * from emp order by deptno,sal desc
--统计年薪，并排序
select ename,(sal+isnull(comm,0))*12 from emp order by ((sal+isnull(comm,0))*12 )
select ename,(sal+isnull(comm,0))*12 年薪 from emp order by 年薪
--展示最高工资和最低工资
--显示最低工资和雇员的名字
select ename,sal from emp where sal=(select min(sal) from emp)--子查询
--显示所有员工的平均工资和工资总和
select avg(sal) 平均工资,sum(sal) 总工资 from emp
--统计有多少员工
select count(*) from emp
--展示每个部门的平均工资和最高工资
--group by 分组
select avg(sal) 平均工资,max(sal) 最高工资,deptno from emp group by deptno
--展示平均工资低于2000的部门和它的平均工资
--having 对分组查询结果进行筛选
select avg(sal),deptno from emp group by deptno having avg(sal)<2000


--多表查询
--展示销售部员工和地址
select * from emp ,dept where dept.dname='sales' and emp.deptno=dept.deptno
--显示员工名，员工工资及所在部门名字
select ename,sal,dname from emp ,dept where emp.deptno=dept.deptno
--出现字段名相同的要带表名或别名
select ename,sal,dname ,dept.deptno from emp ,dept where emp.deptno=dept.deptno


--自连接
--显示每个员工名字和上级名字
select wo.ename 员工,bo.ename 上级 from emp wo,emp bo where wo.mgr=bo.empno


--子查询
--单行子查询
--与smith同部门
select *from emp where deptno in (select deptno from emp where ename='smith')


--多行子查询
--与10部门中工作相同的员工
select*from emp where jod  in (select distinct jod from emp where deptno=10)
--显示各部门中高于平均工资的员工
--可以把子查询结果当作一张表
select emp.ename,emp.sal,tem.myavg,emp.deptno from emp,
(select avg(sal) myavg,deptno from emp group by deptno) tem
where emp.deptno=tem.deptno and emp.sal>tem.myavg

--分页查询
--显示前1~4个入职的员工
select top 4* from emp order by hiredate
--显示第5到第10入职的员工
--top后接数字表示是要取出多少条记录，not in 不包括
select top 6* from emp where empno not in
(select top 4 empno from emp order by hiredate)
order by hiredate

--identity(1,1),表示数据自我复制，从1，每条都复制一条
create table test(
testId int primary key identity(1,1),
testName varchar(30),
testPass varchar(30)
)
--给初值
insert into test (testName,testPass) values ('shuping','shuping')
--自增
insert into test (testName,testPass) select testName,testPass from test
--查询条数
select count(*) from test
select * from test


--删除重复记录
--distinct查询不重复的记录
--建表
create table cat(
catId int,
catName varchar(40)
)
insert into cat values(2,'dsw')
select *from cat
--取出不重复的记录并存入临时表#temp中
select distinct *into #temp from cat
--清除cat的数据
delete from cat
--将#temp导入cat
insert into cat select *from #temp
drop table #temp

--自连接
--显示每个员工名字和对应上级名字
select wo.ename 员工,bo.ename 上级 from emp wo,emp bo where wo.mgr=bo.empno


--外连接
--左外连接：左边记录全部显示，没有匹配的用null填充
--显示每个员工名字和对应上级名字
select wo.ename 员工,bo.ename 上级 from emp wo left join emp bo on wo.mgr=bo.empno
--右外连接：右边记录全部显示，没有匹配的用null填充
select wo.ename 员工,bo.ename 上级 from emp wo right join emp bo on wo.mgr=bo.empno




--约束
--not null  ,unique  , primary key, foreign key， 和check
--not null 不为空
--建表
create table test1(
test1Id int primary key identity(1,1),
test1name varchar(30) not null,
test1Pass varchar(30) not null,
test1age int
)
--测试
insert into test1(test1age) values (3)
insert into test1(test1name,test1Pass,test1age) values ('','',3)--与上不同
select *from test1

--unique 唯一：可以为空值
create table test2(
test1Id int primary key identity(1,1),--行级定义
test1name varchar(30) unique,
test1Pass varchar(30) ,
test1age int
)
--测试
insert into test2(test1name,test1Pass,test1age) values ('aa','123',33)--重复执行时报错
insert into test2(test1Pass,test1age) values ('123',33)--可为空值
select *from test2

--复合主键
create table test3(
test1Id int ,
test1name varchar(30),
test1Pass varchar(30),
test1age int,
primary key(test1Id,test1name)--表级定义
)--两个条件同时相同才会无法插入

-- foreign key 外键： 定义于从表，主表必须要有主键约束或唯一约束，
--外键定义后外键列数据必须在主表有对应值或为空值
--主表值可以有多个从表值对象，从表值只有一个主表值对象
--deptno int foreign key references dept(deptno)--部门编号
--外键引用表dept的deptno

--check :必须被满足的条件
create table test4(
test1Id int ,
test1name varchar(30),
test1Pass varchar(30),
test1age int check(test1age>0 and test1age<=150)
)
--测试
insert into test4(test1name,test1Pass,test1age) values ('ww','dd',3)
insert into test4(test1name,test1Pass,test1age) values ('ww','dd',151)
select *from test4

--default 未赋值时默认赋值
create table mes(
mesId int primary key identity(1,1),
mescon varchar(2000) not null,
mesDate datetime default getdate()
)
--测试
insert into mes(mescon) values ('ww')
insert into mes(mescon,mesDate) values ('ww','2019-12-1')
select *from mes






--创建数据库
create database spdd1
--创建表
create table dept --部门表
(deptno int primary key,--部门编号
dname nvarchar(30),--部门名
loc nvarchar(30) --地址
)
create table emp( --职工表
empno int primary key,--编号
ename nvarchar(30),--名字  
jod nvarchar(30),--工作
mgr int, --上级编号
hiredate datetime,--入职时间
sal numeric(10,2),--工资
comm numeric(10,2),--奖金
deptno int foreign key references dept(deptno)--部门编号
--外键引用表dept的deptno
)
--外键
--1.只能引用其他表中的主键
--2.外键和主键类型要一致
--1
insert into emp(empno,ename,jod,mgr,hiredate,sal,deptno)
values(7369,'smith','clerk',7902,'1980-12-17',800.00,20 )
--2
insert into emp values(7499,'allen','salesman',
7698,'1981-2-20',1600.00,300.00,30)
--3
insert into emp values(7521,'ward','salesman',
7698,'1981-2-22',1250.00,500.00,30)
--4
insert into emp(empno,ename,jod,mgr,hiredate,sal,deptno)
values(7566,'jones','manager',7839,'1981-4-2',2975.00,20 )
--5
insert into emp values(7654,'martin','salesman',
7698,'1981-9-28',1250.00,1400.00,30)
--6
insert into emp(empno,ename,jod,mgr,hiredate,sal,deptno)
values(7698,'blake','manager',7839,'1981-5-1',2850.00,30 )
--7
insert into emp(empno,ename,jod,mgr,hiredate,sal,deptno)
values(7782,'clark','manager',7839,'1981-6-9',2450.00,10 )
--8
insert into emp(empno,ename,jod,mgr,hiredate,sal,deptno)
values(7788,'scott','analyst',7566,'1987-4-19',3000.00,20 )
--9
insert into emp(empno,ename,jod,hiredate,sal,deptno)
values(7839,'king','president','1981-11-17',5000.00,10 )
--10
insert into emp values(7844,'turner','salesman',
7698,'1981-9-8',1500.00,0.00,30)
--11
insert into emp(empno,ename,jod,mgr,hiredate,sal,deptno)
values(7876,'adams','clerk',7788,'1987-5-23',1100.00,20 )
--12
insert into emp(empno,ename,jod,mgr,hiredate,sal,deptno)
values(7900,'james','clerk',7698,'1981-12-3',950.00,20 )
--13
insert into emp(empno,ename,jod,mgr,hiredate,sal,deptno)
values(7902,'ford','analyst',7566,'1981-12-3',3000.00,20 )
--14
insert into emp(empno,ename,jod,mgr,hiredate,sal,deptno)
values(7934,'miller','clerk',7782,'1982-1-23',1300.00,10 )
--15
insert into emp values(9999,'shunping','clerk',
7782,'1988-5-5',2456.34,55.66,10)



--1
insert into dept values(
10,'accounting','new york')
--2
insert into dept values(
20,'research','dalas')

insert into dept values(
30,'sales','chicago')

insert into dept values(
40,'operations','bostn')
