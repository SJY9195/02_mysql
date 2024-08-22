-- DISTINCT
-- 중복된 값을 제거하는데 사용된다. 컬럼에 있는 컬럼값들의 종류를 쉽게 파악할 수 있다.

-- 단일 컬럼 중복 제거
SELECT
	DISTINCT category_code    -- 종류가 몇개 있는지 빠르게 파악가능!
FROM tbl_menu
ORDER BY category_code;

-- 다중 컬럼
SELECT DISTINCT
	category_code,
    orderable_status         -- category_code 와 orderable_status 가 같은것들만 제거해 주겠다 ex) 10, Y가 2개면 1개제거
FROM tbl_menu;

