#!/bin/bash

# Change back to home directory
cd

# Update the Kali Image

printf '\n'
echo -e "\e[1;37m[+]  -  Would you like to update now? [Y/n] : \e[0m"
read UPDATE

if [ $UPDATE = "y" ] || [ $UPDATE = "Y" ];
then
    printf '\n'   
    echo -e "\e[1;32m[+]  -  Updating the Kali images...\e[0m"
    printf '\n'
    sudo apt-get update
    printf '\n\n'
    echo -e "\e[1;32m[+]  -  Update Completed Successfully\e[0m"
    printf '\n\n'
else
    printf '\n'
    echo -e "\e[1;31m[-]  -  Kali was not updated...\e[0m"
    printf '\n\n'
fi

# Upgrade the Kali Image

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

        cd ~/tools/
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

        cd ~/tools/
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

# Install TomNomNom Tools

echo -e "\e[1;37m[~]  -  Would you like to install tools by TomNomNom? [Y/n] : \e[0m"
read TNN

if [ $TNN = "y" ] || [ $TNN = "Y" ];
then
    printf '\n'
    echo -e "\e[1;32m[+]  -  Installing TomNomNom tools...\e[0m"
    printf '\n'

    echo -e "\e[1;32m[+]  -  Installing assetfinder...\e[0m"
    go get -v -u github.com/tomnomnom/assetfinder

    printf '\n'
    echo -e "\e[1;32m[+]  -  Installing meg...\e[0m"
    go get -v -u github.com/tomnomnom/meg

    printf '\n'
    echo -e "\e[1;32m[+]  -  Installing gf...\e[0m"
    go get -v -u github.com/tomnomnom/gf
    echo 'source $GOPATH/src/github.com/tomnomnom/gf/gf-completion.bash' >> ~/.bashrc
    cp -r $GOPATH/src/github.com/tomnomnom/gf/examples ~/.gf
else
    printf '\n'
    echo -e "\e[1;31m[-]  -  TomNomNom tools were not installed...\e[0m"
    printf '\n\n'
fi

# Install vulnhound specific tools

echo -e "\e[1;37m[~]  -  Would you like to install BugBounty tools? [Y/n] : \e[0m"
read BB

if [ $BB = "y" ] || [ $BB = "Y" ];
then
    printf '\n'
    echo -e "\e[1;32m[+]  -  Installing GoBuster...\e[0m"
    go get -v -u github.com/OJ/gobuster

    printf '\n'
    echo -e "\e[1;32m[+]  -  Installing SubFinder...\e[0m"
    go get -v -u github.com/projectdiscovery/subfinder/cmd/subfinder

    printf '\n'
    echo -e "\e[1;32m[+]  -  Installing Amass...\e[0m"
    echo "export GO111MODULE=on" >> ~/.bashrc
    go get -v -u github.com/OWASP/Amass/v3/...

    printf '\n'
    echo -e "\e[1;32m[+]  -  Installing XSStrike...\e[0m"
    cd ~/tools
    git clone https://github.com/s0md3v/XSStrike.git
    cd XSStrike
    sudo pip3 install -r requirements.txt

    printf '\n'
    echo -e "\e[1;32m[+]  -  Installing LinkFinder...\e[0m"
    cd ~/tools
    git clone https://github.com/GerbenJavado/LinkFinder.git
    cd LinkFinder
    sudo python setup.py install

    # Make Proper directories
    
    printf '\n'
    echo -e "\e[1;32m[+]  -  Setting up directories...\e[0m"

    cd ~/tools && mkdir wordlists
    mv SecLists wordlists
    cd ~/Documents
    mkdir Python
    mkdir BASH
    mkdir CLang
    mkdir GoLang
    cd
    mkdir BugBounty

    # Create Aliases
    
    printf '\n'
    echo -e "\e[1;32m[+]  -  Creating Custom Aliases...\e[0m"

    echo "# Custom Aliases\n" >> ~/.bashrc
    echo "alias devpy="cd ~/Documents/Python && clear && pwd && ls -l"" >> ~/.bashrc
    echo "alias devc="cd ~/Documents/CLang && clear && pwd && ls -l"" >> ~/.bashrc
    echo "alias devgo="cd ~/Documents/GoLang && clear && pwd && ls -l"" >> ~/.bashrc
    echo "alias devbash="cd ~/Documents/BASH && clear && pwd && ls -l"" >> ~/.bashrc
    echo "alias hunt="cd ~/tools && clear && pwd && ls -l"" >> ~/.bashrc
    echo "alias bb="cd ~/BugBounty && clear && pwd && ls -l"" >> ~/.bashrc
    echo "alias cl="clear && pwd && ls -l"" >> ~/.bashrc
    echo "\n" >> ~/.bashrc

    # Create Shortcuts

    printf '\n'
    echo -e "\e[1;32m[+]  -  Creating Shortcuts...\e[0m"

    echo "# Shortcuts\n" >> ~/.bashrc
    echo "mass(){" >> ~/.bashrc
    echo "    hunt" >> ~/.bashrc
    echo "    cd massdns" >> ~/.bashrc
    echo "    ./scripts/subbrute.py /Users/Dex/tools/wordlists/all.txt $1 | ./bin/massdns -r lists/resolvers.txt -t" >> ~/.bashrc
    echo "    bb" >> ~/.bashrc
    echo"}" >> ~/.bashrc
else
    printf '\n'                                                                           
    echo -e "\e[1;31m[-]  -  BugBounty tools were not installed...\e[0m"                  
    printf '\n\n'
fi

source ~/.bashrc

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
echo -e "\e[1;35m[+]  -  GO TO: https://gist.github.com/jhaddix/f64c97d0863a78454e44c2f7119c2a6a\e[0m"
echo -e "\e[1;35m[+]  -  For Jason Haddix's all.txt\e[0m"
printf '\n'
echo -e "\e[1;35m[+]  -  Be Sure to fix your shortcuts in ~/.bashrc\e[0m"
echo -e "\e[1;35m[+]  -  You will need to restart your terminal\e[0m"
printf '\n'
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

