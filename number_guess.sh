#!/bin/bash
PSQL="psql --username=freecodecamp --dbname=number_guess -t --no-align -c"
SECRET_NUMBER=$((1 + $RANDOM % 1000))

echo -e "\n~~~~ Number Guessing ~~~~\n"

#Greet and check user
if [[ -z $1 ]]
then
  echo "Enter your username:"
  read input_username
else
  input_username=$1
fi

user_id=$($PSQL "select user_id from users where username = '$input_username'")

if ! [[ -z $user_id ]]
then
  user_info=$($PSQL "select username, games_played, best_game from users inner join games on users.user_id = games.user_id where users.user_id = $user_id")
  echo "$user_info" | while IFS="|" read username games_played best_game
  do
    echo "Welcome back, $username! You have played $games_played games, and your best game took $best_game guesses."
  done
  NEW_PLAYER=0
else
  echo "Welcome, $input_username! It looks like this is your first time here."
  INSERT_USER=$($PSQL "insert into users (username) values ('$input_username')")
  user_id=$($PSQL "select user_id from users where username = '$input_username'")
  NEW_PLAYER=1
fi

#Guessing game
GUESSING=1
ATTEMPTS=1
echo -e "\nGuess the secret number between 1 and 1000:"
read USER_GUESS
while [[ $GUESSING != 0 ]]
do
  if [[ "$USER_GUESS" =~ ^[0-9]+$ ]]
  then
    ATTEMPTS=$(( ATTEMPTS + 1 ))
    if [[ $USER_GUESS -lt $SECRET_NUMBER ]]
    then
      echo "It's higher than that, guess again:"
      read USER_GUESS
    fi
    if [[ $USER_GUESS -gt $SECRET_NUMBER ]]
    then
      echo "It's lower than that, guess again:"
      read USER_GUESS
    fi
    if [[ $USER_GUESS -eq $SECRET_NUMBER ]]
    then
      GUESSING=0
      echo "You guessed it in "$ATTEMPTS" tries. The secret number was "$SECRET_NUMBER". Nice job!"
    fi
  else
    echo "That is not an integer, guess again:"
    read USER_GUESS
  fi
done

if [[ $NEW_PLAYER -eq 0 ]]
then
  GAME_INFO=$($PSQL "select games_played, best_game from games where user_id=$user_id")
  echo "$GAME_INFO" | while IFS="|" read games_played best_game
  do
    games_played=$(( games_played + 1 ))
    if [[ $best_game -gt $ATTEMPTS ]]
    then
      best_game=$ATTEMPTS
    fi
    UPDATE_GAME=$($PSQL "update games set games_played = $games_played, best_game = $best_game where user_id = $user_id")
  done
else
  INSERT_GAME=$($PSQL "insert into games (user_id, games_played, best_game) values ($user_id, 1, $ATTEMPTS)")
fi
