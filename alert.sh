#!/bin/bash
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
    PCK2=$(dpkg -s xdotool | grep "Status")
    if [ "$PCK" == "$ITSTHERE" ] || [ "$PCK1" == "$ITSTHERE" ]|| [ "$PCK2" == "$ITSTHERE" ]; then
        sleep 2
        echo -e "$Green [!] Prerequisites installed , Proceeding!";
    else sleep 2 ; echo -e "$Red [!] Installing prequisites.." ; sudo apt install zenity ; sudo apt install at ; clear
    fi
}
echo -e " $Cyan [?] Would you like to enter $Red $URed Alert mode $NC ? Hit $Green 1 $NC for $Green yes $NC and $Cyan 0 $NC for$Cyan no $NC"
read -r YESORNO
if [ "$YESORNO" == "1" ]; then
    echo -e "$Green [!] Entering Alert mode.. " ;
    loadanim
    echo -e "$Purple
 ▄▄▄▄▄▄▄▄▄▄▄  ▄            ▄▄▄▄▄▄▄▄▄▄▄  ▄▄▄▄▄▄▄▄▄▄▄  ▄▄▄▄▄▄▄▄▄▄▄ 
▐░░░░░░░░░░░▌▐░▌          ▐░░░░░░░░░░░▌▐░░░░░░░░░░░▌▐░░░░░░░░░░░▌
▐░█▀▀▀▀▀▀▀█░▌▐░▌          ▐░█▀▀▀▀▀▀▀▀▀ ▐░█▀▀▀▀▀▀▀█░▌ ▀▀▀▀█░█▀▀▀▀ 
▐░▌       ▐░▌▐░▌          ▐░▌          ▐░▌       ▐░▌     ▐░▌     
▐░█▄▄▄▄▄▄▄█░▌▐░▌          ▐░█▄▄▄▄▄▄▄▄▄ ▐░█▄▄▄▄▄▄▄█░▌     ▐░▌     
▐░░░░░░░░░░░▌▐░▌          ▐░░░░░░░░░░░▌▐░░░░░░░░░░░▌     ▐░▌     
▐░█▀▀▀▀▀▀▀█░▌▐░▌          ▐░█▀▀▀▀▀▀▀▀▀ ▐░█▀▀▀▀█░█▀▀      ▐░▌     
▐░▌       ▐░▌▐░▌          ▐░▌          ▐░▌     ▐░▌       ▐░▌     
▐░▌       ▐░▌▐░█▄▄▄▄▄▄▄▄▄ ▐░█▄▄▄▄▄▄▄▄▄ ▐░▌      ▐░▌      ▐░▌     
▐░▌       ▐░▌▐░░░░░░░░░░░▌▐░░░░░░░░░░░▌▐░▌       ▐░▌     ▐░▌     
 ▀         ▀  ▀▀▀▀▀▀▀▀▀▀▀  ▀▀▀▀▀▀▀▀▀▀▀  ▀         ▀       ▀      
    "
sleep 1
echo -e "$Blue
 ▄▄       ▄▄  ▄▄▄▄▄▄▄▄▄▄▄  ▄▄▄▄▄▄▄▄▄▄   ▄▄▄▄▄▄▄▄▄▄▄ 
▐░░▌     ▐░░▌▐░░░░░░░░░░░▌▐░░░░░░░░░░▌ ▐░░░░░░░░░░░▌
▐░▌░▌   ▐░▐░▌▐░█▀▀▀▀▀▀▀█░▌▐░█▀▀▀▀▀▀▀█░▌▐░█▀▀▀▀▀▀▀▀▀ 
▐░▌▐░▌ ▐░▌▐░▌▐░▌       ▐░▌▐░▌       ▐░▌▐░▌          
▐░▌ ▐░▐░▌ ▐░▌▐░▌       ▐░▌▐░▌       ▐░▌▐░█▄▄▄▄▄▄▄▄▄ 
▐░▌  ▐░▌  ▐░▌▐░▌       ▐░▌▐░▌       ▐░▌▐░░░░░░░░░░░▌
▐░▌   ▀   ▐░▌▐░▌       ▐░▌▐░▌       ▐░▌▐░█▀▀▀▀▀▀▀▀▀ 
▐░▌       ▐░▌▐░▌       ▐░▌▐░▌       ▐░▌▐░▌          
▐░▌       ▐░▌▐░█▄▄▄▄▄▄▄█░▌▐░█▄▄▄▄▄▄▄█░▌▐░█▄▄▄▄▄▄▄▄▄ 
▐░▌       ▐░▌▐░░░░░░░░░░░▌▐░░░░░░░░░░▌ ▐░░░░░░░░░░░▌
 ▀         ▀  ▀▀▀▀▀▀▀▀▀▀▀  ▀▀▀▀▀▀▀▀▀▀   ▀▀▀▀▀▀▀▀▀▀▀ 
\a"
echo -e "$Red [~] Checking prerequisites..."
pckchk
read -p "[!] Enter how many days till this alert is needed: " TILLHUH
read -p "[!] Enter what you need an alert for: " TOTLE
touch /home/$USER/Desktop/alrt.sh 
WOWI="zenity --info --text $TOTLE"
GH="#!/bin/bash"
echo $GH > /home/$USER/Desktop/alrt.sh
echo sleep $TILLHUH >> /home/$USER/Desktop/alrt.sh
echo $WOWI >> /home/$USER/Desktop/alrt.sh
chmod +x /home/$USER/Desktop/alrt.sh
echo -e "[!] Reminder made sucessfully , will remind you of $TOTLE in $TILLHUH ."
sleep 3 ; clear 
bash /home/$USER/Desktop/alrt.sh
elif [ "$YESORNO" == "0" ]; then
    echo -e "$Red [~] OKay , Proceeding to $UPurple Alarm mode. $NC";
fi