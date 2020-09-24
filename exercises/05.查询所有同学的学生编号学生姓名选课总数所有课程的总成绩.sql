select s.SID,
       s.Sname,
       ifnull(count(sc.CID), 0) 选课总数,
       ifnull(sum(sc.score), 0) 总成绩
from student s
         left join sc on s.SID = sc.SID
group by s.SID, s.Sname
order by s.SID;

# 如果不用left join这样 sc表中不存在成绩的学生信息就不会被查询出来
select s.SID, s.Sname, ifnull(count(sc.CID), 0) 选课总数, ifnull(sum(sc.score), 0) 总成绩
from student s,
     sc
where s.SID = sc.SID
group by s.SID, s.Sname
order by s.SID;


select a.SID 学生编号, a.Sname 学生姓名, count(b.CID) 选课总数, sum(score) 所有课程的总成绩
from Student a
         left join SC b
                   on a.SID = b.SID
group by a.SID, a.Sname
order by a.SID