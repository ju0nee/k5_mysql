USE sakila;

-- 각 카테고리에는 몇 편의 영화가 있나요?
-- 각 카테고리 하나에 하나의 영화만 들어가는 것은 아님 (하나의 영화가 액션, 스릴러 카테고리 모두에 해당할 수도 있음)
-- film_category와의 상관관계를 중심으로 생각할 것
-- EER diagram을 보고 생각할 것
SELECT c.category_id, c.name, f.title
FROM category c, film f
GROUP BY title and countfilm;

-- 'ACADEMY DINOSAUR'라는 영화를 대여한 고객의 이름은 무엇입니까?
SELECT f.title, s.store_id, i.inventory_id, r.rental_id, c.first_name, c.last_name
FROM film f, store s, inventory i, rental r, customer c
WHERE f.title = 'ACADEMY DINOSAUR' AND i.inventory_id = r.inventory_id 
ORDER BY c.last_name;
