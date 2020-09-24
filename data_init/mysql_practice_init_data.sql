# 创建课程表
create table course
(
    CID   varchar(10)              null,
    Cname varchar(10) charset utf8 null,
    TID   varchar(10)              null
);

INSERT INTO course (CID, Cname, TID) VALUES ('01', '语文', '02');
INSERT INTO course (CID, Cname, TID) VALUES ('02', '数学', '01');
INSERT INTO course (CID, Cname, TID) VALUES ('03', '英语', '03');

# 创建成绩表
create table sc
(
    SID   varchar(10)    null,
    CID   varchar(10)    null,
    score decimal(18, 1) null
);

INSERT INTO sc (SID, CID, score) VALUES ('01', '01', 80.0);
INSERT INTO sc (SID, CID, score) VALUES ('01', '02', 90.0);
INSERT INTO sc (SID, CID, score) VALUES ('01', '03', 99.0);
INSERT INTO sc (SID, CID, score) VALUES ('02', '01', 70.0);
INSERT INTO sc (SID, CID, score) VALUES ('02', '02', 60.0);
INSERT INTO sc (SID, CID, score) VALUES ('02', '03', 80.0);
INSERT INTO sc (SID, CID, score) VALUES ('03', '01', 80.0);
INSERT INTO sc (SID, CID, score) VALUES ('03', '02', 80.0);
INSERT INTO sc (SID, CID, score) VALUES ('03', '03', 80.0);
INSERT INTO sc (SID, CID, score) VALUES ('04', '01', 50.0);
INSERT INTO sc (SID, CID, score) VALUES ('04', '02', 30.0);
INSERT INTO sc (SID, CID, score) VALUES ('04', '03', 20.0);
INSERT INTO sc (SID, CID, score) VALUES ('05', '01', 76.0);
INSERT INTO sc (SID, CID, score) VALUES ('05', '02', 87.0);
INSERT INTO sc (SID, CID, score) VALUES ('06', '01', 31.0);
INSERT INTO sc (SID, CID, score) VALUES ('06', '03', 34.0);
INSERT INTO sc (SID, CID, score) VALUES ('07', '02', 89.0);
INSERT INTO sc (SID, CID, score) VALUES ('07', '03', 98.0);

# 创建学生表
create table student
(
    SID   varchar(10)              null,
    Sname varchar(10) charset utf8 null,
    Sage  datetime                 null,
    Ssex  varchar(10) charset utf8 null
);

INSERT INTO student (SID, Sname, Sage, Ssex) VALUES ('01', '赵雷', '1990-01-01 00:00:00', '男');
INSERT INTO student (SID, Sname, Sage, Ssex) VALUES ('02', '钱电', '1990-12-21 00:00:00', '男');
INSERT INTO student (SID, Sname, Sage, Ssex) VALUES ('03', '孙风', '1990-05-20 00:00:00', '男');
INSERT INTO student (SID, Sname, Sage, Ssex) VALUES ('04', '李云', '1990-08-06 00:00:00', '男');
INSERT INTO student (SID, Sname, Sage, Ssex) VALUES ('05', '周梅', '1991-12-01 00:00:00', '女');
INSERT INTO student (SID, Sname, Sage, Ssex) VALUES ('06', '吴兰', '1992-03-01 00:00:00', '女');
INSERT INTO student (SID, Sname, Sage, Ssex) VALUES ('07', '郑竹', '1989-07-01 00:00:00', '女');
INSERT INTO student (SID, Sname, Sage, Ssex) VALUES ('08', '王菊', '1990-01-20 00:00:00', '女');

# 创建教师表
create table teacher
(
    TID   varchar(10)              null,
    Tname varchar(10) charset utf8 null
);

INSERT INTO teacher (TID, Tname) VALUES ('01', '张三');
INSERT INTO teacher (TID, Tname) VALUES ('02', '李四');
INSERT INTO teacher (TID, Tname) VALUES ('03', '王五');

