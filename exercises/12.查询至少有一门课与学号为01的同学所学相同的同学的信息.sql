# 查询学号为01的同学所选课程
select sc.CID from sc where sc.SID = 01;

select s.* from student s, sc  where s.SID = sc.SID and sc.SID != 01 and sc.CID in (select sc.CID from sc where sc.SID = 01) group by s.SID;

select distinct Student.* from Student , SC where Student.SID = SC.SID and SC.CID in (select CID from SC where SID = 01) and Student.SID <> 01;
