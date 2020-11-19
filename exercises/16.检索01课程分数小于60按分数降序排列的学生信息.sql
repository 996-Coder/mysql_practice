select s.*
from student s,
     sc
where s.SID = sc.SID
  and sc.CID = 01
  and sc.score < 60
order by sc.score desc;


select student.*, sc.CID, sc.score
from student,
     sc
where student.SID = SC.SID
  and sc.score < 60
  and sc.CID = 01
order by sc.score desc