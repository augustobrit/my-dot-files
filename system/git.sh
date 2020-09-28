#!/bin/sh

source core/message.sh

TAG="[GIT]"

setup_git_cli() {
}

setup_git(){
	sudo apt install git
	
	clear
	echo -e "\n$TAG Installation successful\n"
	git --version
	
	echo -e "\n$TAG Setting up User and Email\n"
	
	git config --global user.name $1
	git config --global user.email $2
	
	git config --list
}

init_git(){
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
	
	echo -e "\n$TAG Installing Git\n"
	
	echo "$TAG Enter your GIT Username"
	read git_username
	
	echo "$TAG Enter your GIT Email"
	read git_email

	if [ -z "$git_username" -o -z "$git_email" ] 
	then
		echo "\nUsername and Email can't be empty.\n"
		init_git
	else
		setup_git $git_username $git_email
	fi
}

