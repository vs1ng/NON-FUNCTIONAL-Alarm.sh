#!/bin/bash

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
loadinganim
clear
echo -e "                                                                                                                                                  
   $Red            AAA               lllllll                                                                                      hhhhhhh             
              A:::A              l:::::l                                                                                      h:::::h             
             A:::::A             l:::::l                                                                                      h:::::h             
            A:::::::A            l:::::l                                                                                      h:::::h             
           A:::::::::A            l::::l   aaaaaaaaaaaaa  rrrrr   rrrrrrrrr      mmmmmmm    mmmmmmm               ssssssssss   h::::h hhhhh       
          A:::::A:::::A           l::::l   a::::::::::::a r::::rrr:::::::::r   mm:::::::m  m:::::::mm           ss::::::::::s  h::::hh:::::hhh    
         A:::::A A:::::A          l::::l   aaaaaaaaa:::::ar:::::::::::::::::r m::::::::::mm::::::::::m        ss:::::::::::::s h::::::::::::::hh  
        A:::::A   A:::::A         l::::l            a::::arr::::::rrrrr::::::rm::::::::::::::::::::::m        s::::::ssss:::::sh:::::::hhh::::::h 
       A:::::A     A:::::A        l::::l     aaaaaaa:::::a r:::::r     r:::::rm:::::mmm::::::mmm:::::m         s:::::s  ssssss h::::::h   h::::::h
      A:::::AAAAAAAAA:::::A       l::::l   aa::::::::::::a r:::::r     rrrrrrrm::::m   m::::m   m::::m           s::::::s      h:::::h     h:::::h $Green
     A:::::::::::::::::::::A      l::::l  a::::aaaa::::::a r:::::r            m::::m   m::::m   m::::m              s::::::s   h:::::h     h:::::h
    A:::::AAAAAAAAAAAAA:::::A     l::::l a::::a    a:::::a r:::::r            m::::m   m::::m   m::::m        ssssss   s:::::s h:::::h     h:::::h
   A:::::A             A:::::A   l::::::la::::a    a:::::a r:::::r            m::::m   m::::m   m::::m        s:::::ssss::::::sh:::::h     h:::::h
  A:::::A               A:::::A  l::::::la:::::aaaa::::::a r:::::r            m::::m   m::::m   m::::m ...... s::::::::::::::s h:::::h     h:::::h
 A:::::A                 A:::::A l::::::l a::::::::::aa:::ar:::::r            m::::m   m::::m   m::::m .::::.  s:::::::::::ss  h:::::h     h:::::h
AAAAAAA                   AAAAAAAllllllll  aaaaaaaaaa  aaaarrrrrrr            mmmmmm   mmmmmm   mmmmmm ......   sssssssssss    hhhhhhh     hhhhhhh $NC"
echo -e "                                                                 by $Blue $UBlue Vinayak Singh $NC "
read -p "[?] Enter the time period for this alarm :" TIME
read -p "[?] Enter the title for the alarm notif : " TITLE
echo "Waiting for $TIME"
sleep $TIME
echo -e " Time's up \a" ; clear ; echo -e " Time's up \a" ; clear ; echo -e " Time's up \a" ; clear ; echo -e " Time's up \a" ; clear 
echo -e "Time's up.\a"
sleep 1
echo -e "Time's up\a"
sleep 1
echo -e "Time's up\a"
zenity --info --text "$TITLE"

                                                                                                                                                  
                                                                                                                                                  
                                                                                                                                                 
                                                                                                                                                  
                                                                                                                                                  
                                                                                                                                                  
                                                                                                                                                  


