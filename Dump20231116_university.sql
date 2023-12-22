USE university;

-- Biology 강사 이름을 모두 찾아보세요
SELECT c.course_id, c.title, c.dept_name, i.ID, i.name, i.dept_name
FROM course c, instructor i
WHERE c. course_id = '133'
ORDER BY title;

-- Computer science 에서 3학점이 있는 과목명을 찾아보세요
SELECT c.credits, c.title, d.dept_name
FROM course c, department d
WHERE c.credits = 3 and d.dept_name = 'Comp. Sci.'
ORDER BY dept_name;

-- ID가 12078(또는 다른 값)인 학생의 경우 모든course_id와 학생이 등록한 모든 강좌의 제목을 표시합니다.
SELECT a.id, a.course_id, c.title
FROM takes a, course c
WHERE a.course_id = c.course_id
and a.id = '12078'
GROUP BY a.id, a.course_id
ORDER BY title;

-- 위와 동일하지만 해당 과목(해당 학생이 수강한)의 총 학점을 표시합니다. 학생이 수강한 강좌에 대해 SQL 집계를 사용해야 합니다.
SELECT a.id, a.course_id, c.title, c.credits
FROM takes a, course c
where a.course_id = c.course_id
and a.id = '12078'
ORDER BY c.title, SUM(c.credits);

-- 위와 동일하지만 학생 ID와 함께 각 학생의 총 학점을 표시합니다. 학생 이름은 신경쓰지 마세요.


-- Comp. 와 Sci.를 수강한 모든 학생의 이름을 찾으십시오. 
