-- SET
-- 두 개 이상의 SELECT 문의 결과 집합을 결합하는데 사용한다.

-- UNION
-- 두 개 이상의 sELECT 문의 결과를 결합하여 중복된 레코드를 제거한 후 반환

SELECT
	menu_code,
    menu_name,
    menu_price,
    category_code,
    orderable_status
    FROM tbl_menu
WHERE category_code = 10;

-- UNION ALL
-- 중복된 레코드 제거하지 않고 모두 반환


SELECT
	menu_code,
    menu_name,
    menu_price,
    category_code,
    orderable_status
FROM tbl_menu
WHERE menu_price < 9000;

-- INTERSECT   --INNER JOIN과 같으므로 INNER JOIN으로 해주면 된다.
-- EXCEPT      --LEFT JOIN과 같으므로 LEFT JOIN으로 해주면 된다.



