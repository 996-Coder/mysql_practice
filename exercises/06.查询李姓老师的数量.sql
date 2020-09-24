select count(teacher.Tname) 李姓老师的数量
from teacher
where Tname
          like '李%';

select count(Tname) 李姓老师的数量
from Teacher
where left(Tname, 1) = '李';