# 查询两门课程及以上成绩不及格的同学
select SID
from sc
where score < 60
group by SID
having count(1) >= 2;

select s.SID, s.SName, avg(sc.score) 平均成绩
from student s,
     sc
where s.SID = sc.SID
  and sc.SID in (select SID
                 from sc
                 where score < 60
                 group by SID
                 having count(1) >= 2);


select student.SID, student.sname, cast(avg(score) as decimal(18, 2)) avg_score
from student,
     sc
where student.SID = SC.SID
  and student.SID in (select SID from SC where score < 60 group by SID having count(1) >= 2)
group by student.SID, student.sname