USE pnu;

SELECT c.*, d.주관학과명, s.sname, i.교수명
FROM course c, dept d, subject s, instructor i
WHERE d.주관학과명 = '교육혁신과' and c.dno = d.dno
	and c.sno = s.sno
    and c.ino = i.ino;

-- SELECT d.dno, c.dno
-- FROM dept d, course c
-- WHERE d.dno = '1' and c.dno = d.dno;

-- SELECT c.*, d.dno, s.dno, s.sno, i.dno
-- FROM course c, dept d, subject s, instructor i
-- WHERE sno =  and d.dno = s.dno = i.dno;

-- SET SQL_SAFE_UPDATES = 0;
-- DELETE FROM course
-- WHERE sno NOT IN (SELECT sno FROM subject);
-- SET SQL_SAFE_UPDATES = 1;