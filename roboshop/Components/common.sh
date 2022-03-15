
statuschk(){
	if [ "$?" -eq 0 ]
	 then
		echo -e "\e[32m*$2 - Successful.   \e[0m"
	 else
		echo -e "\e[31m*$2 - Failed   \e[0m"
		exit 1
	fi
}

LOG_FILE=/tmp/roboshop.log