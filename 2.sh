#!/bin/bash
Color_Off='\033[0m'       # Text Reset
# Regular Colors
Black='\033[0;30m'        # Black
Red='\033[0;31m'          # Red
NC='\033[0m'
Color_Off='\033[0m'       # Text Reset
# Regular Colors
Black='\033[0;30m'        # Black
Red='\033[0;31m'          # Red
Green='\033[0;32m'        # Green
Yellow='\033[0;33m'       # Yellow
Blue='\033[0;34m'         # Blue
Purple='\033[0;35m'       # Purple
Cyan='\033[0;36m'         # Cyan
White='\033[0;37m'        # White
NC='\033[0m'
UBlue='\033[4;34m'
function packcheck(){
	IFEXIST="${dpkg -s zenity | grep "Status"}"
	if [ "Status: install ok installed" == "$IFEXIST" ];
	then
		echo ""
	else
		echo -e "$Red [!] Pre-requisite 'Zenity' is not installed ; Please install it.."
		sudo apt install zenity
	fi
	BRUH="$(dkpg -s enlightenment | grep "Status")"
	if [ "Status: install ok installed" == "$BRUH" ];
	then
		echo ""
	else
		echo -e "$Red [!] Pre-requisite 'Enlightenment' is not installed ; Please install it.."
		sudo apt install enlightenment
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
export Color_Off='\033[0m'       
export Black='\033[0;30m'       
export Red='\033[0;31m'         
export Green='\033[0;32m'        
export Yellow='\033[0;33m'       
export Blue='\033[0;34m'         
export Purple='\033[0;35m'      
export Cyan='\033[0;36m'         
export White='\033[0;37m'        
export NC='\033[0m'
export UBlue='\033[4;34m'
./1.sh

