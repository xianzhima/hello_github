--�������ݿ�
create database LiangshangHero2

--������
use LiangshangHero2--ʹ��ĳ�����ݿ�
go
--ɾ�����ṹ�����ݣ�
drop table hero

create table hero
(heroid int,--����
heroName varchar(50),--����
heroNickName varchar(50),--���
sex char(2),
sal int)

--ʹ��sql������������
insert into hero values(1,'�ν�','��ʱ��','��',20000)
insert into hero values(2,'¬����','������','��',15000)
insert into hero values(3,'����','�Ƕ���','��',30)
insert into hero values(4,'����ʤ','������','��',80)

--ʹ��sql����ѯ����
select*from hero
--������ѯ
select*from hero where sal<100

--�޸����
update hero set sal=sal*1.1 where sal <100

--ɾ�����
delete from hero where sex='Ů'