#!/bin/sh

. src/anydesk.sh
. src/backup.sh
. src/browsers.sh
. src/curl.sh
. src/docker.sh
. src/dracula.sh
. src/fonts.sh
. src/git.sh
. src/heroku.sh
. src/insomnia.sh
. src/jetbrains.sh
. src/node.sh
. src/os.sh
. src/postgres.sh
. src/python.sh
. src/terminal.sh
. src/vm.sh
. src/vpn.sh
. src/vscode.sh

function init() {
	echo "------------------------------------------"
	echo "WELCOME TO INSTALLATION"
  echo "Setup Ubuntu & Install Development APPs"
	echo "By Augusto Brito"
	echo "------------------------------------------"
	echo
	echo "Options:"
	echo "0. Exit"
  echo "1. Update Ubuntu & Repositories"
	echo "2. Install Fonts"
	echo "3. Install Curl"
	echo "4. Create Folder Strcuture & Recover Backup"
  echo "5. Install Git & Setup GitHub"
  echo "6. Install & Setup Postgres"
  echo "7. Install Browsers"
  echo "8. Install & Setup VSCode"
  echo "9. Install JetBrains Tools"
  echo "10. Install OpenVPN"
  echo "11. Install Heroku CLI"
  echo "12. Install Docker CLI"
  echo "13. Install Insomnia"
  echo "14. Install AnyDesk"
  echo "15. Setup NodeJS Environment"
  echo "16. Setup Python Environment"
  echo "17. Install VirtualBox"
  echo "18. Setup Dracula Theme"
	echo
	echo -n "What you want to do? "
	read option
	
	case $option in
		0) exit ;;
		1) os;;
		2) fonts;;
		3) browsers;;
		4) curl;;
		5) docker;;
		6) dracula;;
		7) anydesk;;
		8) anydesk;;
		9) anydesk;;
		10)anydesk ;;
		11)anydesk ;;
		12)anydesk ;;
		13)anydesk ;;
		14)anydesk ;;
		15)anydesk ;;
		16)anydesk ;;
		17)anydesk ;;
		18)anydesk ;;
		*) "Invalid option." ; echo ; init ;;
	esac
}

init