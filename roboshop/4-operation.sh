#!/bin/bash
#Operator Comparision
# Scenario 1
echo Scenario 1
if [ "Xyz" = "ABC" ]
 then
  echo "Both String are equal"
 else
   echo "Both Strings are not equal"

fi

# Scenario 2
echo Scenario 2
read -p 'Enter you Name: ' Name
if [ $Name = "Hari" ]
 then
    echo -e "\e[32mYou are human being\e[0m"
 else
   echo -e "\e[34mYou are not human being\e[0m"
fi