use menudb;
/*
영화관 티켓 예매 시스템을 위한 MySQL 데이터베이스를 설계하는 문제


 요구사항
 
  1. 영화 테이블
   각 영화는 고유의 ID, 제목, 상영 시간, 총 좌석 수, 예약된 좌석 수를 가지고 있습니다.
   영화는 특정 영화관에서 상영됩니다.
  2. 영화관 테이블
    영화관은 고유의 ID와 이름, 위치 정보를 가지고 있으며, 여러 영화를 상영할 수 있습니다.
  3. 예약 테이블
    예약은 특정 사용자가 특정 영화의 좌석을 예약하는 것을 의미하며, 예약 시간과 예약된 좌석 수를 기록합니다.
    예약 시 남은 좌석 수를 확인하고, 좌석이 부족하면 예매를 불가하게 해야 합니다.
    
    
    다음 데이터가 들어가게 설계 후 데이터를 삽입 해주세요
    INSERT INTO movie_theaters (name, location) VALUES 
('CGV', '서초구'),
('롯데시네마', '강남구'),
('씨네큐', '영등포구');
INSERT INTO movies (title, show_time, total_seats, reserved_seats, theater_id) VALUES 
('늘봄가든', '2024-08-23 14:00:00', 100, 45, 1),
('에어리언', '2024-08-23 17:00:00', 150, 90, 1),
('행복의나라', '2024-08-24 20:00:00', 120, 30, 2),
('파일럿', '2024-08-25 19:00:00', 200, 50, 3);
INSERT INTO reservations (user_name, movie_id, seats_reserved) VALUES 
('철수', 1, 2),
('영희', 2, 4),
('길동', 1, 3),
('관순', 3, 1),
('민식', 4, 5);
*/

-- 각 영화는 고유의 ID, 제목, 상영 시간, 총 좌석 수, 예약된 좌석 수를 가지고 있습니다.
-- 영화는 특정 영화관에서 상영됩니다.
DROP TABLE IF EXISTS MOVIE;
CREATE TABLE IF NOT EXISTS MOVIE(
movie_ID INT PRIMARY KEY, 
movie_title VARCHAR(255), 
movie_time VARCHAR(255), 
movie_totalseat int,
movie_reservedseat int,
theater_id INT,
FOREIGN KEY (theater_id)
REFERENCES MOVIETHEATER(theater_ID)
) ENGINE = INNODB;

INSERT INTO MOVIE (movie_title, movie_time, movie_totalseat, movie_reservedseat, theater_id) VALUES 
('늘봄가든', '2024-08-23 14:00:00', 100, 45, 1),
('에어리언', '2024-08-23 17:00:00', 150, 90, 1),
('행복의나라', '2024-08-24 20:00:00', 120, 30, 2),
('파일럿', '2024-08-25 19:00:00', 200, 50, 3);

SELECT * FROM MOVIE;

-- 영화관은 고유의 ID와 이름, 위치 정보를 가지고 있으며, 여러 영화를 상영할 수 있습니다.
DROP TABLE IF EXISTS movie_theaters;
CREATE TABLE IF NOT EXISTS movie_theaters(
theater_ID INT PRIMARY KEY,
theater_name VARCHAR(255),
theatar_location VARCHAR(255),

) ENGINE = INNODB;

INSERT INTO movie_theaters (theater_name, theater_location) VALUES 
('CGV', '서초구'),
('롯데시네마', '강남구'),
('씨네큐', '영등포구');




/* 예약은 특정 사용자가 특정 영화의 좌석을 예약하는 것을 의미하며, 예약 시간과 예약된 좌석 수를 기록합니다.
    예약 시 남은 좌석 수를 확인하고 */
DROP TABLE IF EXISTS reservations;
CREATE TABLE IF NOT EXISTS reservations(
id VARCHAR(255),
reserve_numberofseat INT
)    

INSERT INTO reservations (user_name, movie_id, seats_reserved) VALUES 
('철수', 1, 2),
('영희', 2, 4),
('길동', 1, 3),
('관순', 3, 1),
('민식', 4, 5);
