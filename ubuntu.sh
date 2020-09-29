#!/bin/sh

. core/message.sh
#. core/color.sh

#. system/os.sh
. system/git.sh
#. system/curl.sh
#. system/fonts.sh
#. system/backup.sh

#. applications/discord.sh
#. applications/vscode.sh
#. applications/git-kraken.sh
#. applications/heroku-cli.sh
#. applications/jetbrains.sh
#. applications/database.sh
#. applications/insomnia.sh
#. applications/python.sh
#. applications/node-js.sh

#. browsers/chrome.sh
#. browsers/firefox.sh

#. terminal/zsh.sh
#. terminal/oh-my-zsh.sh

#. dracula/gtk.sh
#. dracula/gnome-terminal.sh
#. dracula/wallpaper.sh#
#. dracula/gedit.sh
#. dracula/insomnia.sh

function init() {
	echo "------------------------------------------"
	echo $WELCOME_MSG
	echo $COPYRIGHT_MSG
	echo $CONTACT_MSG
	echo "------------------------------------------"
	echo
	echo "Options:"
	echo "1. Install Ubuntu Environment"
	echo "2. Install Python Environment"
	echo "3. Install NodeJS Environment"
	echo "4. Exit"
	echo
	echo -n "What you want to do? "
	read option
	
	case $option in
		1) init_ubuntu ;;
		2) init_python ;;
		3) init_nodejs ;;
		4) exit ;;
		*) "Invalid option." ; echo ; init ;;
	esac
}

function init_ubuntu() {
	echo "Ubuntu"
}

function init_python() {
	echo "Python"
}

function init_nodejs() {
	echo "NodeJS"
}

init
