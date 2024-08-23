-- JOIN
-- 두 개 이상의 테이블을 관련있는 컬럼을 통해 결합하는데 사용

-- 별칭
-- 띄어쓰기나 특수기호가 없다면 홀따옴표와 AS는 생략 가능하다.
SELECT
	menu_code AS 'code',
    menu_name AS name,
    menu_price 'price'
    FROM tbl_menu menu
ORDER BY price;

-- INNER JOIN
-- 두 테이블의 교집합을 반환하는 join
-- INNER 생략 가능

SELECT
	menu_name,
    category_name
FROM
tbl_menu a 
JOIN tbl_category b 
ON a.category_code = b.category_code;  -- a에도 포함되어있고 b에도 포함된 것들을 출력! (교집합)

-- LEFT JOIN
-- 첫번째 테이블의 모든 데이터와 두 번째 테이블에서 일치하는
-- 데이터를 반환하는 join                                 //위의 JOIN과 다른거는 LEFT JOIN에는 null값이 포함된것들도 다 출력된다. 위에는 교집합만 출력!
SELECT
 a.category_name,
 b.menu_name
 FROM tbl_category a
 LEFT JOIN tbl_menu b
 ON a.category_code = b.category_code;
 
-- RIGHT JOIN
-- LEFT와 반대 JOIN
SELECT
	a.menu_name,
    b.category_name
    FROM tbl_menu a
    RIGHT JOIN tbl_category b
    ON a.category_code = b.category_code;
 
-- USING 을 활용한 JOIN
SELECT
	a.menu_name,
    b.categoty_name
    FROM tbl_menu a
    JOIN tbl_category b USING (category_code);