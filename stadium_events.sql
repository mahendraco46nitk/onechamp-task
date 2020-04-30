--
-- Creating database onechamp
--

CREATE DATABASE onechamp;

--
-- Droping table if already exists
--

DROP TABLE IF EXISTS stadium_events;

--
-- Creating new table stadium_events
--

CREATE TABLE stadium_events (
  id int NOT NULL AUTO_INCREMENT,
  event_name varchar(50) DEFAULT NULL,
  people_count int(11) DEFAULT 0,
  primary key (id)
);

--
-- Dumping data for table 'stadium_events'
--


INSERT INTO
   stadium_events (event_name, people_count)
VALUES
   (
      'event1', 10
   )
, 
   (
      'event2', 100
   )
, 
   (
      'event3', 50
   )
, 
   (
      'event4', 500
   )
, 
   (
      'event5', 400
   )
, 
   (
      'event6', 900
   )
, 
   (
      'event7', 300
   )
, 
   (
      'event8', 30
   )
, 
   (
      'event9', 20
   )
, 
   (
      'event10', 200
   )
, 
   (
      'event11', 300
   )
, 
   (
      'event12', 600
   )
, 
   (
      'event13', 60
   )
;


--
--  Displaying records having 3 or more consecutive events and the people_count>=100
--



SELECT DISTINCT
    SE1.* 
FROM
    stadium_events SE1 
        JOIN
    stadium_events SE2 
        JOIN
    stadium_events SE3 
        ON 
        (
            (SE1.id = SE2.id - 1 AND SE1.id = SE3.id - 2) 
                                OR 
            (SE3.id = SE1.id - 1 AND SE3.id = SE2.id - 2)
                                OR 
            (SE3.id = SE2.id - 1 AND SE3.id = SE1.id - 2)
        ) 
WHERE
   SE1.people_count >= 100 
   AND SE2.people_count >= 100 
   AND SE3.people_count >= 100 
ORDER BY
   SE1.id;