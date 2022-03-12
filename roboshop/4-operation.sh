#!/bin/bash
#Operator Comparision
# Scenario 1 String Comparision
echo Scenario 1
if [ "Xyz" = "ABC" ]
 then
  echo "Both String are equal"
 else
   echo "Both Strings are not equal"

fi

# Scenario 2
echo Scenario 2 String Comparision by reading a value by using =
read -p 'Enter you Name: ' Name
if [ $Name = "Hari" ]
 then
    echo -e "\e[32mYou are human being\e[0m"
 else
   echo -e "\e[34mYou are not human being\e[0m"
fi

# Scenario 3
echo Scenario 3 String Comparision by reading a value by using ==
read -p 'Enter you Name: ' Name
if [ $Name == "Hari" ]
 then
    echo -e "\e[32mYou are human being\e[0m"
 else
   echo -e "\e[34mYou are not human being\e[0m"
fi

# Scenario 4
echo Scenario 4 String Comparision by reading a value by using !=
read -p 'Enter you Name: ' Name
if [ $Name != "Hari" ]
 then
    echo -e "\e[34mYou are not human being\e[0m"
 else
   echo -e "\e[32mYou are human being\e[0m"
fi