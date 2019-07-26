#!/bin/bash

# Change back to home directory
cd

# Update and Upgrade the Kali Image

printf '\n'
echo -e "\e[1;32m[+]  -  Updating the Kali images...\e[0m"
printf '\n'
sudo apt-get update

printf '\n\n'
echo -e "\e[1;37m[+]  -  Would you like to upgrade now? [Y/n] : \e[0m"
read UPGRADE

if [ $UPGRADE = "y" ] || [  $UPGRADE = "Y" ];
then
        printf '\n'
        echo -e "\e[1;32m[+]  -  Upgrading Kali Linux...\e[0m"
        printf '\n'
        sudo apt-get upgrade

        # Install upgrades that may need new packages

        echo -e "\e[1;32m[+]  -  Upgrading tools with (Kept Back) packages...\e[0m"
        sudo apt-get --with-new-pkgs upgrade

        printf '\n\n'
        echo -e "\e[1;32m[+]  -  Upgrades Completed Successfully\e[0m"
        printf '\n\n'
else
        printf '\n'
        echo -e "\e[1;31m[-]  -  Kali was not upgraded...\e[0m"
        printf '\n\n'
fi

# Install NahamSec BBHT & LazyRecon

echo -e "\e[1;37m[+]  -  Would you like to install BBHT and LazyRecon? [Y/n] : \e[0m"
read LAZY

if [ $LAZY = "y" ] || [ $LAZY = 'Y' ];
then
        printf '\n'
        echo -e "\e[1;32m[+]  -  Installing BBHT & LazyRecon by NahamSec...\e[0m"
        printf '\n'

        git clone https://github.com/nahamsec/bbht.git
        cd bbht
        chmod +x install.sh
        ./install.sh

        printf '\n'
        echo -e "\e[1;32m[+]  -  Successfully installed LazyRecon and BBHT\e[0m"
        printf '\n\n'
else
        printf '\n'
        echo -e "\e[1;31m[-]  -  LazyRecon was not installed...\e[0m"
        printf '\n\n'
fi

# Install MassDNS

echo -e "\e[1;37m[+]  -  Would you like to install Massdns? [Y/n] : \e[0m"
read MASS

if [ $MASS = "y" ] || [ $MASS = "Y" ];
then
        printf '\n'
        echo -e "\e[1;32m[+]  -  Installing Massdns...\e[0m"
        printf '\n'

        cd /root
        git clone https://github.com/blechschmidt/massdns.git

        printf '\n'
        echo -e "\e[1;32m[+]  -  Successfully Installed Massdns\e[0m"
        printf '\n\n'
else
        printf '\n'
        echo -e "\e[1;31m[-]  -  Massdns was not installed...\e[0m"
        printf '\n\n'
fi

# Install Asnlookup

echo -e "\e[1;37m[+]  -  Would you like to install Asnlookup? [Y/n] : \e[0m"
read ASN

if [ $ASN = "y" ] || [ $ASN = "Y" ];
then
        printf '\n'
        echo -e "\e[1;32m[+]  -  Installing Asnlookup...\e[0m"
        printf '\n'

        cd ~/tools/
        git clone https://github.com/yassineaboukir/Asnlookup.git && cd Asnlookup
        pip3 install -r requirements.txt

        printf '\n'
        echo -e "\e[1;32m[+]  -  Successfully Installed Asnlookup\e[0m"
        printf '\n\n'
else
        printf '\n'
        echo -e "\e[1;31m[-]  -  Asnlookup was not installed...\e[0m"
        printf '\n\n'
fi

# Install RED_HAWK

echo -e "\e[1;37m[+]  -  Would you like to install RED_HAWK? [Y/n] : \e[0m"
read RH

if [ $RH = "y" ] || [ $RH = "Y" ];
then
        printf '\n'
        echo -e "\e[1;32m[+]  -  Installing RED HAWK...\e[0m"
        printf '\n'

        cd
        mkdir /pentest
        cd /pentest
        git clone https://github.com/Tuhinshubhra/RED_HAWK.git

        printf '\n'
        echo -e "\e[1;32m[+]  -  Successfully Installed RED_HAWK\e[0m"
        printf '\n\n'
else
        printf '\n'
        echo -e "\e[1;31m[-]  -  RED_HAWK was not installed...\e[0m"
        printf '\n\n'
fi

# Install Anon-Surf

echo -e "\e[1;37m[+]  -  Would you like to install Anon-Surf? [Y/n] : \e[0m"
read AS

if [ $AS = "y" ] || [ $AS = "Y" ];
then
        printf '\n'
        echo -e "\e[1;32m[+]  -  Installing Anon-Surf...\e[0m"
        printf '\n'

        mkdir /pentest
        cd /pentest
        git clone https://github.com/Und3rf10w/kali-anonsurf.git
        cd /pentest/kali-anonsurf
        chmod +x installer.sh
        ./installer.sh

        printf '\n'
        echo -e "\e[1;32m[+]  -  Successfully Installed Anon-Surf\e[0m"
        printf '\n\n'
else
        printf '\n'
        echo -e "\e[1;31m[-]  -  Anon-Surf was not installed...\e[0m"
        printf '\n\n'
fi

# Finish Execution Message
clear
printf '\n\n\n\n\n'
echo -e "\e[0;30m#####################################################################################\e[0m"
echo -e "\e[1;37m###############################################################################\e[0m"
echo -e "\e[1;35m########################################################################\e[0m"
echo -e "\e[1;34m#############################################################\e[0m"
echo -e "\e[1;32m################################################\e[0m"
echo -e "\e[1;33m#################################\e[0m"
echo -e "\e[0;33m###################\e[0m"
echo -e "\e[1;31m###########\e[0m"
printf '\n\n\n'
echo -e "\e[1;32m[+]  -  All Installations Are Complete\e[0m"
printf '\n'
echo -e "\e[1;35m[+]  -  If you installed RED_HAWK or Anon-Surf; they can be found in '/pentest'\e[0m"
echo -e "\e[1;35m[+]  -  If you need to install a package you missed, just run the script again!\e[0m"
printf '\n\n'
echo -e "\e[1;31m                               |  HACK THE PLANET |\e[0m"
printf '\n'
echo -e "\e[1;31m###########\e[0m"
echo -e "\e[0;33m###################\e[0m"
echo -e "\e[1;33m#################################\e[0m"
echo -e "\e[1;32m################################################\e[0m"
echo -e "\e[1;34m#############################################################\e[0m"
echo -e "\e[1;35m########################################################################\e[0m"
echo -e "\e[1;37m##############################################################################\e[0m"
echo -e "\e[0;30m####################################################################################\e[0m"
printf '\n\n\n\n\n'

