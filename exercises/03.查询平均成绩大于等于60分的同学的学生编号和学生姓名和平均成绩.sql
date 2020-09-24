select s.SID, s.Sname, avg(sc.score) 平均成绩
from student s,
     sc
where sc.SID = s.SID
group by s.SID
having avg(sc.score) >= 60
order by s.SID;


select a.SID, a.Sname, cast(avg(b.score) as decimal(18, 2)) avg_score
from Student a,
     sc b
where a.SID = b.SID
group by a.SID, a.Sname
having cast(avg(b.score) as decimal(18, 2)) >= 60
order by a.SID