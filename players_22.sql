CREATE DATABASE players_project;
USE players_project;

SELECT 1;

USE players_project;
SELECT COUNT(*) FROM players_22;

USE players_project;
SELECT COUNT(*) AS total_players FROM players_22;

SELECT short_name, age, overall, wage_eur, nationality_name 
FROM players_22 
LIMIT 5;



SELECT age, ROUND(AVG(value_eur), 0) AS avg_market_value
FROM players_22
GROUP BY age
ORDER BY age;

 DESCRIBE players_22;
 
Select player_positions , ROUND(AVG(wage_eur),0) AS avg_wage
FROM players_22
GROUP BY player_positions
ORDER by avg_wage DESC;


Select nationality_name , ROUND(AVG(overall),0) AS player_ratings 
From players_22
GROUP by nationality_name
ORDER BY player_ratings ASC
LIMIT 10;



SELECT nationality_name, ROUND(AVG(overall),0) AS player_ratings, COUNT(*) AS total_players
FROM players_22
GROUP BY nationality_name
HAVING total_players > 20
ORDER BY player_ratings DESC
LIMIT 10;