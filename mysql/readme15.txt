* �γ̻عˣ�
	* ���ע��͵�½�Ĺ��ܡ�
	* ׼���Ĺ���
		* ��������Դjar��
		
	* �����Ĺ���ʹ��MVCģʽ
	* C�����Ʋ㣨��������ʹӿͻ��˷��͹����Ĳ�����	
		* ���ղ���(request����)		
		* Ϊ�˲������㣨��װ���ݣ���ʡ��BeanUtils��Դ�Ĺ��ߣ�
		* �Լ�new User();	user.setXXX����
		* ���ҵ���߼��Ĵ��루���Ƽ�д��Servlet��	new UserService();		
		* ���ս����ͨ���������ʾ�����ݷ��͸�JSP�����ѽ�����������
		
	* M��ģ�Ͳ㣨JavaBean��װ���ݣ�����JavaBean����ҵ��
		* ����ҵ���߼�����ע��Ĺ��ܡ����û����������������䲻��������
		* ��Ҫ�ѽ������ȥ��
		
	* V����ͼ�㣨������ݵ���ʾ��
		* ��JSP��ҳ�棬ͨ��EL���ʽȡ���ֵ��
		
==========================================================================================================
	* MySQL���ݿ�
		* ���ݿ�
			* ���ݿ����һ���ļ�ϵͳ���������ݵ�ʱ����Ҫͨ����׼��SQL��������ɡ�
			
		* ��ϵ�͵�����
			* �����ʵ����ʵ��֮��Ĺ�ϵ�����û�����Ʒ��������
			
		* ���������ݿ�
			* Oracle		��˾Oracle���׹��ģ����ݲ�Ʒ���շѵĴ��͵����ݿ⡣
			* MySQL			��Դ�ģ���Oracle�չ��ˣ�С�͵����ݿ⡣5.x�汾��ѣ�6.x�շ��ˡ�
			* SQLServer		΢��ģ��շѵ����͵����ݿ⡣
			* DB2			IBM��˾�շѵĴ��͵����ݿ⡣
			* SyBASE		PowerDigener������ǳ�ţ��
			
			
		* MySQL�ļ��
			* ж�ظɾ�
				* �ҵ�MySQL�İ�װ·�����ҵ�my.ini�������ļ���
				* basedir="C:/Program Files (x86)/MySQL/MySQL Server 5.5/"		��װ��·��
				* datadir="C:/ProgramData/MySQL/MySQL Server 5.5/Data/"			MySQL�洢���ݵ�·��
				
				* ͨ���������ж��MySQL
				* �ҵ����������·����ɾ����ok�ˡ�
				
				
			* ��װ��
				* ��װ·����Ҫ�����ģ�*****��
				* MySQLĬ�϶˿���3306����Ҫ�޸ġ�
				* ����MySQL�ı��뼯������UTF-8�ı��룩
				* Ҫ�Ѻڴ��ڵĹ���ѡ�ϡ�
				* �����û��������룺���ж������룬��һ�������룬�ڶ�����ȷ�����롣
				* ��װ��ɡ�
				
			* ���ʣ�
				cmd > ��������	mysql -u root -p �س�
				�������� �س�
				
				
			* ��������
				1.ֹͣmysql����:
					services.msc ���뵽�������
					
				2.��cmd>����һ������:
					mysqld --skip-grant-tables	(����һ��mysql����,����Ҫ������֤.)
					
				3.�´�һ��cmd����
					mysql -u root -p  ����Ҫ��������.�Ϳ��Խ���.
				
				4.�������� show databases;�鿴���ݿ⣬�������� use mysql;ʹ��mysql���ݿ⡣
				5.�޸���������:
					update user set password=password('root') WHERE user='root';
				6.���������ڶ��ر�.
				7.����������н�����mysqld������.
				8.����mysql����
				
				
		* MySQL֮��Ĺ�ϵ����ͼ��
			* �ܽ᣺һ�����ݿ�ķ��������ж�����ݿ⣬һ�����ݿ����ж����
				ÿ�����ж���ֶΡ��ֶκ�Java����������Ƕ�Ӧ�ġ�
				ÿһ����¼��Ӧ��һ��Javaʵ������
				
				
		* SQL��䣨*****��
			* SQL�ļ��
				* Structured Query Language, �ṹ����ѯ����
				* �ǹ����Ե�����
					* �����Ե����ԣ�����һ����䣬��Ҫ������һ�������ϼ�����䡣
					* �ǹ����Ե����ԣ�дһ����䣬�ͻ�ִ��һ�������
					
				* Oracle����PL/SQL��ֻ����Oracleʹ�á�
				* SQL Server��Sybase��T-SQL
				
			* SQL���Է���
				* DDL�����ݶ������ԣ�
					* �������ݿ⡢������
					
				* DML�����ݲ������ԣ���*****��
					* ��������(insert) �޸�����(update)	ɾ������(delete)
					
				* DCL �����ݿ������ԣ�
					* if else
					
				* DQL�����ݲ�ѯ���ԣ���*****��
					* ��ѯ���� select
					
					
			* ���ݿ⣨CURD -- ��ɾ�Ĳ飩
				* �������ݿ�
					* �﷨��create database ��������;		����һ�������ˡ�	
					* 		create database ���ݿ����� character set ���� collate У�Թ���;
						
					* У�Թ��򣺺ͱ����ǳɶԳ��ֵġ�
					
				* ��ϰ
					����һ������Ϊmydb1�����ݿ⡣
						create database mydb1;
					����һ��ʹ��utf8�ַ�����mydb2���ݿ⡣
						create database mydb2 character set 'utf8';
					����һ��ʹ��utf8�ַ���������У�Թ����mydb3���ݿ⡣
						create database mydb3 character set 'utf8' collate 'utf8_bin';
						
				* �鿴���ݿ�	show databases;		
				* ��ѯ���ݿ�Ķ���	show create database ���ݿ�;
					show create database mydb2;
					
				* ɾ�����ݿ�	drop database ���ݿ�����;
				
				��ϰ
					�鿴��ǰ���ݿ�������е��������ݿ�
						show databases;
					�鿴ǰ�洴����mydb2���ݿ�Ķ�����Ϣ
						show create database mydb2;
					ɾ��ǰ�洴����mydb1���ݿ�
						drop database mydb1;
				
				* �޸����ݿ�
					* �﷨��alter database ���ݿ� character set ���� collate У�Թ���;
					
					* ��ϰ���鿴�������е����ݿ⣬��������ĳһ������ַ����޸�Ϊgbk
						alter database mydb2 character set 'gbk';
					
				* �����Ĳ���
					* �л����ݿ⣨*****�� use db_name;
					* �鿴��ǰʹ�õ����ݿ� select database();
					
					
			* ��table����CURD -- ��ɾ�Ĳ飩
				* �﷨��
					create table ����(
						�ֶ�1 ����(����) Լ��,
						�ֶ�2 ����(����) Լ��,
						�ֶ�3 ����(����) Լ��,
						�ֶ�4 ����(����) Լ��
					);
					
					ע�⣺
						* ����С���ţ�����Ҫ�зֺš�
						* ÿһ���ֶκ���Ҫ�ж��ţ��������һ��û�ж��š�
						* ���ݵ����ͺ����г��ȣ�������ַ������ͣ����ȱ���ӡ�����������Ϳ��Բ��ӡ�Ĭ�ϳ��ȡ�int Ĭ�ϳ���11
						
						
					public class User{
						int id;
						String name;
						String pass;
						String eamil;
						String nikename;
					}
					
				* ���ݵ�����
					�ַ����� 
					VARCHAR��CHAR
						* varchar��char����
							* varchar������ʹ�ã� �����ǿɱ�ġ� name varchar(8) ��������hello�������������helloworld�����ˡ�
							* char				���Ȳ��ɱ�ġ�   name char(8) ���������hello����������ÿո�ȫ��
							* Ч�ʸߣ�charЧ����
							
					���������ͣ�һ�㲻�ã�
					BLOB��TEXT
						BLOB���������ļ�
						TEXT���ַ�
						
					��ֵ��
					TINYINT ��SMALLINT��INT��BIGINT��FLOAT��DOUBLE
					
					�߼��� ��Ӧboolean
					BIT
					
					������
					DATE��TIME��DATETIME��TIMESTAMP
						* date	ֻ��������
						* time	ֻ����ʱ����
						* datetime��timestamp�������ں�ʱ��������
							* datetime��Ҫ�ֶ�¼��ʱ�䡣
							* timestamp���������ݣ�Ĭ��ѡ��ǰϵͳʱ�䡣
						
				* ��ϰ�����������ϰ
					create table employee(
						id int,
						name varchar(20),
						gender varchar(10),
						birthday date,
						entry_date date,
						job varchar(100),
						salary double,
						resume text
					);
					
				
			* Լ��������
				* ����Լ����*****��
					* ��ʶ��Ǹ�����¼��	ͨ��pramary key������������Ĭ��Ψһ���ǿգ�
					* auto_increment	���ݿ�ά���������Զ�������
					
				* ΨһԼ��
					* ֵ��Ψһ�ġ�ʹ��unique����
					
				* �ǿ�Լ��
					* ֵ����Ϊ��	not null
					
			* �����µı�ǩemployee2����Լ�����ϡ�
				create table employee2(
					id int primary key auto_increment,
					name varchar(20) unique not null,
					gender varchar(10) not null,
					birthday date not null,
					entry_date date not null,
					job varchar(100) not null,
					salary double not null,
					resume text not null
				);
				
			* ʹ��desc ����; �鿴�����Ϣ	
			* show tables ; �鿴��ǰ�������б���
			* show create table ����; �鿴���������ַ���
				
			* ɾ����
				drop table employee2;
				
			* �޸ı�
				alter table ���� add �ֶ� ����(����) Լ��;	 				-- ����ֶ�
				alter table ���� drop �ֶ�;									-- ɾ���ֶ�
				alter table ���� modify �ֶ� ����(����) Լ��;				-- �޸����ͻ���Լ��
				alter table ���� change ���ֶ� ���ֶ� ����(����) Լ��		-- �޸��ֶε�����	
				
				rename table ���� to �±���;								-- �޸ı���
				alter table ���� character set utf8;						-- �޸��ַ���
				
			* ��ϰ
				������Ա����Ļ���������һ��image�С�
					alter table employee add image varchar(20);
				�޸�job�У�ʹ�䳤��Ϊ60��
					alter table employee modify job varchar(60);
				ɾ��gender�С�
					alter table employee drop gender;
				������Ϊuser��
					rename table employee to user;
				�޸ı���ַ���Ϊutf8
					alter table user character set utf8;
				����name�޸�Ϊusername
					alter table user change name username varchar(30);
					
				
		* ���ݣ�CURD -- ��ɾ�Ĳ飩(******)
			
			* �������
			* insert into ���� (�ֶ�1,�ֶ�2,�ֶ�3..) values(ֵ1,ֵ2,ֵ3...);	�м��оͲ�����ٵ�ֵ��
			* insert into ���� values(ֵ1,ֵ2,ֵ3...);							�������е���
			
			* ע�⣺
				* �������ֶε�������ͬ��
				* �ֶγ�����Ҫ���ơ�
				* �ַ�����������������Ҫʹ��''	
				
			* ��user���в�������
				insert into user values (1,'xiaofeng','1994-10-10','2011-1-1','HR',19000,'aaa','abc');
				insert into user values (2,'����','1994-10-10','2011-1-1','HR',19000,'aaa','abc');
				insert into user values (3,'С��','1994-10-10','2011-1-1','WORKER',21000,'aaa','abc');
				insert into user values (4,'ܽ��','1994-10-10','2011-1-1','HR',1000,'aaa','abc');
				insert into user values (5,'�೤','1994-10-10','2011-1-1','HR',100,'aaa','abc');
				
			* ���������������⣨*****��
				[client]
				port=3306
				[mysql]
				default-character-set=gbk
			* �޸�����Ҫ������������	
			
			
		* �޸����
			* �﷨��	update ���� set �ֶ�=ֵ,�ֶ�=ֵ... [where ]		
				* ���û��where������Ĭ�ϸ������еļ�¼��
				* ��where�ύ��ѡ��ĳһ����¼��
				
			������Ա��нˮ�޸�Ϊ5000Ԫ��
				update user set salary=5000;
				
			������Ϊ���೤����Ա��нˮ�޸�Ϊ3000Ԫ��
				update user set salary=3000 where username='�೤';
				
			������Ϊ����������Ա��нˮ�޸�Ϊ4000Ԫ,job��ΪBOSS��
				update user set salary=4000,job='BOSS' where username='����';
				
			���೤��нˮ��ԭ�л���������1000Ԫ��	
				update user set salary = salary+1000 where username='�೤';
				
		* ɾ������	delete
			�﷨��delete from ���� [where ];	ɾ������
			truncate ����; ɾ�����е�����
				
			* truncate �� delete������
				* truncateɾ�����ݣ���ɾ���������ٴ���һ���µĿյı���Ч�ʣ�
				* deleteɾ�����ݣ�һ��һ��ɾ���ġ���*****��
					
				* ���insert update delete��
					
			ɾ����������Ϊ���೤���ļ�¼��
				* delete from user where username='�೤';
			ɾ���������м�¼��
				* delete from user;
			ʹ��truncateɾ�����м�¼��
				* truncate user;
					
					
		* ��ѯ���			
			* �﷨��	select * from ����;								��ѯ���У��ֶΣ�
						select �ֶ���1,�ֶ���2,�ֶ���3 from ����;		��ʾ��ѯ�ֶ���
						select DISTINCT �ֶ��� from ����;				ȥ���ظ������ݡ�		
						
						
			��ѯ��������ѧ������Ϣ��
				select * from stu;
			��ѯ��������ѧ���������Ͷ�Ӧ��Ӣ��ɼ���
				select name,english from stu;
			���˱����ظ����ݡ��������⣩
				select distinct english from stu;
	
				
			* ��ѯ���п�������
			* ����ʹ�ñ�����ʹ��as ����		����as����ʡ�ԡ�
				
				��ϰ��
					������ѧ�������ϼ�10���س��֡�
						select name,math+10,english+10,chinese+10 from stu;
					ͳ��ÿ��ѧ�����ܷ֡�
						select name,math+english+chinese from stu;
						
					ʹ�ñ�����ʾѧ��������
					select name,(math+english+chinese) as sum from stu;
					
					
			* ʹ��where��������	
				��ѯ����Ϊ�೤��ѧ���ɼ�
					select * from stu where name='�೤';
					
				��ѯӢ��ɼ�����90�ֵ�ͬѧ
					select name,english from stu where english < 15;
					
				��ѯ�ִܷ���200�ֵ�����ͬѧ
					select name,math+english+chinese from stu where (math+english+chinese) > 200;
					
			* ���õķ���
				>   <   <=   >=   =    <>�������ڣ�
				in(��Χ��ȡ����)
				like		-- ģ����ѯ		д����like '��_����%';	_��%����ռλ����_ֻһ��%�����ж��
													%��д��	like '%��';		���XXX��
															like '��%';		�����XXX
															like '%��%';	ֻҪ���ž���
				is null		-- �ж��Ƿ�Ϊnull
				and			-- ����
				or			-- ����
				not			-- ������
				
				
				* ��ϰ
					��ѯӢ������� 80��90֮���ͬѧ��
						select * from stu where english >80 and english <90;
						select * from stu where english between 80 and 90;
						
					��ѯ��ѧ����Ϊ18,78,46��ͬѧ����in��
						select * from stu where math in(18,78,46);
						
					��ѯ�����հ��ѧ���ɼ���
						select * from stu where name like '��%';
					��ѯ��ѧ��>80�����ķ�>80��ͬѧ��
						select * from stu where math >80 or chinese > 80;
			
			* ����	ʹ��order by ����Ĭ�ϵ�(asc)/����(desc)
				* ����select�����ĩβ��
				
				
				��ϰ
					����ѧ�ɼ�����������
						select name,math from stu order by math;
					���ܷ����򰴴Ӹߵ��͵�˳�����
						select name,math+english+chinese from stu order by (math+english+chinese) desc;
					��ѧ���ɼ�����Ӣ����н�������Ӣ����ͬѧԱ������ѧ����
						select * from stu order by english desc,math desc;
						
					��������ѧ���ɼ��������
						select * from stu where name like '��%' order by english desc;
				
					
			* �ۼ�����	
				* count		��ȡ����
					��ϰ��
					ͳ��һ���༶���ж���ѧ����
						select count(*) from stu;
					ͳ����ѧ�ɼ�����90��ѧ���ж��ٸ���
						select count(*) from stu where math > 90;
					ͳ���ִܷ���150�������ж��٣�
						select count(*) from stu where (math+english+chinese) > 150;
					
				* sum		��ͣ�����nullֵ��		����ͬifnull(xxx,0)
					ͳ��һ���༶��ѧ�ܳɼ���
						select sum(math) from stu;
					ͳ��һ���༶���ġ�Ӣ���ѧ���Ƶ��ܳɼ�
						select sum(math),sum(english),sum(chinese) from stu;
					ͳ��һ���༶���ġ�Ӣ���ѧ�ĳɼ��ܺ�
						select sum(ifnull(math,0)+english+chinese) from stu;
						select sum(math)+sum(english)+sum(chinese) from stu;
						
					ͳ��һ���༶���ĳɼ�ƽ����
						select sum(chinese) / count(*) from stu;
					
				* avg		ƽ����
					��ϰ��
					��һ���༶��ѧƽ���֣�
						select avg(math) from stu;
					��һ���༶�ܷ�ƽ����
						select avg(ifnull(math,0)+english+chinese) from stu;
						
				* max		���ֵ
					select max(math) from stu;
				* min		��Сֵ
					select min(math) from stu;
					
					
				* group by	���飨һ��ʹ�ã�	����������Ҫ��having������ʹ��where
					��ϰ���Զ���������Ʒ�������ʾÿһ����Ʒ���ܼ�.
						select product,count(*),sum(price) from orders group by product;
						
					��ϰ����ѯ�����˼�����Ʒ������ÿ���ܼ۴���100����Ʒ	
						select product,sum(price) from orders group by product having sum(price) > 100;
					
					
		* С�� select ��� �� S-F-W-G-H-O ��� select ... from ... where ... group by... having... order by ... ; 
					˳���ܸı�
					
					
					
create table orders(
	id int,
	product varchar(20),
	price float
);

insert into orders(id,product,price) values(1,'����',900);
insert into orders(id,product,price) values(2,'ϴ�»�',100);
insert into orders(id,product,price) values(3,'ϴ�·�',90);
insert into orders(id,product,price) values(4,'����',9);
insert into orders(id,product,price) values(5,'ϴ�·�',90);
insert into orders(id,product,price) values(6,'����',900);

		
		
		
	
	
	
	
	
	
	
	
	
	
	
	
	
	
