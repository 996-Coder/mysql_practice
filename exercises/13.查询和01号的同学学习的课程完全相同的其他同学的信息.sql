# 查询01号同学学习的课程编号
select CID
from sc
where SID = 01;

select s.*
from student s,
     sc
where;


select Student.*
from Student
where SID in
      (select distinct SC.SID
       from SC
       where SID <> 01
         and SC.CID in (select distinct CID from SC where SID = 01)
       group by SC.SID
       having count(1) = (select count(1) from SC where SID = 01))