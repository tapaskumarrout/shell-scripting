#!/bin/bash

source Components/common.sh

echo -e "\e[32m*START Install Nginx.   \e[0m"
yum install nginx -y
statuschk $? "Install Nginx Webserver" &>>$LOG_FILE


systemctl enable nginx
statuschk $? "Enable Nginx Webserver" &>>$LOG_FILE


systemctl start nginx
statuschk $? "Start Nginx Webserver" &>>$LOG_FILE


curl -s -L -o /tmp/frontend.zip "https://github.com/roboshop-devops-project/frontend/archive/main.zip"
statuschk $? "Downloading frontend application" &>>$LOG_FILE


cd /usr/share/nginx/html
rm -rf *
unzip /tmp/frontend.zip
mv frontend-main/* .
mv static/* .
rm -rf frontend-main README.md
mv localhost.conf /etc/nginx/default.d/roboshop.conf
statuschk $? "roboshop.conf Updation" &>>$LOG_FILE


systemctl restart nginx
statuschk $? "Nginx Webserver Start" &>>$LOG_FILE
