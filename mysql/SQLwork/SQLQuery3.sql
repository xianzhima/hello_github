
--����
drop table spname --ɾ��

create table clerk --����
(cleId int primary key,
--��������������ֵ�����ظ�,���븳ֵ
cleName nvarchar(50),
age int
)

insert into clerk values(1,'�ֱ���',18)
insert into clerk values(2,'����',18)
insert into clerk values(4,'��ĸ',75)
insert into clerk values(5,'����',70)
--���ֲ���
insert into clerk(cleId,cleName) values(3,'������')

select*from clerk --��ѯ

--�޸�
update clerk set age=38 where cleName='����'
--�����޸�
update clerk set cleName='Ѧ�',age=40 where cleId=2
--�Կ�ֵΪ�޸�����
update clerk set cleName='Ѧ����' where age is null

--ɾ������Ϊ75������
delete from clerk where age=75
--ɾ������Ϊ70-75������
delete from clerk where age<=75 and age >=70
--ɾ������Ϊ70-75��������Ϊ�յ�
delete from clerk where (age<=75 and age >=70) or age is null
