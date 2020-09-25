select s.*
from student s,
     sc
where sc.SID = s.SID
group by s.SID
having count(sc.CID) < (select count(CID) from course);

# 必须要用left join, 否则一门课程都没有选的同学信息不会被查询出来
select Student.*
from Student left join SC
on Student.SID = SC.SID
group by Student.SID , Student.Sname , Student.Sage , Student.Ssex having count(CID) < (select count(CID) from Course)