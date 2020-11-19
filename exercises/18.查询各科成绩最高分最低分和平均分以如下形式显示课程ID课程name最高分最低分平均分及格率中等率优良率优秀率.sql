-- 查询各科成绩最高分、最低分和平均分：以如下形式显示：课程ID，课程name，最高分，最低分，平均分，及格率，中等率，优良率，优秀率
-- 及格为>=60，中等为：70-80，优良为：80-90，优秀为：>=90

select sc.CID as                                                              课程ID,
       c.Cname                                                                课程名称,
       max(sc.score)                                                          最高分,
       min(sc.score)                                                          最低分,
       cast(avg(sc.score) as decimal(18, 2))                                  平均分,
       cast((select count(1) from sc where c.CID = sc.CID and sc.score >= 60) * 100 /
            (select count(1) from sc where sc.CID = c.CID) as decimal(18, 2)) 及格率,
       cast((select count(1) from sc where c.CID = sc.CID and sc.score >= 70 and sc.score < 80) * 100 /
            (select count(1) from sc where sc.CID = c.CID) as decimal(18, 2)) 中等率,
       cast((select count(1) from sc where c.CID = sc.CID and sc.score >= 80 and sc.score < 90) * 100 /
            (select count(1) from sc where sc.CID = c.CID) as decimal(18, 2)) 优良率,
       cast((select count(1) from sc where c.CID = sc.CID and sc.score >= 90) * 100 /
            (select count(1) from sc where sc.CID = c.CID) as decimal(18, 2)) 优秀率
from sc,
     course c
where sc.CID = c.CID
group by c.CID;


select c.CID                                                               课程编号,
       c.Cname                                                             课程名称,
       max(sc.score)                                                        最高分,
       min(sc.score)                                                        最低分,
       cast(avg(sc.score) as decimal(18, 2))                                平均分,
       cast((select count(1) from SC where CID = c.CID and score >= 60) * 100.0 /
            (select count(1) from SC where CID = c.CID) as decimal(18, 2)) 及格率,
       cast((select count(1) from SC where CID = c.CID and score >= 70 and score < 80) * 100.0 /
            (select count(1) from SC where CID = c.CID) as decimal(18, 2)) 中等率,
       cast((select count(1) from SC where CID = c.CID and score >= 80 and score < 90) * 100.0 /
            (select count(1) from SC where CID = c.CID) as decimal(18, 2)) 优良率,
       cast((select count(1) from SC where CID = c.CID and score >= 90) * 100.0 /
            (select count(1) from SC where CID = c.CID) as decimal(18, 2)) 优秀率
from Course c,
     sc
where c.CID = sc.CID
group by c.CID, c.Cname
order by c.CID;


select c.CID                                                                 课程编号,
       c.Cname                                                               课程名称,
       (select max(score) from SC where CID = c.CID)                         最高分,
       (select min(score) from SC where CID = c.CID)                         最低分,
       (select cast(avg(score) as decimal(18, 2)) from SC where CID = c.CID) 平均分,
       cast((select count(1) from SC where CID = c.CID and score >= 60) * 100.0 /
            (select count(1) from SC where CID = c.CID) as decimal(18, 2))   及格率,
       cast((select count(1) from SC where CID = c.CID and score >= 70 and score < 80) * 100.0 /
            (select count(1) from SC where CID = c.CID) as decimal(18, 2))   中等率,
       cast((select count(1) from SC where CID = c.CID and score >= 80 and score < 90) * 100.0 /
            (select count(1) from SC where CID = c.CID) as decimal(18, 2))   优良率,
       cast((select count(1) from SC where CID = c.CID and score >= 90) * 100.0 /
            (select count(1) from SC where CID = c.CID) as decimal(18, 2))   优秀率
from Course c
order by c.CID