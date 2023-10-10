#!/bin/bash


echo "Hello, user! Welcome to my shell program."
echo "What's your name?"


read name


echo "Nice to meet you, $name!"


echo "Would you like to play a number guessing game? (yes/no)"


read play_game


if [ "$play_game" = "yes" ]; then
    echo "Great! Let's play a game."
    
    secret_number=$((1 + RANDOM % 100))

    attempts=0
    guessed=false

    while [ "$guessed" = false ]; do
        echo "Guess the secret number (between 1 and 100):"
        read guess
        ((attempts++))

        if [ "$guess" -eq "$secret_number" ]; then
            echo "Congratulations, $name! You guessed the number $secret_number in $attempts attempts."
            guessed=true
        elif [ "$guess" -lt "$secret_number" ]; then
            echo "Try a higher number."
        else
            echo "Try a lower number."
        fi
    done
else
    echo "That's okay. Maybe next time."
fi

# End of the program

