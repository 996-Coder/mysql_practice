select s.*, sc.score, sc.CID, avg(score)
from student s,
     sc
where s.SID = sc.SID
group by s.SID, sc.CID
order by avg(score) desc;




select a.SID                                                  学生编号,
       a.Sname                                                学生姓名,
       max(case c.Cname when '语文' then b.score else null end) 语文,
       max(case c.Cname when '数学' then b.score else null end) 数学,
       max(case c.Cname when '英语' then b.score else null end) 英语,
       cast(avg(b.score) as decimal(18, 2))                   平均分
from Student a
         left join SC b on a.SID = b.SID
         left join Course c on b.CID = c.CID
group by a.SID, a.Sname
order by 平均分 desc