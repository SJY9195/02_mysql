-- DML ( Data Manipulation Language)

-- 테이블에 값을 삽입하거나 수정하거나 삭제하는 SQL의 한 부분이다.
-- insert, update, delete, select(dql - data query language)

-- 값을 등록하거나 수정하는 경우 아래의 내용을 주의해야한다.
-- 1. 데이터 타입
-- 2. 제약 조건


-- INSERT
-- 새로운 행을 추가하는 구문
-- 테이블의 행의 수가 증가한다.

INSERT INTO tbl_menu(
menu_code,
menu_name,
menu_price,
category_code,
orderable_status
)
VALUES(       -- menu_code 자리에 null을 직접 안넣어줘도 자동으로 입력이 된다. 
"쇼유라멘",
8500,
4,
'Y'
);

use menudb;
SELECT * FROM tbl_menu;

INSERT INTO tbl_menu VALUES(null, "쇼유라멘", 8500, 4, 'Y');

-- 컬럼의 순서를 변경하는 경우 순서에 맞게 값을 넣어주면 된다.
INSERT INTO tbl_menu(orderable_status, menu_price, menu_name, category_code)
VALUES('Y', 5500, "너구리",4);

SELECT * FROM tbl_menu; 

-- insert 안에 서브쿼리 사용 가능 (거의 안씀)
INSERT INTO tbl_menu VALUES(
NULL,
"순대국밥",
8500,
(SELECT category_code FROM tbl_category WHERE category_name = "한식"), 'Y'   -- 거의 쓸모 없다. 비효율적이다.
);

SELECT * FROM tbl_menu;

-- 여러행을 추가 시킬수도 있다.

INSERT INTO     
tbl_menu
VALUES
(null, "구슬아이스크림", 1700, 12, 'Y'),
(null, "소프트아이스크림", 1500, 11,'Y'),
(null, "아이스아메리카노", 2500, 8 , 'Y');

SELECT * FROM tbl_menu;

-- UPDATE
-- 테이블에 기록된 컬럼의 값을 수정하는 구문이다.
-- 테이블의 전체 행 갯수는 변화가 없다.

SELECT
*
FROM tbl_menu
WHERE menu_name = "바나나해장국";

UPDATE tbl_menu
	SET menu_name = "델몬트바나나"
WHERE menu_name = "바나나해장국";

SELECT
*
FROM tbl_menu
WHERE menu_name = "델몬트해장국";