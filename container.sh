#!/bin/bash

Black='\033[0;30m'        # Black
Red='\033[0;31m'          # Red
Green='\033[0;32m'        # Green
Yellow='\033[0;33m'       # Yellow
Blue='\033[0;34m'         # Blue
Purple='\033[0;35m'       # Purple
Cyan='\033[0;36m'         # Cyan
Wh1te='\033[0;37m'        # Wh1te
NC='\033[0m'
UBlue='\033[4;34m'
UBlack='\033[4;30m'       # Black
URed='\033[4;31m'         # Red
UGreen='\033[4;32m'       # Green
UYellow='\033[4;33m'      # Yellow
UBlue='\033[4;34m'        # Blue
UPurple='\033[4;35m'      # Purple
UCyan='\033[4;36m'        # Cyan
UWhite='\033[4;37m'       # White
function loadanim(){
    echo -e " $Red [~] Loading.."
    sleep 1
    clear
    echo -e " $Red [~] Loading..."
    sleep 1
    clear
    echo -e " $Red [~] Loading...."
    sleep 1
    clear
    echo -e " $Red [~] Loading.."
    sleep 1
    clear
    echo -e " $Red [~] Loading..."
    sleep 1
    clear 
    echo -e " $Red [~] Loading...."
    sleep 1
    clear
}
function pckchk(){
    ITSTHERE="Status: install ok installed"
    PCK=$(dpkg -s zenity | grep "Status")
    PCK1=$(dpkg -s at | grep "Status")
    if [ "$PCK" == "$ITSTHERE" ] || [ "$PCK1" == "$ITSTHERE" ];then
        sleep 2
        echo -e "$Green [!] Prerequisites installed , Proceeding!";
    else sleep 2 ; echo -e "$Red [!] Installing prequisites.." ; sudo apt install zenity ; sudo apt install at ; clear
    fi
}
export Black ; export Red ; export Green ; export Yellow ;
export Blue ; export Purple ; export Cyan ; export Wh1te ;
export NC ; export UBlue ; export UBlack ; export URed ;
export UGreen ; export UYellow ; export UPurple ; export UCyan ;
export UWhite ; export UPurple ; export -fn pckchk ; export -fn loadanim
./alert.sh