--����ѧ����
create table stu(
stuId varchar(30) primary key,

stuName nvarchar(50) not null,

stuSex nchar(1) check(stuSex in('��','Ů')) default '��',

stuAge int check (stuAge>1),

stuJg nvarchar(30),

stuDept nvarchar(40)

)

insert into stu values('sp001','ʿ���','��',20,'ɽ��','ʷ�ٷ�')
insert into stu values('sp002','ʥ��ʿ','��',20,'ɽ��','ʷ�ٷ�')
insert into stu values('sp003','��ɶ�','��',20,'ɽ��','ʷ�ٷ�')
insert into stu values('sp004','�ô��','��',20,'ɽ��','ʷ�ٷ�')

select * from stu