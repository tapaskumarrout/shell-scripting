
LOG_FILE=/tmp/roboshop.log
rm -f $LOG_FILE

statuschk(){
	if [ "$?" -eq 0 ]
	 then
		echo -e "\e[32m$2 - Successful. \e[0m"
	 else
		echo -e "\e[31m$2 - Failed \e[0m"
		exit 1
	fi
}

print(){
	echo -e "============= $1 =============" &>>$LOG_FILE
	echo -e "\e[35m $1 \e[0m"
}

