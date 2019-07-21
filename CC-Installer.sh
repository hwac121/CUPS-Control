#!/bin/bash

#================================#
#           FUNCTIONS            #
#================================#

splash(){
	
	echo -e "\e[34m    __  __ __  ____    _____\e[0m";
	sleep 0.03
	echo -e "\e[34m   /  ]|  |  ||    \  / ___/\e[0m";
	sleep 0.03
	echo -e "\e[34m  /  / |  |  ||  o  )(   \_\e[0m";
	sleep 0.03
	echo -e "\e[34m /  /  |  |  ||   _/  \__  |\e[0m";
	sleep 0.03
	echo -e "\e[34m/   \_ |  :  ||  |    /  \ |    Version 1.0\e[0m";
	sleep 0.03
	echo -e "\e[34m\     ||     ||  |    \    |\e[0m";
	sleep 0.03
	echo -e "\e[34m \____| \__,_||__|     \___|\e[0m";
	sleep 0.03
	echo -e " ";
	sleep 0.03
	echo -e "\e[34m    __   ___   ____   ______  ____   ___   _\e[0m";
	sleep 0.03
	echo -e "\e[34m   /  ] /   \ |    \ |      ||    \ /   \ | |\e[0m";
	sleep 0.03
	echo -e "\e[34m  /  / |     ||  _  ||      ||  D  )     || |\e[0m";
	sleep 0.03
	echo -e "\e[34m /  /  |  O  ||  |  ||_|  |_||    /|  O  || |___\e[0m";
	sleep 0.03
	echo -e "\e[34m/   \_ |     ||  |  |  |  |  |    \|     ||     |\e[0m";
	sleep 0.03
	echo -e "\e[34m\     ||     ||  |  |  |  |  |  .  \     ||     |\e[0m";
	sleep 0.03
	echo -e "\e[34m \____| \___/ |__|__|  |__|  |__|\_|\___/ |_____|\e[0m";
	sleep 0.03
	echo -e " ";
	sleep 0.03
	echo -e " ";
	sleep 0.03
	echo -e "\e[34mVersion 1.0\e[0m";
	sleep 0.03
	echo -e "\e[34mby Majik Cat Security - July 2019\e[0m";
	sleep 0.03
	echo -e " ";
	sleep 0.03
}

credits(){

	echo -e "\e[32m▓▓▓▓\e[0m"; 
	sleep 0.03
	echo -e "\e[32m▒▒▒▓▓\e[0m"; 
	sleep 0.03
        echo -e "\e[32m▒▒▒▒▒▒▓\e[0m"; 
	sleep 0.03
        echo -e "\e[32m▒▒▒▒▒▒▒▓\e[0m"; 
	sleep 0.03
        echo -e "\e[32m▒▒▒▒▒▒▒▓\e[0m"; 
	sleep 0.03
        echo -e "\e[32m▒▒▒▒▒▒▒▒▓\e[0m"; 
	sleep 0.03
        echo -e "\e[32m▒▒▒▒▒▒▒▒▓▓▓\e[0m"; 
	sleep 0.03
        echo -e "\e[32m▒▒▓▓▓▓▓▓░░░▓\e[0m"; 
	sleep 0.03
        echo -e "\e[32m▒▒▓░░░░▓░░░░▓\e[0m"; 
	sleep 0.03
        echo -e "\e[32m▒▓░░░░░░▓░▓░▓\e[0m"; 
	sleep 0.03
        echo -e "\e[32m▒▓░░░░░░▓░░░▓\e[0m"; 
	sleep 0.03
        echo -e "\e[32m▒▓░░▓░░░▓▓▓▓\e[0m"; 
	sleep 0.03
        echo -e "\e[32m▒▒▓░░░░▓▒▒▒▒▓\e[0m"; 
	sleep 0.03
        echo -e "\e[32m▒▒▒▓▓▓▓▒▒▒▒▒▓\e[0m"; 
	sleep 0.03
        echo -e "\e[32m▒▒▒▒▒▒▒▒▒▓▓▓▓\e[0m"; 
	sleep 0.03
        echo -e "\e[32m▒▒▒▒▒▒▓▓▓▒▒▒▒▓\e[0m"; 
	sleep 0.03
        echo -e "\e[32m▒▒▒▒▒▓▒▒▒▒▒▒▒▒▓\e[0m"; 
	sleep 0.03
        echo -e "\e[32m▒▒▒▒▓▒▒▒▒▒▒▒▒▒▓\e[0m"; 
	sleep 0.03
        echo -e "\e[32m▒▒▒▓▒▒▒▒▒▒▒▒▒▒▒▓\e[0m"; 
	sleep 0.03
        echo -e "\e[32m▒▒▓▒▓▒▒▒▒▒▒▒▒▒▓\e[0m"; 
	sleep 0.03
        echo -e "\e[32m▒▒▓▒▓▓▓▓▓▓▓▓▓▓\e[0m"; 
	sleep 0.03
        echo -e "\e[32m▒▒▓▒▒▒▒▒▒▒\e[0m▓";
	sleep 0.03
        echo -e "\e[32m▒▒▒▓▒▒▒▒▒▓\e[0m";
	sleep 0.03
	echo -e " ";
	sleep 0.03
	echo -e "\e[32mCUPS Control by Majik Cat Security - Version 1.0\e[0m";
	sleep 0.03
	echo -e "\e[32mCreated July 2019\e[0m";
	sleep 0.03
	echo -e " ";
	sleep 4
}

#================================#
#         CHECK FOR ROOT         #
#================================#

if [ "$EUID" -ne 0 ]
  then
  echo "You must run as root!"
  exit
fi

#================================#
#     CHECK FOR REQUIREMENTS     #
#================================#

splash
# CHECKING FOR CUPS
echo -e "Checking for previous cups installation: $PKG_OK"
if [ -e /usr/share/cups ]; then
  echo -e "cups is already installed"
  sleep 1.5
  else
  echo "cups not installed. Attempting to install cups now..."
  sleep 1.5
  apt install cups
fi
echo -e " "
clear
echo -e "CUPS ISTALLATION COMPLETE!"
sleep 0.5
echo -e " "

# CHECKING FOR SAMBA
echo -e "Checking for previous samba installation: $PKG_OK"
if [ -e /usr/share/samba ]; then
	echo -e "samba is already installed"
	sleep 1.5
	apt install samba
fi
echo-e " "
clear
echo-e "SAMBA INSTALLATION COMPLETE!"
sleep 0.5
echo -e " "
clear

#================================#
#         MAIN INSTALLER         #
#================================#

cp CUPSctrl.sh /bin/ccups
echo "Copying executable link"
sleep 0.05
chmod +x CUPSctrl.sh
echo "Making executable file"
sleep 0.05
chmod +x /bin/ccups
echo "Making executable link"
sleep 0.05
apt update
apt full-upgrade
credits
echo "Installation is complete!"
sleep 4
clear
