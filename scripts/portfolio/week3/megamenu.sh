#!/bin/bash
./passwordCheck.sh
while [ $? -eq 0 ]
do
	echo -e "\e[34mSelect one of the following options: \e[0m" 
	echo -e "\e[36m1. Create a folder\e[0m"
    echo -e "\e[36m2. Copy a folder\e[0m"
    echo -e "\e[36m3. Set a password\e[0m"
    echo -e "\e[36m4. Calculator\e[0m"
    echo -e "\e[36m5. Create week folder\e[0m"
    echo -e "\e[36m6. Check file names\e[0m"
    echo -e "\e[36m7. Download a file from the internet\e[0m"
	echo -e "\e[1;46m8. QUIT\e[0m" 
echo
read -p "$(echo -e "\e[31mEnter option 1, 2, 3, 4, 5, 6, 7 or 8: \e[0m")" option

case $option in
"1" ) echo "Create a folder"
   ./foldermaker.sh
   ;;
"2" ) echo "Copy a folder"
   ./foldercopier.sh
   ;;
"3" ) echo "Set a password"
   ./setPassword.sh
   ;;
"4" ) echo "Calculator"
   ./calculator.sh
   ;;
"5" ) echo "Create week folders"
   ./megafoldermaker.sh
   ;;
"6" ) echo "Check file names"
   ./filenames.sh
   ;;
"7" ) echo "Download a file from the internet"
     ./downloader.sh
    ;;
"8" ) break
   ;;
*) echo "Selection unavailable; please enter a number from 1 to 8: "
esac
done
echo -e "\e[42mThank you. Goodbye!\e[0m" 
exit 0

# reference https://www.unix.com/shell-programming-and-scripting/158387-help-loop-case-statement-script.html