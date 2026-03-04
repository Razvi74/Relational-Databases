#!/bin/bash
PSQL="psql -X --username=freecodecamp --dbname=number_guess --tuples-only -c"
echo -e "\n~~ Number Guessing Game ~~\n"
#read user name
echo -e "\nEnter your username:"
read USERNAME
USER=$($PSQL "SELECT name FROM users WHERE  name = '$USERNAME'")
 if [[ -z $USER ]]
  then
    # display welcome message for new user
    echo -e "Welcome, $USERNAME! It looks like this is your first time here."
    # insert new user into database
    INSERTED_USER=$($PSQL "INSERT INTO users(name) VALUES('$USERNAME')")
    USER_ID=$($PSQL "SELECT user_id FROM users WHERE  name = '$USERNAME'")
   else
  #get required infos for existing user
  USER_ID=$($PSQL "SELECT user_id FROM users WHERE  name = '$USERNAME'")
  BEST_GAME=$($PSQL "SELECT MIN(guesses) FROM games WHERE user_id = $USER_ID")
  GAMES_PLAYED=$($PSQL "SELECT COUNT(game_id) FROM games WHERE (games.user_id = $USER_ID)")
  echo "Welcome back, $USERNAME! You have played $GAMES_PLAYED games, and your best game took $BEST_GAME guesses."
  fi

# generate random number to guess
secret_number=$(( RANDOM % 1000 + 1 ))
echo -e "\nGuess the secret number between 1 and 1000:"
#initialize a bool var guess (if the number is guessed) and number of tries
guess=false
number_of_guesses=0
while ((guess==false)); do
read input
(( number_of_guesses++ ))
#check if input is integer
if ! [[ $input =~ ^[0-9]+$ ]];then
echo "That is not an integer, guess again:"
# checkk if input less than number generated
elif (( $input < secret_number ));then
echo "It's higher than that, guess again:"
# checkk if input greater than number generated
elif (( $input > secret_number ));then
echo "It's lower than that, guess again:"
#if it is equal exit the loop and write user data and the number of tries in the database
elif (( $input == secret_number ));then
INSERT_GAME=$($PSQL "INSERT INTO games(user_id,guesses) VALUES($USER_ID,$number_of_guesses)")
echo "You guessed it in $number_of_guesses tries. The secret number was $secret_number. Nice job!"
guess=true
exit 
fi
done