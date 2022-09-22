#!/bin/bash

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
./container.sh
./update.sh
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

                                                                                                                                                  
                                                                                                                                                  
                                                                                                                                                 
                                                                                                                                                  
                                                                                                                                                  
                                                                                                                                                  
                                                                                                                                                  


