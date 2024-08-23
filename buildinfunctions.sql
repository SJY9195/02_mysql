-- BUILD IN FUNCTIONS

-- ASCII   -- 알파벳에 대응되는 숫자
SELECT ASCII('A');

-- CONCAT
SELECT CONCAT("호랑이", "기린", "토끼");

SELECT CONCAT_WS(",", "호랑이", "기린", "토끼"); -- 구분자를 넣어 줄 수 있다.

-- ELT : 해당 위치의 문자열 반환
SELECT ELT(2, "사과", "딸기", "바나나");

-- FIELD : 찾을 문자열 위치 반환
SELECT FIELD("딸기", "사과", "딸기", "바나나");

-- FORMAT(숫자, 소수점 자릿수)
SELECT FORMAT(1231234.34435, 3);  -- 1000 단위로 , 찍어주고, 소수점 4째자리에서 반올림해줘서 3째자리까지나오게한다.

-- 2진수, 8진수, 16진수
SELECT BIN(65), OCT(65), HEX(65);

-- INSERT(기존 문자열, 위치, 길이, 삽입할 문자열)
SELECT INSERT("내 이름은 홍길동입니다.", 7, 3, "유관순"); -- 길이를 바꾸고 싶은 문자보다 적게 바꿔도 기존의 것이 안없어지고, 문자보다 길게 바꾸면 기존의 것이 사라진다! 
												   -- 즉, 원본길이가 바뀐다는것이다!

-- LEFT, RIGHT
SELECT LEFT("HELLO WORLD!", 3), RIGHT("HELLO WORLD!", 3); -- LEFT 왼쪽부터 3개반환, RIGHT 오른쪽부터 3개반환!!

-- LOWER, UPPER  -- 소문자 대문자 변환

-- TRIM - (공백 제거)

-- REPEAT(문자열, 횟수)
SELECT REPEAT("MYSQL", 3); -- MYSQL을 3번 반복시키겠다.

-- REPLACE(문자열, 찾을 문자열, 바꿀 문자열)
SELECT REPLACE("마이SQL", "마이", "MY"); -- 첫번째 단어인 "마이SQL"에 "마이"를 "MY"로 바꾸겠다!!

-- REVERSE(문자열)
SELECT REVERSE("STRESSED");

-- SUBSTRING(문자열, 시작위치, 길이)
SELECT SUBSTRING("안녕하세요 반갑습니다", 7, 2); -- 문장에서 특정 문자 반환


