select s.*, sc1.score, sc2.score
from student s,
     sc sc1,
     sc sc2
where sc1.SID = s.SID
  and sc2.SID = s.SID
  and sc1.CID = 01
  and sc2.CID = 02
  and sc1.score < sc2.score
group by s.SID;


select s.*, sc1.score, sc2.score
from student s
        left join sc sc1 on s.SID = sc1.SID and sc1.CID = 01
        left join sc sc2 on s.SID = sc2.SID and sc2.CID = 02
where sc2.score > ifnull(sc1.score,0)