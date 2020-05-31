## Progression


-- 1. **Write a query to display the team details. Display the records sorted in the order of team name.**
SELECT * FROM TEAM ORDER BY TEAMNAME 

-- 2. **Write a query to display the player details whose name starts with a letter `S` and who do not belong to the country 'South Africa'. Display the records sorted in descending order based on player name.**
SELECT * FROM PLAYERDETAILS WHERE NAME LIKE 'S%' AND COUNTRY != 'South Africa' ORDER BY ASC;

-- 3. **Write a query to display the event number and the seconds taken for each event. Display the records sorted in ascending order based on event number.**
SELECT EVENNUMBER , SECONDS  FROM EVENT ORDER BY EVENT NUMBER;

-- 4. **Write a query to display the event numbers of those events which has sum of raid points and defending points greater than or equal to 3. Display the records sorted in ascending order based on event_no.**
SELECT EVENTNUMBER FROM EVENT WHERE  SUM(RAID_POINT) > = 3 AND SUM(DEFENDING_POINTS) > = 3 ORDER BY ASC;

-- 5. **Write a query to display the name of all the players who belong to the country India or Iran. Display the records sorted in ascending order based on player name.**
SELECT NAME FROM PLAYERS WHERE COUNTRY = 'India' OR COUNTRY = 'Iran' ORDER BY PLAYERNAME;

-- 6. **Write a query to display the name of all the players who does not belong to the country India and Iran. Display the records sorted in ascending order based on player name.**
SELECT NAME FROM PLAYERS WHERE COUNTRY ! = 'India' OR COUNTRY ! = 'Iran' ORDER BY PLAYERNAME;

-- 7. **Write a query to display the names of all the skills that start with `Defend`. Display the records sorted in ascending order based on skill name.**
SELECT NAMES FROM SKILL WHERE NAME STARTS WITH 'DEFEND' ORDER BY ASC;

-- 8. **Write a query to display all the stadium names that ends with `Complex`. Display the records sorted in ascending order based on stadium names.**
SELECT NAMES FROM VENUE WHERE NAME ENDS WITH 'Complex' ORDER BY ASC; 

-- 9. **Write a query to display the winner team ids and the scores of those teams whose scores are less than 35. Display the records sorted in descending order based on outcome id.**
SELECT  WINNER_TEAM_ID,SCORE FROM OUTCOME WHERE SCORE < = 35 ORDER BY ASC;

-- 10. **Write a query to display the game details of those games that were played between January and March of 2020. Display the records sorted in descending order based on id.**
SELECT *  FROM GAME;

-- 11. **Write a query to display the names of players who are Raiders. Display the records sorted in ascending order based on player name.**
SELECT NAME FROM PLAYERS WHERE PLAYER.SID =3; 

-- 12. **Write a query to display the event number, raid points and defence points scored in the first innings of the game that was played on `2020-01-26`. Display the records sorted in ascending order based on event number.**
SELECT EVENT_NO,RAID_POINTS,DEFENCE_POINTS FROM GAME WHERE FIRST_INNINGS = 1 AND GAME_DATE = '2020-03-09' ORDER BY ASC;

-- 13. **Write a query to display the name of the winner team in the game played on `2020-03-09`. Display the records sorted in ascending order based on team name.**
SELECT * FROM GAME WHERE GAME_DATE ='2020-03-09'

-- 14. **Write a query to display the names of players who were the player of the match in the game played on 2020-03-09'. Display the records sorted in ascending order based on player name.**
SELECT PLAYER.NAME FROM PLAYER INNERJOIN OUTCOME WHERE PLAYER.ID = OUTCOME.PLAYER_OF_MATCH;

-- 15. **Write a query to display the names of players who are All rounders. Display the records sorted in ascending order based on player name.**
SELECT PLAYER.NAME FROM PLAYER INNER JOIN SKILL ON SKILL.ID = PLAYER.SID;
 
-- 16. **Write a query to display the venue names for all the games that were played on `2020-03-09`. Display the records sorted in ascending order based on venue name.**
SELECT VENUE.NAME FROM VENUE INNER JOIN GAME ON GAME.VENUE_ID = VENUE.ID;  

-- 17. **Write a query to display the Coach's name of the team `Iran`**
SELECT CNAME FROM TEAM WHERE TNAME = 'Iran';

-- 18. **Write a query to display the event number and the defence points of `Fazel Atrachali` in each event. Display the records sorted in ascending order based on event number.**
SELECT EVENT_NO,DEFENDING_POINTS FROM EVENT; 

-- 19. **Write a query to display the names of the Winning teams in the month of March 2020. Display the records sorted in ascending order based on team name.**
SELECT WINING_TEAM_ID FROM OUTCOME;

-- 20. **Write a query to display the names of players who were the player of the match in the games held in March 2020. Display the records sorted in ascending order based on player name.**
SELECT PLAYER_OF_MATCH FROM OUTCOME;