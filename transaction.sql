-- TRANSACTION
-- 데이터베이스에서 한 번에 수행되는 작업의 단위
-- 시작, 진행, 종료 단계를 가지며, 만약 중간에 오류가 발생하면 
-- 롤백을 수행하고 데이터 베이스에 제대로 반영하기 위해서는 커밋을 진행한다. cf)TRANSACTION을 쓰면 단위를 묶어서 진행시킬 수 있다.

-- commit
/*
	트랜잭션 처리에 사용되는 명령문 중 하나로
    여러 sql 문을 하나의 트랜잭션으로 그룹화 할 수 있다.
*/

-- rollback
/*
	트랜잭션 처리에 사용되는 명령문 중 하나로
    RollBack 을 사용하면 트랜잭션 내에서 수행한 변경 사항을 취소하고 이전 상태로
    돌릴 수 있다.
*/

-- autoCommit 비활성화
SET autocommit = 0; -- OFF 가능

-- autoCommit 활성화
SET autocommit = 1; -- ON 도 가능   -- ON 시켜놓으면 한줄한줄마다 실행된다.

START TRANSACTION;  -- rollback이나 commit 을 만날 때 까지 하나의 묶음이다.

SELECT * FROM tbl_menu;
INSERT INTO tbl_menu VALUES (null, "뼈다귀해장국", 8500,4,'Y');
UPDATE tbl_menu SET menu_name = "수정됨" where menu_code = 1;
DELETE FROM tbl_menu WHERE menu_code = 7;
-- ROLLBACK; -- ROLLBACK 됨
commit; -- 하면 반영됨
ROLLBACK;  -- commit 하고 ROLLBACK하면 이미 데이터를 반영했기 때문에 되돌리기가 안된다! 그래서 ROLLBACK 하려면 commit 전에 해야한다

SELECT * FROM tbl_menu;