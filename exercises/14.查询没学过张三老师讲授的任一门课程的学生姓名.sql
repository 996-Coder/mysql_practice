# 查询张三老师讲授的课程ID
select CID
from course
where TID = (select TID from teacher where Tname = '张三');

# 查询学过张三老师的课程的学生
select s.SID
from student s,
     sc
where s.SID = sc.SID
  and sc.CID = (select CID
                from course
                where TID = (select TID from teacher where Tname = '张三'))
group by s.SID;

# 查询没有学过张三老师的课程的学生
select distinct Sname
from student s
where SID not in (select s.SID
                  from student s,
                       sc
                  where s.SID = sc.SID
                    and sc.CID = (select CID
                                  from course
                                  where TID = (select TID from teacher where Tname = '张三'))
                  group by s.SID
);
select distinct Sname
from student s
where SID not in (select sc.SID
                  from sc,
                       teacher t,
                       course c
                  where sc.CID = c.CID
                    and c.TID = t.TID
                    and t.Tname = '张三'
                  group by s.SID
);


select student.*
from student
where student.SID not in
      (select distinct sc.SID
       from sc,
            course,
            teacher
       where sc.CID = course.CID
         and course.TID = teacher.TID
         and teacher.tname = '张三')
order by student.SID;