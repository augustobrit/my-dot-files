#!/bin/sh

. core/message.sh
. core/tags.sh
. core/console.sh

setup_gh_cli() {
	echo -e ''
}
	
setup_gh() {
	sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-key C99B11DEB97541F0
	sudo apt-add-repository https://cli.github.com/packages

	sudo apt install gh
}

setup_git() {
	log $TAG_GIT $INSTALL_MSG
	
	sudo apt install git

	
	echo -e "\n$TAG_GIT $SUCCESS_MSG\n"
	git --version

	echo -e "\n$TAG Setup User and Email\n"

	git config --global user.name $1
	git config --global user.email $2

	git config --list
}

function init_git() {
	input $TAG_GIT
	input_res=$?

	if [ $input_res -eq 1 ] 
	then

		log $TAG_GIT $"Enter your GIT Username"
		read git_username

		log $TAG_GIT $"Enter your GIT Email"
		read git_email

		if [ -z $git_username -o -z $git_email ]; then
			log $TAG_GIT $"\nUsername and Email can't be empty.\n"
			
			init_git
		else
			setup_git $git_username $git_email
		fi
	else
		log $TAG_GIT $CANCEL_MSG
	fi
}
