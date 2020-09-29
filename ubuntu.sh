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

function has() {
	[[ -x "$(command -v "$1")" ]];
}

function has_not() {
	! has "$1"
}

#init_os
init_git
#init_curl

