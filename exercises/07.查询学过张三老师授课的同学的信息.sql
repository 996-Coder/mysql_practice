select s.*
from student s,
     course c,
     teacher t,
     sc
where t.Tname = '张三'
  and t.TID = c.TID
  and c.CID = sc.CID
  and sc.SID = s.SID
order by s.SID;


select distinct Student.*
from Student,
     SC,
     Course,
     Teacher
where Student.SID = SC.SID
  and SC.CID = Course.CID
  and Course.TID = Teacher.TID
  and Teacher.Tname = '张三'
order by Student.SID
