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


# Scenario 2 comapare with =~
echo Scenario 2 comapare with =~ Check the entered number is a number

read -p 'Enter you Name: ' var1
#read -p 'Enter you Name: ' var2

re='^[0-9]+$'

if  [[ $var1 =~ $re ]]
 then
     echo -e "\e[32m This is a number\e[0m"
  else
    echo -e "\e[34mThis is not a number\e[0m"
 fi

 # Scenarion 3 comapare with -ne , -gt, -ge, lt, -le

 echo Scenarion 3 comapare with -ne , -gt, -ge, lt, -le

 read -p 'Enter 1st Number: ' var1
 read -p 'Enter 2nd Number: ' var2

 if [ $var1 -ne $var2 ]
  then
      echo -e "\e[32m $var1 is not equal to $var2\e[0m"
   else
     echo -e "\e[34m$var1 is  equal to $var2\e[0m"
  fi

  if [ $var1 -gt $var2 ]
    then
        echo -e "\e[32m$var1 is greater than $var2 \e[0m"
     else
       echo -e "\e[34m$var1 is not greater than $var2\e[0m"
    fi

   if [ $var1 -ge $var2 ]
       then
           echo -e "\e[32m$var1 is greater than equal to $var2 \e[0m"
        else
          echo -e "\e[34m$var1 is not greater than equal to $var2\e[0m"
       fi
  if [ $var1 -lt $var2 ]
       then
           echo -e "\e[32m$var1 is less than  $var2 \e[0m"
        else
          echo -e "\e[34m$var1 is not less than $var2\e[0m"
       fi

   if [ $var1 -le $var2 ]
              then
                  echo -e "\e[32m$var1 is less than equal to $var2 \e[0m"
               else
                 echo -e "\e[34m$var1 is not less than equal to $var2\e[0m"
        fi