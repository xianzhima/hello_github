
--ɾ�����ṹ�����ݣ�
drop table dept
drop table emp

--ʹ��sql����ѯ����
select*from emp
select*from dept
--��ѯSmith��нˮ
select sal,jod,deptno from emp where ename='smith'
--��ѯ�ж��ٸ�����
select distinct deptno from emp --distinct ���������ͬ��
--չʾ�����˵��깤��
select ename,sal*12 �깤�� from emp --�깤���Ǳ���
--չʾ�����˵�������
select ename,sal*12+isnull(comm,0)*12 "������" from emp
--չʾ���ʸ���3000��Ա��
select*from emp where sal>3000
--չʾ1982.1.1֮����ְ��Ա��
select * from emp where hiredate>'1982-1-1'
--չʾ����2000��2500��Ա��
select * from emp where sal>2000 and sal<2500
select * from emp where sal between 2000 and 2500 
--չʾû���ϼ���Ա��
select * from emp where mgr is null 


--ģ����ѯ
-- %��ʾ�㵽����ַ� _��ʾ�����ַ�
--չʾ�������ַ�Ϊo��Ա�������͹���
select ename,sal from emp where ename like '__o%'
--չʾ����ĸΪs��Ա�������͹���
select ename,sal from emp where ename like 's%'
--��������ѯ
--չʾempnoΪ123��456 ��789��Ա�������
select *from emo where empno=123 or empno=456 orempno=789
select*from emp where empno in(123,456,789)--in�ؼ���
--չʾ���ʸ���500���λΪmanager��Ա��������������ĸΪj
select * from emp where (sal>500 or jod='manger')and ename like 'j%'


--�����ʸߵ������ɵ͵���
--order by Ĭ��Ϊ����
select * from emp order by sal
select * from emp order by sal asc --asc����
select * from emp order by sal desc--desc ����
--order by���������� ÿһ���ֶζ��ɽ����������
select * from emp order by deptno,sal desc
--ͳ����н��������
select ename,(sal+isnull(comm,0))*12 from emp order by ((sal+isnull(comm,0))*12 )
select ename,(sal+isnull(comm,0))*12 ��н from emp order by ��н
--չʾ��߹��ʺ���͹���
--��ʾ��͹��ʺ͹�Ա������
select ename,sal from emp where sal=(select min(sal) from emp)--�Ӳ�ѯ
--��ʾ����Ա����ƽ�����ʺ͹����ܺ�
select avg(sal) ƽ������,sum(sal) �ܹ��� from emp
--ͳ���ж���Ա��
select count(*) from emp
--չʾÿ�����ŵ�ƽ�����ʺ���߹���
--group by ����
select avg(sal) ƽ������,max(sal) ��߹���,deptno from emp group by deptno
--չʾƽ�����ʵ���2000�Ĳ��ź�����ƽ������
--having �Է����ѯ�������ɸѡ
select avg(sal),deptno from emp group by deptno having avg(sal)<2000


--����ѯ
--չʾ���۲�Ա���͵�ַ
select * from emp ,dept where dept.dname='sales' and emp.deptno=dept.deptno
--��ʾԱ������Ա�����ʼ����ڲ�������
select ename,sal,dname from emp ,dept where emp.deptno=dept.deptno
--�����ֶ�����ͬ��Ҫ�����������
select ename,sal,dname ,dept.deptno from emp ,dept where emp.deptno=dept.deptno


--������
--��ʾÿ��Ա�����ֺ��ϼ�����
select wo.ename Ա��,bo.ename �ϼ� from emp wo,emp bo where wo.mgr=bo.empno


--�Ӳ�ѯ
--�����Ӳ�ѯ
--��smithͬ����
select *from emp where deptno in (select deptno from emp where ename='smith')


--�����Ӳ�ѯ
--��10�����й�����ͬ��Ա��
select*from emp where jod  in (select distinct jod from emp where deptno=10)
--��ʾ�������и���ƽ�����ʵ�Ա��
--���԰��Ӳ�ѯ�������һ�ű�
select emp.ename,emp.sal,tem.myavg,emp.deptno from emp,
(select avg(sal) myavg,deptno from emp group by deptno) tem
where emp.deptno=tem.deptno and emp.sal>tem.myavg

--��ҳ��ѯ
--��ʾǰ1~4����ְ��Ա��
select top 4* from emp order by hiredate
--��ʾ��5����10��ְ��Ա��
--top������ֱ�ʾ��Ҫȡ����������¼��not in ������
select top 6* from emp where empno not in
(select top 4 empno from emp order by hiredate)
order by hiredate

