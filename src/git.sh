#!/bin/sh

. core/message.sh
. core/tags.sh
. core/console.sh

function setup_gh_cli() {
	echo -e ''
}
	
function setup_gh() {
	sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-key C99B11DEB97541F0
	sudo apt-add-repository https://cli.github.com/packages

	sudo apt install gh
}

function setup_git() {
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
	input $TAG_GIT "Do you want to continue"
	input_res=$?

	if [ $input_res -eq 1 ] 
	then

		log $TAG_GIT $"Enter your GIT Username: "
		read git_username

		log $TAG_GIT $"Enter your GIT Email: "
		read git_email

		if [ -z $git_username ] || [ -z $git_email ]; then		
			input $TAG_GIT $"Username and Email can't be empty. Do you want to type again"
			try_again_input=$?
			
			if [ $try_again_input -eq 1 ]; then
				init_git
			else
				exit
			fi
			
		else
			setup_git $git_username $git_email
		fi
	else
		log $TAG_GIT $CANCEL_MSG
	fi
}
