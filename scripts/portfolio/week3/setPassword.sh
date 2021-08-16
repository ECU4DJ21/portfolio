#!/bin/bash
read -p "Type the name of the folder you would like to create: " folderName #Asks user to type in a folder name
mkdir ~/scripts/portfolio/week2/$folderName #Create folder with user variable in specified  directory path
read -sp "Type a new password: " userPWD #Asks user to type in new password where the user input is hidden
echo #Places new line after password prompt
echo "$userPWD" > ~/scripts/portfolio/week2/$folderName/secret.txt  #Save user password in specified  file and  user created folder
echo "$userPWD" | sha256sum >> ~/scripts/portfolio/week2/$folderName/secret.txt  #Generate hash of user password and saves user password in specified file path overwriting previously saved password in plain text
exit 0 #Script completed successfully 
