#!/bin/bash
# This script uses the getNumber() function in a number guessing game with the following rules:
# The user should be asked to enter a number between 1 and 100.
# If the number is 42, the game should print 'Correct!'.
# If the number is less than 42, the game should print 'Too Low!'
# If the number is greater than 42, the game should print 'Too High!'
# The game should repeat until the user has found the correct number



#This function prints a given error

printError()
{
    echo -e "\e[31mERROR\e[0m $1"
}

#This function will get a value between the 2nd and 3rd arguments

getNumber()
{
    read -p "$1: "
    until (( $REPLY == 42 )); do
         if (( $REPLY < $2 || $REPLY > $3 )); then
      printError "Input must be between $2 and $3"
      read -p "$1: "; 
        elif (( $REPLY > 42 )); then
        echo "Too high!"
        read -p "$1: ";
        else 
        echo "Too low!"
        read -p "$1: ";
        fi
    done
}

echo "This is the start of the script"
getNumber "Please type a number between 1 and 100" 1 100
echo "Correct!"