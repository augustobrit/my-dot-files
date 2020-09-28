#!/bin/sh

source core/message.sh
source core/color.sh

source system/git.sh
source system/os.sh
source system/fonts.sh
source system/curl.sh
source system/backup.sh

source applications/discord.sh
source applications/vscode.sh
source applications/git-kraken.sh
source applications/heroku-cli.sh
source applications/jetbrains.sh
source applications/database.sh
source applications/insomnia.sh
source applications/python.sh
source applications/node-js.sh

source browsers/chrome.sh
source browsers/firefox.sh

source terminal/zsh.sh
source terminal/oh-my-zsh.sh

source dracula/gtk.sh
source dracula/gnome-terminal.sh
source dracula/wallpaper.sh
source dracula/gedit.sh
source dracula/insomnia.sh

echo -e $WELCOME_MESSAGE	
echo -e $SYSTEM_CONFIG_MESSAGE

init_os
init_git
init_curl
