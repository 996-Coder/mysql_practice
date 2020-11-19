select s.SID, s.Sname, ifnull(sum(sc.score), 0) 总成绩
from student s,
     sc
where s.SID = sc.SID
group by SID
order by 总成绩 desc;

select s.SID, s.Sname, ifnull(sum(sc.score), 0) 总成绩
from student s
         left join sc on s.SID = sc.SID
group by s.SID, s.Sname
order by 总成绩 desc;

select m.SID                 学生编号,
       m.Sname               学生姓名,
       ifnull(sum(score), 0) 总成绩
from Student m
         left join SC n on m.SID = n.SID
group by m.SID, m.Sname
order by 总成绩 desc;