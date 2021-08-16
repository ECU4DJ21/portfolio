##!/bin/bash
read -p "Enter first number: " inp1
read -p "Enter second number: " inp2

echo

echo "Please choose a number for your action:"
echo -e "\e[34m1. Addition\e[0m"
echo -e "\e[32m2. Subtraction\e[0m"
echo -e "\e[31m3. Multiplication\e[0m"
echo -e "\e[35m4. Division\e[0m"
read oper

if [ $oper -eq 1 ]
then
    echo -e "\e[34mAddition result \e[0m" $(($inp1 + $inp2))
else
        if [ $oper -eq 2 ]
        then
                echo -e "\e[32mSubtraction result \e[0m" $(($inp1 - $inp2))
        else
                if [ $oper -eq 3 ]
                then
                        echo -e "\e[31mMultiplication result \e[0m" $(($inp1 * $inp2))
            else
                if [ $oper -eq 4 ]
                        then
                                echo -e "\e[35mDivision result \e[0m" $(($inp1 / $inp2))
                        else
                                echo "Invalid input"
                fi    
                fi
        fi
fi
exit 0