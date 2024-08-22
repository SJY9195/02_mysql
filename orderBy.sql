-- ORDER BY
-- SELECT 문과 함께 사용하며, 결과 집합을 특정 열이나 열들의
-- 값에 따라 정렬하는데 사용한다.

SELECT
	menu_code,
    menu_name,
    menu_price
FROM tbl_menu

ORDER BY
   -- menu_price ASC; -- ASC는 오름차순이다
   menu_price DESC;    -- DESC는 내림차순이며, 기본은 ASC이다.
   
   SELECT
   menu_code,
   menu_name,
   menu_price
   FROM tbl_menu
   ORDER BY
   menu_price DESC,    -- 여러개면 맨 위의 것으로 실행된다
   menu_name ASC;
   
   
   -- 연산 결과로 결과 집합 정렬
   SELECT
	menu_code,
    menu_name,
    menu_price,
    (menu_code * menu_price) AS multi -- multi로 이름 지어준것!
	FROM
    tbl_menu
    ORDER BY
    multi DESC; -- menu_code * menu_price DESC; 와 같다.
    
    