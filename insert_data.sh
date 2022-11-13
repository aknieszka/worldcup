#! /bin/bash

if [[ $1 == "test" ]]
then
  PSQL="psql --username=postgres --dbname=worldcuptest -t --no-align -c"
else
  PSQL="psql --username=freecodecamp --dbname=worldcup -t --no-align -c"
fi

# Do not change code above this line. Use the PSQL variable above to query your database.

echo "$($PSQL "TRUNCATE games, teams")"

cat games.csv | while IFS="," read YEAR ROUND WINNER OPPONENT WINNER_GOALS OPPONENT_GOALS
do
  if [[ $WINNER != "winner" ]] 
  then
    TEAM_ID=$($PSQL "select team_id from teams where name='$WINNER'")
    if [[ -z $TEAM_ID ]]
    then 
      INSERT_WINNER=$($PSQL "insert into teams(name) values('$WINNER')")
    fi
    TEAM_ID=$($PSQL "select team_id from teams where name='$WINNER'")
  fi
  if [[ $OPPONENT != "opponent" ]] 
  then
    TEAM_ID=$($PSQL "select team_id from teams where name='$OPPONENT'")
    if [[ -z $TEAM_ID ]]
    then 
      INSERT_OPPONENT=$($PSQL "insert into teams(name) values('$OPPONENT')")
    fi
    TEAM_ID=$($PSQL "select team_id from teams where name='$OPPONENT'")
  fi
  
  if [[ $YEAR != "year" ]]
  then
    TEAM_ID_WINNER=$($PSQL "select team_id from teams where name='$WINNER'")
    TEAM_ID_OPPONENT=$($PSQL "select team_id from teams where name='$OPPONENT'")
    INSERT_GAME=$($PSQL "insert into games(year, round, winner_id, opponent_id, winner_goals, opponent_goals) values('$YEAR', '$ROUND', '$TEAM_ID_WINNER', '$TEAM_ID_OPPONENT', '$WINNER_GOALS', '$OPPONENT_GOALS')")
  fi
done