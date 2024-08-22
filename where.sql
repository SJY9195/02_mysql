-- WHERE
-- 특정 조건에 맞는 데이터만 선택

SELECT
	menu_name,
    menu_price,
    orderable_status
FROM tbl_menu
WHERE orderable_status = 'Y';

SELECT
	menu_name,
    menu_price,
    orderable_status
FROM tbl_menu
WHERE 
-- menu_price = 13000;
   menu_price != 13000;  -- != 는 부정의 의미
-- 대소 비교 연산자와 함께 사용

SELECT
	menu_code,
    menu_name,
    menu_price
FROM tbl_menu
WHERE menu_price >= 20000;

-- AND 연산자 활용
 SELECT
 menu_name,
 menu_price,
 category_code,
 orderable_status
 FROM tbl_menu
WHERE
 orderable_status = 'Y' AND
 category_code = 10;

SELECT
	menu_code,
    menu_name,
    menu_price,
    category_code,
    orderable_status
FROM tbl_menu
WHERE 
	menu_price > 5000 AND
    category_code = 10;
    
--- OR 연산자 활용
SELECT
	menu_name,
    menu_price,
    category_code,
    orderable_status
FROM tbl_menu
WHERE
	orderable_status = 'Y' OR
	category_code = 10
ORDER BY
	category_code;   -- 오름차순

-- AND 가 OR 보다 우선순위가 높다.
SELECT
	menu_code,
    menu_name,
    menu_price,
    category_code,
    orderable_status
 FROM tbl_menu
 WHERE
 category_code = 4 OR
 menu_price = 9000 AND
 menu_code > 10;        -- 테이블의 밑의 행 부터 시작된다.

-- BETWEEN 연산자 활용 (부정 가능)
SELECT
	menu_name,
    menu_price,
    category_code
  FROM tbl_menu
WHERE
   menu_price NOT BETWEEN 10000 AND 25000
ORDER BY
	menu_price;
    
-- like 연산자 활용 (부정 가능)
SELECT
	menu_name,
    menu_price
	FROM tbl_menu
WHERE menu_name NOT LIKE '%마늘%'   --  LIKE 마늘이 포함된 단어를 찾는다!! NOT LIKE 마늘이 포함되지 않는 단어를 찾는다!
ORDER BY menu_name;

-- IN 연산자 활용
SELECT
	menu_name,
    category_code
FROM tbl_menu
WHERE category_code NOT IN (4,5,6) -- IN();은 ()안에 있는 것만 보여주겠다 라는 뜻  NOT IN은 부정 --  cf) LIKE는 포함된것을 보여주겠다는것!
ORDER BY
	category_code;
    
-- is null 연산자 활용
SELECT
	category_code,
    category_name,
    ref_category_code
FROM tbl_category
WHERE ref_category_code IS NOT NULL;    --  IS NULL; null인것들만 출력


    
