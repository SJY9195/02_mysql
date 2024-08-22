-- SUBQUERIES
-- 다른 쿼리 내에서 실행되는 쿼리이다.

SELECT
	menu_code,
    menu_name,
    menu_price,
    category_code,
    orderable_status
FROM tbl_menu
WHERE  -- 미역국이 카테고리코드가 4이므로 위 SELECT에서 4인코드만 출력된다!
category_code = (
	SELECT
		category_code
	FROM tbl_menu
    WHERE menu_name = "미역국"
);

-- 서브쿼리를 활용한 메인 쿼리
SELECT
	MAX(count)   -- menu테이블에서 category_code 10이 제일 많으므로 10의 개수인 6이 출력된다!
    FROM
    (SELECT
    COUNT(*) AS 'count'  
    FROM
    tbl_menu
    GROUP BY category_code) AS countmenu;  -- 서브쿼리는 별칭을 꼭 지어줘야한다!!
    
SELECT
	menu_code,
    menu_name,
    menu_price,
    category_code,
    orderable_status
    FROM tbl_menu a
    WHERE
    menu_price > (
    SELECT
		AVG(menu_price)
	FROM tbl_menu
    WHERE category_code = a.category_code
    );

