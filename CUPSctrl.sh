#!/bin/bash

#=============================================#
#                  FUNCTIONS                  #
#=============================================#

splash(){

        echo -e "\e[36m    __  __ __  ____    _____\e[0m";
        sleep 0.03
        echo -e "\e[36m   /  ]|  |  ||    \  / ___/\e[0m";
        sleep 0.03
        echo -e "\e[36m  /  / |  |  ||  o  )(   \_\e[0m";
        sleep 0.03
        echo -e "\e[36m /  /  |  |  ||   _/  \__  |\e[0m";
        sleep 0.03
        echo -e "\e[36m/   \_ |  :  ||  |    /  \ |    Version 1.0\e[0m";
        sleep 0.03
        echo -e "\e[36m\     ||     ||  |    \    |\e[0m";
        sleep 0.03
        echo -e "\e[36m \____| \__,_||__|     \___|\e[0m";
        sleep 0.03
        echo -e " ";
        sleep 0.03
        echo -e "\e[36m    __   ___   ____   ______  ____   ___   _\e[0m";
        sleep 0.03
        echo -e "\e[36m   /  ] /   \ |    \ |      ||    \ /   \ | |\e[0m";
        sleep 0.03
        echo -e "\e[36m  /  / |     ||  _  ||      ||  D  )     || |\e[0m";
        sleep 0.03
        echo -e "\e[36m /  /  |  O  ||  |  ||_|  |_||    /|  O  || |___\e[0m";
        sleep 0.03
        echo -e "\e[36m/   \_ |     ||  |  |  |  |  |    \|     ||     |\e[0m";
        sleep 0.03
        echo -e "\e[36m\     ||     ||  |  |  |  |  |  .  \     ||     |\e[0m";
        sleep 0.03
        echo -e "\e[36m \____| \___/ |__|__|  |__|  |__|\_|\___/ |_____|\e[0m";
        sleep 0.03
        echo -e " ";
        sleep 0.03
        echo -e " ";
        sleep 0.03
        echo -e "\e[36mVersion 1.0\e[0m";
        sleep 0.03
        echo -e "\e[36mby Majik Cat Security - July 2019\e[0m";
        sleep 0.03
        echo -e " ";
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
}

#=============================================#
#                CHECK FOR ROOT               #
#=============================================#

if [ "$EUID" -ne 0 ]
  then echo "You must run as root!"
  exit
fi

#=============================================#
#                  MENU SETUP                 #
#=============================================#

options=("Start CUPS" "Restart CUPS" "Stop CUPS" "Check CUPS Status" "Create CUPS User" "Install CUPS" "Credits" "Quit")
PS3='Choose an option: '

while [ "$menu" != 1 ]; do
clear
splash
select opt in "${options[@]}" ; do
	case $opt in
#=============================================#
#                   MAIN MENU                 #
#=============================================#

	"Start CUPS")
		echo "Starting CUPS now..."
		service cups start
		echo -e "\e[31mPlease Note:\e[0m \e[7mYou will return to the main menu in 4 seconds...\e[0m"
		sleep 4
	break
	;;
	"Restart CUPS")
		echo "Restarting CUPS now..."
		service cups restart
                echo -e "\e[31mPlease Note:\e[0m \e[7mYou will return to the main menu in 4 seconds...\e[0m"
		sleep 4
	break
	;;
	"Stop CUPS")
		echo "Stopping CUPS now..."
		service cups stop
                echo -e "\e[31mPlease Note:\e[0m \e[7mYou will return to the main menu in 4 seconds...\e[0m"
		sleep 4
	break
	;;
	"Check CUPS Status")
		echo "Checking CUPS status now..."
		service cups status
                echo -e "\e[31mPlease Note:\e[0m \e[7mYou will return to the main menu in 6 seconds...\e[0m"
		sleep 6
	break
	;;
	"Create CUPS User")
		echo -e "Enter the name of the user to add (ie. root)"
		read NewUser
		adduser $NewUser lpadmin
		echo -e "New user $NewUser is now added";
                echo -e "\e[31mPlease Note:\e[0m \e[7mYou will return to the main menu in 4 seconds...\e[0m"
		sleep 4
	break
	;;
	"Install CUPS")
		echo "Installing CUPS now..."
		apt install cups
		echo "Installation is complete!"
                echo -e "\e[31mPlease Note:\e[0m \e[7mYou will return to the main menu in 4 seconds...\e[0m"
		sleep 4
	break
	;;
	"Credits")
		clear
		credits
		echo -e "\e[31mPlease Note:\e[0m \e[7mYou will return to the main menu in 4 seconds...\e[0m"
		sleep 4
	break
	;;
	"Quit")
		clear
		splash
		echo " "
		echo -e "Thank you for using Cups Service Software - Majik Cat Security"
		sleep 3
		clear
		menu=1
	break
	;;
#============================================#
#       ERROR CAPTURE - INVALID OPTION       #
#============================================#
*)
                                clear
                                Splash
                                echo -e "invalid option $REPLY"
                break
                ;;
                esac
        done
done

exit 0
