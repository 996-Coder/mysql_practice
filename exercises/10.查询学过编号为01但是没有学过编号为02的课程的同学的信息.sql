select distinct s.*
from student s,
     sc
where s.SID = sc.SID
  and sc.CID = 01
  and sc.SID not in (
    select sc.SID
    from sc
    where sc.CID = 02
      and sc.SID = s.SID
);

# 查询学过课程01的学生信息
select *
from student,
     sc
where sc.CID = 01
  and sc.SID = student.SID
group by student.SID;
# 查询没有学过课程02的学生信息
select distinct *
from student
where SID not in (select student.SID
                  from student,
                       sc
                  where sc.CID = 02
                    and sc.SID = student.SID);
# 学过01 但没有学过 02
select distinct s.*
from student s,
     sc
where sc.CID = 01
  and sc.SID = s.SID
  and sc.SID not in (
    # 查询学过02课程的学生ID
    select s.SID
    from student s,
         sc
    where sc.CID = 02
      and sc.SID = s.SID);

select Student.*
from Student,
     SC
where Student.SID = SC.SID
  and SC.CID = 01
  and not exists(Select 1 from SC SC_2 where SC_2.SID = SC.SID and SC_2.CID = 02)
group by Student.SID
order by Student.SID;

select Student.*
from Student,
     SC
where Student.SID = SC.SID
  and SC.CID = 01
  and Student.SID not in (Select SC_2.SID from SC SC_2 where SC_2.SID = SC.SID and SC_2.CID = 02)
group by Student.SID
order by Student.SID