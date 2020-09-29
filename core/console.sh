function input(){
	clear
	
	echo "$1 → $2? [Y/n]: "
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

function log() {
	echo -e "\n$1 → $2\n"
}
