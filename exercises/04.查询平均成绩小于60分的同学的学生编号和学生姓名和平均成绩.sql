select s.SID 学生编号, s.Sname 学生姓名, ifnull(avg(sc.score), 0) 平均成绩
from student s
         left join sc on s.SID = sc.SID
group by s.SID
having ifnull(avg(sc.score), 0) < 60
order by s.SID;


select a.SID, a.Sname, ifnull(cast(avg(b.score) as decimal(18, 2)), 0) avg_score
from Student a
         left join sc b
                   on a.SID = b.SID
group by a.SID, a.Sname
having ifnull(cast(avg(b.score) as decimal(18, 2)), 0) < 60
order by a.SID;

