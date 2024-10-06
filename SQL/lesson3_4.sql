CREATE TABLE student(
	student_id SERIAL,
	name VARCHAR(20),
	major VARCHAR(20),
	PRIMARY KEY(student_id)
	);
SELECT *
FROM student;

/*新增資料*/
INSERT INTO student(name, major)
VALUES('小白','歷史');

INSERT INTO student(major,name )
VALUES('生物','小黑');

INSERT INTO student(major,name )
VALUES(NULL,'小藍');

/*新增多筆*/
INSERT INTO student(major,name )
VALUES('國文','小線'),('數學','小綠');

/*傳回新增的資訊*/
INSERT INTO student(major,name )
VALUES('生物','小線'),('歷史','小綠')
RETURNING *;

DROP TABLE student;

CREATE TABLE student(
	student_id SERIAL,
	name VARCHAR(20),
	major VARCHAR(20),
	score INT,
	PRIMARY KEY(student_id)
	);
	
INSERT INTO student 
VALUES	(1,'小白','英語',50),
		(2,'小黃','生物',50),
		(3,'小綠','歷史',50),
		(4,'小藍','英語',50),
		(5,'小黑','化學',50)
RETURNING *;

 /*資料全部刪除*/
DELETE FROM student;

DELETE FROM student
WHERE name = '小白';

DELETE FROM student
WHERE name LIKE '小%'
RETURNING *;

/*UPDATE SET WHERE*/
UPDATE student
SET major = '英語文學'
WHERE major = '英語'
RETURNING*;

UPDATE student
SET MAJOR = '生化'
WHERE MAJOR = '生物' OR MAJOR = '化學'
RETURNING*;

SELECT * FROM student;