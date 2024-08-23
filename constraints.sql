-- CONSTRAINTS
-- 제약조건. 테이블에 데이터가 입력되거나 수정될 때의 규칙을 정의한다.
-- 테이블 작성 시 각 컬럼에 값에 대한 제약조건을 설정할 수 있다.
-- 입력/ 수정하는 데이터에 문제가 없는지 자동으로 검사해 준다.
-- 종류 = PRIMARY KEY, NOT NULL, UNIQUE, CHECK, FOREIGN KEY

-- NOT NULL
-- NULL 값을 허용하지 않는 제약조건
-- 데이터를 입력 받을 때 꼭 들어가야 하는 내용.
DROP TABLE IF EXISTS user_notnull;
CREATE TABLE IF NOT EXISTS user_notnull(
		user_no INT NOT NULL,
        user_id VARCHAR(255) NOT NULL,
        user_pwd VARCHAR(255) NOT NULL,
        user_name VARCHAR(255) NOT NULL,
        gender VARCHAR(3),
        phone VARCHAR(255) NOT NULL,
        email VARCHAR(255)
)ENGINE = INNODB;
