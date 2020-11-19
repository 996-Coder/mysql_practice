select c.CID 课程编号, c.Cname 课程名称, t.Tname 授课老师, cast(avg(sc.score) as decimal(18, 2)) 平均分
from teacher t,
     sc,
     course c
where t.TID = c.TID
  and c.CID = sc.CID
group by c.CID
order by 平均分 desc;


select m.TID, m.Tname, cast(avg(o.score) as decimal(18, 2)) avg_score
from Teacher m,
     Course n,
     SC o
where m.TID = n.TID
  and n.CID = o.CID
group by m.TID, m.Tname
order by avg_score desc