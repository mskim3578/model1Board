drop table board  purge;
drop   sequence BoardSer;

create table board(
num int not null primary key,  
boardid varchar(1) default '1',
writer varchar(10) not null,
email varchar(30),
subject varchar(50) not null,
passwd varchar(12) not null,
reg_date date not null,
readcount int default 0,
ref int not null,
re_step int not null,
re_level int not null,
content varchar(3000) not null,
ip varchar(20) not null,
filename varchar(30),
filesize int
);

create sequence BoardSer
start with 1
increment by 1
nomaxvalue;


alter table board modify email varchar2(30);
create sequence BoardSer2
start with 1
increment by 1
nomaxvalue;
alter table board  add filename varchar2(30);
alter table board  add filesize   int default 0;


create table board(
num int not null primary key,  ---- 글번호 저장
writer varchar(10) not null,     ---- 글쓴이
email varchar(30),
subject varchar(50) not null,   ---- 제목
passwd varchar(12) not null  ,
reg_date date not null,    --- 글쓴 날짜
readcount int default 0,   ----  조회수
ref int not null,               ----  글 그룹화
re_step int not null,         ----   제목글과 답변글 저장
re_level int not null,         ----  글의 레벨저장
content varchar(3000) not null,  ----  글내용 
ip varchar(20) not null    ---- 글쓴이의 ip주소 
);

SQL> desc board;
 이름                                      널?      유형
 ----------------------------------------- -------- -------------------
 NUM                                       NOT NULL NUMBER(38)
 WRITER                                    NOT NULL VARCHAR2(10)
 EMAIL                                              VARCHAR2(30)
 SUBJECT                                   NOT NULL VARCHAR2(50)
 PASSWD                                    NOT NULL VARCHAR2(12)
 REG_DATE                                  NOT NULL DATE
 READCOUNT                                          NUMBER(38)
 REF                                       NOT NULL NUMBER(38)
 RE_STEP                                   NOT NULL NUMBER(38)
 RE_LEVEL                                  NOT NULL NUMBER(38)
 CONTENT                                   NOT NULL VARCHAR2(3000)
 IP                                        NOT NULL VARCHAR2(20)




SQL> Create Sequence Memos_seq Start With 1 Increment By 1; 
SQL> Insert Into Memos
  2  Values(Memos_seq.NextVal, '홍길동', 'h@h.com', '안녕', SysDate, '127.0.0.1');


1 개의 행이 만들어졌습니다.

SQL> Commit;

커밋이 완료되었습니다.


http://localhost:8800/ch01/c12/writeForm.jsp?num=1&ref=1&re_step=0&re_level=0

CREATE OR REPLACE TRIGGER test_trigger
BEFORE INSERT
ON test
REFERENCING NEW AS NEW
FOR EACH ROW
BEGIN
SELECT test_sequence.nextval INTO :NEW.ID FROM dual;
END;

select num,  ref, re_step, re_level from board;
SELECT Boardser.nextval FROM dual;
SELECT Boardser.currval FROM dual;


select * from ( select rownum rnum ,a.*  from (select num,writer,email,subject,passwd,reg_date,readcount,    ref,re_step,re_level,content,ip  from board order by ref desc , re_step) a ) 	where rnum  between 1 and 10

select * from ( select rownum rnum ,a.*  from (select num,writer,subject,passwd,ref,re_step,re_level,ip  from board order by ref desc , re_step) a ) 	where rnum  between 1 and 10

select rownum rnum ,a.*
from (select  num,writer,subject,passwd,ref,re_step,re_level,ip  from board ) a 
where rownum  between 1 and 10

