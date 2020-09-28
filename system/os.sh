#!/bin/sh

TAG="[OS]"

init_os() {
	echo -e "$TAG Initializing OS Configuration"

	sudo apt autoremove
	sudo apt update
	sudo apt upgrade
}
