#!/bin/sh

export WELCOME_MSG="
### Ubuntu Development Environment ###
       \nby: Augusto Brito\n
"

export INSTALL_MSG="Installing"
export CANCEL_MSG="Installation Canceled"
export SUCCESS_MSG="Installation Successful"

export SYSTEM_CONFIG_MSG="Initializing System Configuration"
export APPLICATIONS_MSG="a"
export BROWSERS_MSG="a"
export ZSH_MSG="a"
export DRACULA_THEME_MSG="a"

function init_msg(){
	clear
	
	echo -e "Do you want to install [Y/n]: $1"
	read install_input
	
	if [ -z "$install_input" ] 
	then
		install_message
	else
		if [ "$install_input" == "y" ] 
		then
			return 1
		else
			return 0 
		fi
	fi
}
