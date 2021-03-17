--备份数据库
backup database bbd to disk='C:/s.bak'
--删除数据库
drop database LiangshangHero2
--恢复数据库
restore database bbd from disk='c:/s.bak'