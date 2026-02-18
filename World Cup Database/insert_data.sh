#! /bin/bash

if [[ $1 == "test" ]]
then
  PSQL="psql --username=postgres --dbname=worldcuptest -t --no-align -c"
else
  PSQL="psql --username=freecodecamp --dbname=worldcup -t --no-align -c"
fi

# Do not change code above this line. Use the PSQL variable above to query your database.
echo $($PSQL "TRUNCATE teams, games")
tail -n +2  games.csv | while IFS="," read year round winner opponent winner_goals opponent_goals
do
  #echo $winner, $opponent
  if [[ $winner != "name" ]] 
  then
    # get team_id
    team_id=$($PSQL "SELECT team_id FROM teams WHERE name='$winner' ")

    # if not found
      if [[ -z $team_id ]]
      then
      # insert team name
      INSERT_TEAMS_RESULT=$($PSQL "INSERT INTO teams(name) VALUES('$winner')")
          if [[ $INSERT_TEAMS_RESULT == "INSERT 0 1" ]]
          then
          echo Inserted into teams, $winner
          fi
        # get new team_id
  team_id=$($PSQL "SELECT team_id FROM teams WHERE name='$winner' ")
    fi
  fi
  #read opponent
 if [[ $opponent != "name" ]] 
  then
    # get team_id
    team_id=$($PSQL "SELECT team_id FROM teams WHERE name='$opponent' ")

    # if not found
      if [[ -z $team_id ]]
      then
      # insert team name
      INSERT_TEAMS_RESULT=$($PSQL "INSERT INTO teams(name) VALUES('$opponent')")
          if [[ $INSERT_TEAMS_RESULT == "INSERT 0 1" ]]
          then
          echo Inserted into teams, $opponent
          fi
        # get new team_id
  team_id=$($PSQL "SELECT team_id FROM teams WHERE name='$opponent' ")
    fi
  fi
  winner_id=$($PSQL "SELECT team_id FROM teams WHERE name='$winner' ")
  opponent_id=$($PSQL "SELECT team_id FROM teams WHERE name='$opponent' ")
  insert_games_result=$($PSQL "INSERT INTO games(year,round,winner_id,opponent_id,winner_goals,opponent_goals) VALUES('$year','$round','$winner_id','$opponent_id','$winner_goals','$opponent_goals')")
   if [[ $insert_games_result == "INSERT 0 1" ]]
          then
          echo Inserted into games, $year,$round,$winner_id,$opponent_id
          fi
 done