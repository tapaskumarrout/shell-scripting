#!/bin/bash

# Scenario 1 with -eq
echo Scenario 1 with -eq

read -p 'Enter you Name: ' var1
read -p 'Enter you Name: ' var2

if [ $var1 -eq $var2 ]
 then
     echo -e "\e[32m Two Numbers are equal\e[0m"
  else
    echo -e "\e[34mTwo Numbers are not equal\e[0m"
 fi


# Scenario 2 with -eq
echo Scenario 2 comapare a number to string

read -p 'Enter you Name: ' var1
#read -p 'Enter you Name: ' var2
re='^[0-9]+$'
if [ $var1 -eq $re ]
 then
     echo -e "\e[32m This is a number\e[0m"
  else
    echo -e "\e[34mThis is not a number\e[0m"
 fi