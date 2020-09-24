# 查询出学过课程01的学生的id，去子查询中寻找并集
select s.*
from student s,
     sc sc1
where s.SID = sc1.SID
  and sc1.CID = 01
  and sc1.SID in (
    # 子查询查询出学过课程02的学生的SID
    select sc2.SID
    from sc sc2
    where sc2.CID = 02
)
group by s.SID;

select s.*
from student s,
     sc sc2
where s.SID = sc2.SID
  and sc2.CID = 02
  and sc2.SID in (
    select sc1.SID
    from sc sc1
    where sc1.CID = 01
)
group by s.SID;

#–方法1
select Student.*
from Student,
     SC
where Student.SID = SC.SID
  and SC.CID = 01
  and exists(Select 1 from SC SC_2 where SC_2.SID = SC.SID and SC_2.CID = 02)
order by Student.SID;
#–方法2
select Student.*
from Student,
     SC
where Student.SID = SC.SID
  and SC.CID = 02
  and exists(Select 1 from SC SC_2 where SC_2.SID = SC.SID and SC_2.CID = 01)
order by Student.SID;
#–方法3
select m.*
from Student m
where SID in
      (
          select SID
          from (
                   select distinct SID
                   from SC
                   where CID = 01
                   union all
                   select distinct SID
                   from SC
                   where CID = 02
               ) t
          group by SID
          having count(1) = 2
      )
order by m.SID;