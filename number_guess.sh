#!/bin/bash

PSQL="psql --username=freecodecamp --dbname=number_guess -t --no-align -c"

echo "Enter your username:"
read USERNAME

# Trim username and limit to 22 characters
USERNAME=$(echo "$USERNAME" | sed -E 's/^ *| *$//g')
USERNAME=${USERNAME:0:22}

# Get user data: username | user_id | total games played | best game (minimum guesses)
USER_DATA=$($PSQL "SELECT username, users.user_id, COUNT(g.game_id), MIN(g.guesses) 
FROM users 
LEFT JOIN games g ON users.user_id = g.user_id 
WHERE username = '$USERNAME' 
GROUP BY users.user_id;")

# Check if user exists
if [[ -z $USER_DATA ]]; then
  # New user
  $PSQL "INSERT INTO users(username) VALUES('$USERNAME')" > /dev/null
  USER_ID=$($PSQL "SELECT user_id FROM users WHERE username = '$USERNAME'")
  echo "Welcome, $USERNAME! It looks like this is your first time here."
else
  # Returning user
  echo "$USER_DATA" | while IFS="|" read DB_USERNAME USER_ID GAMES_PLAYED BEST_GAME
  do
    echo "Welcome back, $DB_USERNAME! You have played $GAMES_PLAYED games, and your best game took $BEST_GAME guesses."
  done
fi

# Generate secret number
SECRET_NUMBER=$(( RANDOM % 1000 + 1 ))
GUESS_COUNT=0

echo "Guess the secret number between 1 and 1000:"
while true; do
  read GUESS

  if [[ ! $GUESS =~ ^[0-9]+$ ]]; then
    echo "That is not an integer, guess again:"
  else
    ((GUESS_COUNT++))

    if [[ $GUESS -lt $SECRET_NUMBER ]]; then
      echo "It's higher than that, guess again:"
    elif [[ $GUESS -gt $SECRET_NUMBER ]]; then
      echo "It's lower than that, guess again:"
    else
      echo "You guessed it in $GUESS_COUNT tries. The secret number was $SECRET_NUMBER. Nice job!"
      # Ensure USER_ID is defined if using while loop (re-fetch inside scope)
      if [[ -z $USER_ID ]]; then
        USER_ID=$($PSQL "SELECT user_id FROM users WHERE username = '$USERNAME'")
      fi
      $PSQL "INSERT INTO games(user_id, guesses) VALUES($USER_ID, $GUESS_COUNT)" > /dev/null
      break
    fi
  fi
done
