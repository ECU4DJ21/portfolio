#!/bin/bash
read -sp "$(echo -e "\e[31mType in your password: \e[0m")" userPWD #output in colour red; asks user to type in new password where the user input is hidden
echo #Places new line after password prompt
echo "Verifying your password"
echo "$userPWD" | sha256sum -c secret.txt 2>/dev/null --status #pipes user password into hash and compare with hash in file; hides warning and status messages
if [ $? -eq 0 ]; then
    echo -e "\e[32mAccess Granted\e[0m" #inform user success; output in colour green
    exit 0
else
    echo "Access Denied"
    exit 1
fi