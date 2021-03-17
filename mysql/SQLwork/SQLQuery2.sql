--表名规范
--表名以字母和下划线开头
--不要使用sql server的保留字
--不能超过128个字符
--只能使用如下字符A-Z，a-z，0-9，#，-,$等

--unicode编码，以两字节为单位
--非unicode编码，以一字节为单位
--两字节一个汉字
char --定长 最大8000字节（非unicode编码） 
nchar --定长 最大4000字节 unicode编码
 char(10) --不被用完的用空格补齐

 varchar --变长 最大8000字节 非unicode编码
 nvarchar --变长 最大4000字节 unicode编码
 varchar(10) --按文本长度展示，不补空格

 ntext --变长 unicode编码,最大2的30次方
 text --变长 非unicode编码最大2的30次方

 --数字类型
 bit --范围0至1
 int --范围-2的31次方至2的31次方
 bigint --范围-2的63次方至2的63次方减1
 float --小数，不常用
 float(n) --n指定小数长度
 numeric --小数，常用
 numeric(p,s) --p整数部分长度 最大38，s小数部分长度

 datetime --表示日期
 --getdate()时间函数，得到当前时间
 --使用
 (bir datetime)
 insert into ??? values(getdate())

 timestamp --时间戳