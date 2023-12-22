USE pnu;

SELECT c.*, d.주관학과명, s.sname, i.교수명
FROM course c, dept d, subject s, instructor i
WHERE d.주관학과명 = '교육혁신과' and c.dno = d.dno
	and c.sno = s.sno
    and c.ino = i.ino;


    
-- SET SQL_SAFE_UPDATES = 0;
-- DELETE FROM course
-- WHERE sno NOT IN (SELECT sno FROM subject);
-- SET SQL_SAFE_UPDATES = 1;

