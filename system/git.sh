#!/bin/sh

source core/message.sh

TAG="[GIT]"

setup_gh_cli() {
	echo -e ''
}
	
setup_gh() {
	sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-key C99B11DEB97541F0
	sudo apt-add-repository https://cli.github.com/packages

	sudo apt install gh
}

setup_git() {
	sudo apt install git

	clear
	
	echo -e "\n$TAG $SUCCESS_MSG\n"
	git --version

	echo -e "\n$TAG Setup User and Email\n"

	git config --global user.name $1
	git config --global user.email $2

	git config --list
}

init_git() {
	init_msg $TAG
	response=$?

	if [ $response -eq 1 ] 
	then
		echo -e "\n$TAG $INSTALL_MSG\n"

		echo "$TAG Enter your GIT Username"
		read git_username

		echo "$TAG Enter your GIT Email"
		read git_email

		if [ -z "$git_username" -o -z "$git_email" ]; then
			echo "\nUsername and Email can't be empty.\n"
			init_git
		else
			setup_git $git_username $git_email
		fi
	else
		echo -e "\n$TAG $CANCEL_MSG\n"
	fi
}
