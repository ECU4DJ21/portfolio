#!/bin/bash

# run password check script
./passwordCheck.sh

# use if statement to display selection only if script output results in Access Granted
if [ $? -eq 0 ]; then
        echo "Select one of the following options: "
        echo "1. Create a folder"
        echo "2. Copy a folder"
        echo "3. Set a password"

# otherwise say goodbye
else
        echo "Goodbye"
        exit 1

# end if statement 
fi

# ask user to select an option
read -p "Enter option 1,2 or 3: " option

# use case statement to allow decisions made and follow on action based on user input
case $option in
"1") echo "Create a folder"
   ./foldermaker.sh
   ;;
"2") echo "Copy a folder"
   ./foldercopier.sh
   ;;
"3") echo "Set a password"
   ./setPassword.sh
   ;;
"*") echo "Selection unavailable; please enter 1, 2 or 3"
   ;;

esac
# end of case statement 

exit 0