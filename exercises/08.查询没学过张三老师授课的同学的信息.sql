select s.*
from student s
where s.SID not in (
# 子查询查询出所有学过张三老师授课的学生的SID
# 学生表中
    select sc.SID
    from course c,
         teacher t,
         sc
    where t.Tname = '张三'
      and t.TID = c.TID
      and c.CID = sc.CID)
group by s.SID;

