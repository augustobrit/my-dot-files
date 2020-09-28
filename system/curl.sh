#!/bin/sh

source core/message.sh

TAG="[CURL]"

init_curl() {
	init_msg $TAG
	response=$?
	
	if [ $response -eq 1 ]
	then
		echo -e "\n$TAG $INSTALL_MSG\n"
			
		sudo apt install curl
		
		echo -e "\n$TAG $SUCCESS_MSG\n"
		curl --version
	else 
		echo -e "\n$TAG $CANCEL_MSG\n"
	fi
}
