#!/bin/bash

source Components/common.sh

print "START Install Nginx."
yum install nginx -y
statuschk $? "Install Nginx Webserver" &>>$LOG_FILE

print "Enable nginx."
systemctl enable nginx
statuschk $? "Enable Nginx Webserver" &>>$LOG_FILE

print "Start nginx."
systemctl start nginx
statuschk $? "Start Nginx Webserver" &>>$LOG_FILE

print "Downloading frontend application"
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

print "Restart nginx"
systemctl restart nginx
statuschk $? "Nginx Webserver Start" &>>$LOG_FILE
