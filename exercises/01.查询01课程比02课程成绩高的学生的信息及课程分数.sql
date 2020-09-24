select s.*, sc1.score 课程01的分数, sc2.score 课程02的分数
from student s,
     sc sc1,
     sc sc2
where sc1.SID = sc2.SID
  and sc1.score > sc2.score
  and sc1.CID = 01
  and sc2.cid = 02
  and sc1.SID = s.SID
group by s.SID;


select s.*, sc1.score 课程01的分数, sc2.score 课程02的分数
from student s
         left join sc sc1 on sc1.SID = s.SID and sc1.CID = 01
         left join sc sc2 on s.SID = sc2.SID and sc2.CID = 02
where sc1.score > IFNULL(sc2.score, 0);



