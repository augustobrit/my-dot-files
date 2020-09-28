#!/bin/sh

source core/message.sh

TAG="[CURL]"

function init_curl() {
	init_msg $TAG
	msg_response=$?
	
	if [ $msg_response -eq 1 ]
	then
		echo -e "\n$TAG $INSTALL_MSG\n"
			
		sudo apt install curl
		
		echo -e "\n$TAG $SUCCESS_MSG\n"
		curl --version
	else 
		echo -e "\n$TAG $CANCEL_MSG\n"
	fi
}
