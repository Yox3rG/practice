#! /bin/bash

if [[ $1 == "test" ]]
then
  PSQL="psql --username=postgres --dbname=worldcuptest -t --no-align -c"
else
  PSQL="psql --username=freecodecamp --dbname=worldcup -t --no-align -c"
fi

# Do not change code above this line. Use the PSQL variable above to query your database.
#echo "$($PSQL "SELECT * FROM games;")"
#echo "$(ls)";
echo "$($PSQL "TRUNCATE TABLE games, teams;")"
echo "$($PSQL "DROP TABLE IF EXISTS temp_teams;
CREATE TABLE temp_teams(
  year INT,
  round VARCHAR(60),
  winner VARCHAR(60),
  opponent VARCHAR(60),
  winner_goals INT,
  opponent_goals INT
);")"
echo "$($PSQL "\COPY temp_teams FROM 'games.csv' DELIMITER ',' CSV HEADER;")"
#echo "$($PSQL "SELECT * FROM temp_teams;")"

echo "$($PSQL "INSERT INTO teams(name)
SELECT winner FROM temp_teams
UNION
SELECT opponent FROM temp_teams;")"


echo "$($PSQL "INSERT INTO games(year,round,winner_id,opponent_id,winner_goals,opponent_goals)
SELECT 
  tt.year,
  tt.round,
  t1.team_id AS winner_id,
  t2.team_id AS opponent_id,
  tt.winner_goals,
  tt.opponent_goals
FROM temp_teams tt
INNER JOIN teams t1
ON tt.winner=t1.name
INNER JOIN teams t2
ON tt.opponent=t2.name;")"

echo "$($PSQL "SELECT * FROM games;")"

echo "$($PSQL "DROP TABLE temp_teams;")"