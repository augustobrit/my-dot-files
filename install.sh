#!/bin/sh

source core/message.sh
#source core/color.sh

source system/git.sh
#source system/os.sh
#source system/fonts.sh
source system/curl.sh
#source system/backup.sh

#source applications/discord
#source applications/vscode
#source applications/git-kraken
#source applications/heroku-cli
#source applications/jetbrains
#source applications/database
#source applications/insomnia
#source applications/python
#source applications/node-js

#source browsers/chrome
#source browsers/firefox

#source terminal/zsh
#source terminal/oh-my-zsh

#source dracula/gtk
#source dracula/gnome-terminal
#source dracula/wallpaper
#source dracula/zsh
#source dracula/gedit
#source dracula/insomnia


init(){
	echo -e $WELCOME_MESSAGE	
	echo -e $SYSTEM_CONFIG_MESSAGE
	
	init_git
	init_curl
}

init
