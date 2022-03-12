#!/bin/bash
echo -e "\e[32m*START Install Nginx.   \e[0m"
yum install nginx -y
if [ "$?" -eq 0 ]
 then
	echo -e "\e[32m*Nginx Webserver restarted Successfully.   \e[0m"
 else
	echo -e "\e[31m*install nginx Not Successful.   \e[0m"
	exit 1
fi

echo -e "\e[32m*Enable Nginx-START.   \e[0m"
systemctl enable nginx
if [ "$?" -eq 0 ]
 then
	echo -e "\e[32m*Enable Nginx Successful.   \e[0m"
 else
	echo -e "\e[31m*Enable Nginx Not Successful. Return Code $? \e[0m"
	exit 2
fi

echo -e "\e[32m*START Nginx.   \e[0m"
systemctl start nginx
if [ "$?" -eq 0 ]
 then
	echo -e "\e[32m* Nginx started Successfully.   \e[0m"
 else
	echo -e "\e[31m*Nginx not started Successfully. Return Code $?   \e[0m"
	exit 3
fi

echo -e "\e[32m*START downloading frontend application from git   \e[0m"
curl -s -L -o /tmp/frontend.zip "https://github.com/roboshop-devops-project/frontend/archive/main.zip"
if [ "$?" -eq 0 ]
 then
	echo -e "\e[32m* Downloading frontend application from git Successful.   \e[0m"
 else
	echo -e "\e[31m*Downloading frontend application from git NOT Successful. Return Code $?  \e[0m"
	exit 4
fi



echo -e "\e[32m*START-Deploy in Nginx Default Location.   \e[0m"
cd /usr/share/nginx/html
rm -rf *
unzip /tmp/frontend.zip
mv frontend-main/* .
mv static/* .
rm -rf frontend-main README.md
mv localhost.conf /etc/nginx/default.d/roboshop.conf
if [ "$?" -eq 0 ]
 then
	echo -e "\e[32m* Downloading frontend application from git Successful.   \e[0m"
 else
	echo -e "\e[31m*Downloading frontend application from git NOT Successful. Return Code $?  \e[0m"
	exit 5
fi


echo -e "\e[32m*END-Deploy in Nginx Default Location.   \e[0m"

echo -e "\e[32m*START-Finally restart the service once to effect the changes.   \e[0m"
systemctl restart nginx
if [ "$?" -eq 0 ]
 then
	echo -e "\e[32m*Nginx Webserver restarted Successfully.   \e[0m"
 else
	echo -e "\e[32m*Nginx Webserver Not restarted Properly.   \e[0m"
	exit 6
fi

echo -e "\e[32mFrontend Application Script Successfully Executed \e[0m"