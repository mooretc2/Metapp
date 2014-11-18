--DELETE THE TABLE
DROP TABLE metAPP

--Create the metApp table
--This will serve as the primary DB of all applications
CREATE TABLE metApp (
ID INTEGER IDENTITY(1,1) NOT NULL,
Name  VARCHAR(30),
Developer VARCHAR(50),
Description VARCHAR(2000),
Operating_System VARCHAR(30),
Version VARCHAR(30),
Price VARCHAR(15),
External_URL NVARCHAR(2083),
PRIMARY KEY(id));



--Insert DEMO_DATA into database
INSERT INTO schweitj.metApp VALUES(
		'Cut the Rope', 
		'Chillingo Ltd', 
		'Cut the rope to feed candy to little monster Om Nom®! 500 million downloads around the world of this phenomenal puzzle game. 400 levels and more to come!', 
		'iOS', 
		'2.4.2', 
		'$2.99', 
		'https://itunes.apple.com/us/app/cut-the-rope/id380293530?mt=8')

INSERT INTO schweitj.metApp VALUES(
		'Cut the Rope', 
		'Chillingo Ltd', 
		'Cut the rope to feed candy to little monster Om Nom®! 500 million downloads around the world of this phenomenal puzzle game. 400 levels and more to come!
A mysterious package has arrived, and the little monster inside has only one request… CANDY! Collect gold stars, discover hidden prizes and unlock exciting new levels in this addictively fun, award-winning, physics-based game!', 
		'Android', 
		'2.4.4', 
		'$0.00', 
		'https://play.google.com/store/apps/details?id=com.zeptolab.ctr.ads&hl=en')


--VIEW DATA IN DB
SELECT *
FROM schweitj.metApp
