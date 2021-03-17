--创建学生表
create table stu(
stuId varchar(30) primary key,

stuName nvarchar(50) not null,

stuSex nchar(1) check(stuSex in('男','女')) default '男',

stuAge int check (stuAge>1),

stuJg nvarchar(30),

stuDept nvarchar(40)

)

insert into stu values('sp001','士大夫','男',20,'山东','史蒂夫')
insert into stu values('sp002','圣斗士','男',20,'山东','史蒂夫')
insert into stu values('sp003','大股东','男',20,'山东','史蒂夫')
insert into stu values('sp004','好大夫','男',20,'山东','史蒂夫')

select * from stu