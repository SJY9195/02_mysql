-- GROUP BY
-- 결과 집합을 특정 열의 값에 따라 그룹화 하는데 사용함.
-- HAVING 을 함께 사용할 수 있음. - 그룹에 대한 조건 적용

SELECT
	category_code
 FROM tbl_menu
GROUP BY category_code;  -- 함수와 같이 많이 쓰인다.

-- COUNT() 함수 활용
SELECT
	category_code,
    count(*)
FROM tbl_menu
GROUP BY category_code;   -- 그룹화한 개수를 count 한것!

-- SUM() 함수 활용
SELECT
	category_code,
	SUM(menu_price)
FROM tbl_menu
GROUP BY category_code;

-- AVG() 함수 활용
SELECT
	category_code,
    AVG(menu_price)
    FROM tbl_menu
    GROUP BY category_code;
    
-- 2개 이상의 그룹 생성
SELECT
	menu_price,
    category_code
    FROM tbl_menu
    GROUP BY
    menu_price,
    category_code; -- 우선순위는 GROUP BY이므로 select 에서 menu_price 하나만 있어도 실행된다!

-- HAVING
SELECT
	menu_price,
    category_code
    FROM tbl_menu
GROUP BY
    menu_price,
    category_code
HAVING category_code >= 5 AND category_code <= 8;   -- WHERE와의 차이점 : 우선순위다 다르고, GROUP BY와 같이 함수를 쓸 수 있다. WHERE는 함수 실행전에 먼저 실행되서 함수를 못쓴다.
    
--    