--identity(1,1),��ʾ�������Ҹ��ƣ���1��ÿ��������һ��
create table test(
testId int primary key identity(1,1),
testName varchar(30),
testPass varchar(30)
)
--����ֵ
insert into test (testName,testPass) values ('shuping','shuping')
--����
insert into test (testName,testPass) select testName,testPass from test
--��ѯ����
select count(*) from test
select * from test


--ɾ���ظ���¼
--distinct��ѯ���ظ��ļ�¼
--����
create table cat(
catId int,
catName varchar(40)
)
insert into cat values(2,'dsw')
select *from cat
--ȡ�����ظ��ļ�¼��������ʱ��#temp��
select distinct *into #temp from cat
--���cat������
delete from cat
--��#temp����cat
insert into cat select *from #temp
drop table #temp

--������
--��ʾÿ��Ա�����ֺͶ�Ӧ�ϼ�����
select wo.ename Ա��,bo.ename �ϼ� from emp wo,emp bo where wo.mgr=bo.empno


--������
--�������ӣ���߼�¼ȫ����ʾ��û��ƥ�����null���
--��ʾÿ��Ա�����ֺͶ�Ӧ�ϼ�����
select wo.ename Ա��,bo.ename �ϼ� from emp wo left join emp bo on wo.mgr=bo.empno
--�������ӣ��ұ߼�¼ȫ����ʾ��û��ƥ�����null���
select wo.ename Ա��,bo.ename �ϼ� from emp wo right join emp bo on wo.mgr=bo.empno




--Լ��
--not null  ,unique  , primary key, foreign key�� ��check
--not null ��Ϊ��
--����
create table test1(
test1Id int primary key identity(1,1),
test1name varchar(30) not null,
test1Pass varchar(30) not null,
test1age int
)
--����
insert into test1(test1age) values (3)
insert into test1(test1name,test1Pass,test1age) values ('','',3)--���ϲ�ͬ
select *from test1

--unique Ψһ������Ϊ��ֵ
create table test2(
test1Id int primary key identity(1,1),--�м�����
test1name varchar(30) unique,
test1Pass varchar(30) ,
test1age int
)
--����
insert into test2(test1name,test1Pass,test1age) values ('aa','123',33)--�ظ�ִ��ʱ����
insert into test2(test1Pass,test1age) values ('123',33)--��Ϊ��ֵ
select *from test2

--��������
create table test3(
test1Id int ,
test1name varchar(30),
test1Pass varchar(30),
test1age int,
primary key(test1Id,test1name)--������
)--��������ͬʱ��ͬ�Ż��޷�����

-- foreign key ����� �����ڴӱ��������Ҫ������Լ����ΨһԼ����
--����������������ݱ����������ж�Ӧֵ��Ϊ��ֵ
--����ֵ�����ж���ӱ�ֵ���󣬴ӱ�ֵֻ��һ������ֵ����
--deptno int foreign key references dept(deptno)--���ű��
--������ñ�dept��deptno

--check :���뱻���������
create table test4(
test1Id int ,
test1name varchar(30),
test1Pass varchar(30),
test1age int check(test1age>0 and test1age<=150)
)
--����
insert into test4(test1name,test1Pass,test1age) values ('ww','dd',3)
insert into test4(test1name,test1Pass,test1age) values ('ww','dd',151)
select *from test4

--default δ��ֵʱĬ�ϸ�ֵ
create table mes(
mesId int primary key identity(1,1),
mescon varchar(2000) not null,
mesDate datetime default getdate()
)
--����
insert into mes(mescon) values ('ww')
insert into mes(mescon,mesDate) values ('ww','2019-12-1')
select *from mes






--�������ݿ�
create database spdd1
--������
create table dept --���ű�
(deptno int primary key,--���ű��
dname nvarchar(30),--������
loc nvarchar(30) --��ַ
)
create table emp( --ְ����
empno int primary key,--���
ename nvarchar(30),--����  
jod nvarchar(30),--����
mgr int, --�ϼ����
hiredate datetime,--��ְʱ��
sal numeric(10,2),--����
comm numeric(10,2),--����
deptno int foreign key references dept(deptno)--���ű��
--������ñ�dept��deptno
)
--���
--1.ֻ�������������е�����
--2.�������������Ҫһ��
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
