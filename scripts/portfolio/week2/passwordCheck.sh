#!/bin/bash
read -sp "Type in your password: " userPWD #Ask user to type in new password where the user input is hidden
echo #Place new line after password prompt
echo
echo "$userPWD" | sha256sum -c ~/scripts/portfolio/week2/UserPass/secret.txt 2>/dev/null --status #Compare hash of user password to that contained in secret.txt, surpress warning and status messages
if [ $? -eq 0 ]; then #if compare result is OK then
    echo "Access Granted" #Inform user that access is granted
    exit 0
else #If result is FAILED or NOT OK then
    echo "Access Denied"  #Inform user that access is denied
    exit 1
fi