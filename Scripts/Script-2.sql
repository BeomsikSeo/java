CREATE TABLE "HR"."NOTICE" 
   (	"BOARDNO" NUMBER(38,0), 
	"TITLE" VARCHAR2(100), 
	"CONTENTS" VARCHAR2(100), 
	"WRITER" VARCHAR2(100), 
	"WRITEDATE" DATE, 
	"RECOMMEND" NUMBER(38,0), 
	"VIEWCOUNT" NUMBER(38,0)
   )
   
-- 추천게시판(recommend)
-- re_no 숫자,
-- title, content, writer 문자
   
CREATE TABLE recommend (
	re_no NUMBER(38,0),
	title varchar2(100),
	content varchar2(100),
	writer varchar2(100)
)

DROP TABLE RECOMMEND -- 테이블 통째로 던져버림.

CREATE TABLE recommend (
	re_no NUMBER(38,0),
	title varchar2(100),
	content varchar2(100),
	writer varchar2(100)
)

ALTER TABLE RECOMMEND DROP COLUMN viewcount;

CREATE TABLE "HR"."BOARD" 
   (	"BOARDNO" NUMBER(38,0), 
	"TITLE" VARCHAR2(100), 
	"CONTENTS" VARCHAR2(100), 
	"WRITER" VARCHAR2(100), 
	"WRITEDATE" DATE, 
	"RECOMMEND" NUMBER(38,0), 
	"VIEWCOUNT" NUMBER(38,0)
   )
   
   ALTER TABLE BOARD2 MODIFY WRITER varchar2(200)
   
   ALTER TABLE BOARD2 DROP COLUMN viewcount
   
   ALTER TABLE BOARD2 ADD test varchar2(100)
   
   DROP TABLE BOARD2
   
   DROP TABLE bbs2
   
   -- DCL : DB 관리/제어해주는 문법(계정생성, 계정권한부여, 백업, 복구)
   
   CREATE USER apple IDENTIFIED BY a1234
   
   GRANT CONNECT, resource, dba TO apple
   
   CREATE TABLE "HR"."PRODUCT222" 
   ("ID" VARCHAR2(100) PRIMARY key, 
	"NAME" VARCHAR2(100), 
	"CONTENT" VARCHAR2(100), 
	"PRICE" NUMBER(38,0)
   )
   
   INSERT INTO MEMBER VALUES ('100','100','park','011')
   
   INSERT INTO MEMBER VALUES ('200','200','park','011')
   
   INSERT INTO MEMBER VALUES ('300','300','park','011')
   
   SELECT * FROM MEMBER
   
   SELECT * FROM MEMBER WHERE id = '100' -- id가 100인 모든 컬럼
   
   SELECT id FROM MEMBER WHERE id = '100' -- id가 100인 id 컬럼
   
   SELECT id, name FROM MEMBER WHERE id = '100' -- id가 100인 id,name 컬럼
   
   SELECT name, id FROM MEMBER WHERE id = '100' -- id가 100인 id,name 컬럼 (컬럼 순서를 원하는대로 볼 수 있다)
   
   SELECT id AS 아이디, name FROM MEMBER WHERE id = '100' -- as뒤로 컬럼이름을 바꿔서 보여준다
   
   SELECT tel FROM MEMBER WHERE name = 'park'
   
   UPDATE MEMBER SET name = 'kim' WHERE id = '100'
   
   UPDATE MEMBER SET name = 'yang' WHERE id = '200'
   
   UPDATE MEMBER SET name = 'lee' WHERE id = '300'
   
   SELECT * FROM MEMBER
   
   UPDATE MEMBER SET tel = '9999', pw = '8888' WHERE id = 'ice'
   
   DELETE FROM MEMBER WHERE id = '100'
   
   DELETE FROM MEMBER WHERE tel = '011'
   
   SELECT * FROM MEMBER WHERE id = '200' AND tel = '011'
   
   SELECT * FROM MEMBER WHERE id = '200' OR tel = '011'
   
   
   
   
   -- id, name, content, price, company, img
   
   CREATE TABLE product (
   	id varchar2(200),
   	name varchar2(200),
   	content varchar2(200),
   	price varchar2(200),
   	company varchar2(200),
   	img varchar2(200)
   )
   
   SELECT * FROM MEMBER ORDER BY id -- 오름차순
   
   SELECT * FROM MEMBER ORDER BY id DESC -- 내림차순
   
--price로 내림차순 정렬하여 전체컬럼 검색
--company로 오름차순 정렬하여 제품의 이름, 내용, 가격 검색
--id가 100인 제품의 이름과 가격 검색
--price가 5000인 제품명과 회사명
--id가 100이고 가격이 1000인 제품명과 이미지 검색
--회사명이 c100인 회사명과 제품명
--회사명이 c100, c200인 제품명과 가격
--price가 5000원인 제품의 content를 품절로 수정
--id가 100, 102번 제품의 img를 o.png로, price를 10000으로 수정
--id가 101번 제품의 company를 apple, name은 appleshoes로 수정
--name이 shoes1이거나 id가 107인 제품 삭제
--회사명이 c100인 경우 모든 정보 삭제
--테이블의 모든 정보 삭제
   
   SELECT * FROM product
   
   SELECT * FROM product ORDER BY price DESC 
   
   SELECT name, content, price FROM PRODUCT ORDER BY company

   SELECT name, price FROM product WHERE id = '100'
   
   SELECT name, company FROM product WHERE price = '5000'
   
   SELECT name, img FROM product WHERE id = '100' AND price = '1000'
   
   SELECT company, name FROM product WHERE company = 'c100'
   
   SELECT name, price FROM product WHERE company = 'c100' OR company = 'c200'
   
   UPDATE product SET content = '품절' WHERE price = '5000'
   
   UPDATE product SET img = '0.png', price = '10000' WHERE id = '100' OR id = '102'
   
   UPDATE product SET company = 'apple', name = 'appleshoes' WHERE id = '101'
   
   DELETE FROM product WHERE name = 'shoes1' OR id = '107'
   
   DELETE FROM product WHERE company = 'c100'
   
   DELETE FROM product
   
   DROP TABLE product
   
   
   
   
   CREATE TABLE reply (
   	id varchar2(100),
   	oriid varchar2(100),
   	content varchar2(100),
   	writer varchar2(100)
   )
   
   
   