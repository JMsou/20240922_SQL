CREATE TABLE IF NOT EXISTS stations(
	station_id SERIAL PRIMARY KEY,
	station_code VARCHAR(5) UNIQUE NOT NULL,
	station_name VARCHAR(20) NOT NULL,
	name VARCHAR(20),
	station_addrtw VARCHAR(50),
	station_tel VARCHAR(20),
	gps VARCHAR(30),
	havebike BOOLEAN
);

SELECT *
FROM stations
-- WHERE name ='後龍';

CREATE TABLE station_in_out(
	date DATE,
	staCode VARCHAR(5) NOT NULL,
	gateInComingCnt INT,
	gateOutGoingCnt INT,
	PRIMARY KEY (date,staCode),
/*UNIQUE+NOT NULL 才可以來 REFERENCES!
	後面那兩行是'On Action'都在FORIEGN KEY中*/
	FOREIGN KEY (staCode) REFERENCES stations(station_code)
	ON DELETE SET NULL
	ON UPDATE CASCADE
);

SELECT 	date AS 日期,
		gateInComingCnt AS 進站人數,
		gateoutgoingcnt AS 出站人數,
		station_name AS 站名,
		station_addrtw AS 站址,
		station_tel AS 電話,
		gps AS 座標位址,
		havebike AS 有無Ubike
FROM station_in_out io JOIN stations s ON io.staCode=s.station_code
WHERE station_name='基隆';

