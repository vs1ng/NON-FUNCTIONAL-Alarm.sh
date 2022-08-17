#!/bin/bash
Color_Off='\033[0m'       # Text Reset
# Regular Colors
Black='\033[0;30m'        # Black
Red='\033[0;31m'          # Red
NC='\033[0m'
function packcheck(){
	IFEXIST="${dpkg -s zenity | grep "Status"}"
	if "Status: install ok installed" == "$IFEXIST"
	then
		echo ""
	else
		echo -e "$Red [!] Pre-requisites are not installed ; Please install them."
		sudo apt install zenity
	fi
}
function loadinganim(){
	echo -e "$Red [!] Loading.. $NC"
	sleep 1
	clear
	echo -e "$Red [!] Loading... $NC"
	sleep 1
	clear
	echo -e "$Red [!] Loading.... $NC"
	sleep 1
	clear
	echo -e "$Red [!] Checking Prerequisites.. $NC"
	sleep 1
	clear
	packcheck
	sleep 1
	echo -e " $Red [!] Done. "
}
export -f packcheck ; export -f loadinganim 
./1.sh

