#!/bin/bash

# Scenario 1 with -eq
echo Scenario 1

read -p 'Enter you Name: ' var1
read -p 'Enter you Name: ' var2

if [ $var1 -eq $var2]
 then
     echo -e "\e[32m Two Numbers are equal\e[0m"
  else
    echo -e "\e[34mTwo Numbers are not equal\e[0m"
 fi
