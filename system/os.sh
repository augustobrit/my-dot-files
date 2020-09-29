#!/bin/sh

. core/message.sh
. core/tags.sh

function init_os() {
	
	echo -e "\n$TAG_OS $INSTALL_MSG\n"

	sudo apt autoremove
	sudo apt update
	sudo apt upgrade
}

function stop_os() {
	sudo apt-get autoclean -y
	sudo apt-get autoremove -y
}
