#!/bin/bash

source ./settings

function Application_install { 
	printf "Install $1 "
	sudo apt-get install $1 -y >> $LOG_FILE 2>&1 
	if [ $? -eq 0 ]
	then
		printf "%-20s [OK]\n"
	else           
		printf "%-20s [FAIL]\n"
	fi
}


## MAIN
rm -rf -R -f $LOG_DIR
mkdir $LOG_DIR 

Application_install postgresql 
Application_install sqitch
Application_install lua5.3 
