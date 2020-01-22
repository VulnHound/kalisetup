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

#Install GO
if [[ -z "$GOPATH" ]];then
echo -e "\e[1;32m[+]  -  It looks like go is not installed, would you like to install it now"
PS3="Please select an option : "
choices=("yes" "no")
select choice in "${choices[@]}"; do
        case $choice in
                yes)

					echo -e "\e[1;32m[+]  -  Installing Golang\e[0m"
					wget https://dl.google.com/go/go1.13.4.linux-amd64.tar.gz
					sudo tar -xvf go1.13.4.linux-amd64.tar.gz
					sudo mv go /usr/local
					export GOROOT=/usr/local/go
					export GOPATH=$HOME/go
					export PATH=$GOPATH/bin:$GOROOT/bin:$PATH
					echo 'export GOROOT=/usr/local/go' >> ~/.bash_profile
					echo 'export GOPATH=$HOME/go'	>> ~/.bash_profile			
					echo 'export PATH=$GOPATH/bin:$GOROOT/bin:$PATH' >> ~/.bash_profile	
					source ~/.bash_profile
					sleep 1
					break
					;;
				no)
					echo "Please install go and rerun this script"
					;;
	esac	
done
fi

# Make tools directory
mkdir ~/tools
cd ~/tools/

# Install bbht tools

echo -e "\e[1;32m[+]  -  Would you like to install Bug Bounty Hunting tools? [Y/n] : \e[0m"
read BBHT

if [ $BBHT = "y" ] || [ $BBHT = "Y" ];
then
     #Install Aquatone
     echo -e "\e[1;32m[+]  -  Installing Aquatone\e[0m"
     go get -v -u github.com/michenriksen/aquatone
     echo "done"

     #Install Chromium
     echo -e "\e[1;32m[+]  -  Installing Chromium\e[0m"
     sudo snap install chromium
     echo "done"

     # Install JSParser
     echo -e "\e[1;32m[+]  -  Installing JSParser\e[0m"
     git clone https://github.com/nahamsec/JSParser.git
     cd JSParser*
     sudo python setup.py install
     cd ~/tools/
     echo "done"

     echo -e "\e[1;32m[+]  -  Installing Sublist3r\e[0m"
     git clone https://github.com/aboul3la/Sublist3r.git
     cd Sublist3r*
     pip install -r requirements.txt
     cd ~/tools/
     echo "done"

     echo -e "\e[1;32m[+]  -  Installing teh_s3_bucketeers\e[0m"
     git clone https://github.com/tomdev/teh_s3_bucketeers.git
     cd ~/tools/
     echo "done"
    

     echo -e "\e[1;32m[+]  -  Installing WPScan\e[0m"
     git clone https://github.com/wpscanteam/wpscan.git
     cd wpscan*
     sudo gem install bundler && bundle install --without test
     cd ~/tools/
     echo "done"

     echo -e "\e[1;32m[+]  -  Installing Dirsearch\e[0m"
     git clone https://github.com/maurosoria/dirsearch.git
     cd ~/tools/
     echo "done"


     echo -e "\e[1;32m[+]  -  Installing Lazys3\e[0m"
     git clone https://github.com/nahamsec/lazys3.git
     cd ~/tools/
     echo "done"

     echo -e "\e[1;32m[+]  -  Installing Virtual Host Discovery\e[0m"
     git clone https://github.com/jobertabma/virtual-host-discovery.git
     cd ~/tools/
     echo "done"


     echo -e "\e[1;32m[+]  -  Installing sqlmap\e[0m"
     git clone --depth 1 https://github.com/sqlmapproject/sqlmap.git sqlmap-dev
     cd ~/tools/
     echo "done"

     echo -e "\e[1;32m[+]  -  Installing knock.py\e[0m"
     git clone https://github.com/guelfoweb/knock.git
     cd ~/tools/
     echo "done"

     echo -e "\e[1;32m[+]  -  Installing lazyrecon\e[0m"
     git clone https://github.com/nahamsec/lazyrecon.git
     cd ~/tools/
     echo "done"

     echo -e "\e[1;32m[+]  -  Installing nmap\e[0m"
     sudo apt-get install -y nmap
     echo "done"

     echo -e "\e[1;32m[+]  -  Installing MassDNS\e[0m"
     git clone https://github.com/blechschmidt/massdns.git
     cd ~/tools/massdns
     make
     cd ~/tools/
     echo "done"

     echo -e "\e[1;32m[+]  -  Installing asnlookup\e[0m"
     git clone https://github.com/yassineaboukir/asnlookup.git
     cd ~/tools/asnlookup
     pip install -r requirements.txt
     cd ~/tools/
     echo "done"

     echo -e "\e[1;32m[+]  -  Installing httprobe\e[0m"
     go get -v -u github.com/tomnomnom/httprobe
     echo "done"

     echo -e "\e[1;32m[+]  -  Installing unfurl\e[0m"
     go get -v -u github.com/tomnomnom/unfurl
     echo "done"

     echo -e "\e[1;32m[+]  -  Installing waybackurls\e[0m"
     go get -v -u github.com/tomnomnom/waybackurls
     echo "done"

     echo -e "\e[1;32m[+]  -  Installing crtndstry\e[0m"
     git clone https://github.com/nahamsec/crtndstry.git
     echo "done"

     echo -e "\e[1;32m[+]  -  Downloading Seclists...\e[0m"
     cd ~/tools/
     git clone https://github.com/danielmiessler/SecLists.git
     cd ~/tools/SecLists/Discovery/DNS/
     ##THIS FILE BREAKS MASSDNS AND NEEDS TO BE CLEANED
     cat dns-Jhaddix.txt | head -n -14 > clean-jhaddix-dns.txt
     cd ~/tools/
     echo "done"
else
     printf '\n'
     echo -e "\e[1;31m[-]  -  Bug Bounty Hunting tools not installed...\e[0m"
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

echo -e "\e[1;37m[~]  -  Would you like to install VulnHound specific tools? [Y/n] : \e[0m"
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
    
    printf '\n'
    echo -e "\e[1;32m[+]  -  Installing Naabu...\e[0m"
    cd ~/tools
    go get -v github.com/projectdiscovery/naabu/cmd/naabu
    echo -e "\e[1;31m[-]  -  If fail, visit github.com/projectdiscovery/naabu\e[0m"
    
    printf '\n'
    echo -e "\e[1;32m[+]  -  Installing Hakrawler...\e[0m"
    cd ~/tools
    go get github.com/hakluke/hakrawler
    
    printf '\n'
    echo -e "\e[1;32m[+]  -  Installing Hakrevdns...\e[0m"
    cd ~/tools
    go get github.com/hakluke/hakrevdns
    
    printf '\n'
    echo -e "\e[1;32m[+]  -  Installing Hakcheckurl...\e[0m"
    cd ~/tools
    go get github.com/hakluke/hakcheckurl
    
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
    wait 3

    # Create Aliases
    
    printf '\n'
    echo -e "\e[1;32m[+]  -  Creating Custom Aliases...\e[0m"
    cd ~/Documents/BASH
    git clone https://github.com/VulnHound/bash_profile.git
    cd bash_profile
    cat bash_profile >> ~/.bash_profile
    wait 3

else
    printf '\n'                                                                           
    echo -e "\e[1;31m[-]  -  VulnHound specific tools were not installed...\e[0m"                  
    printf '\n\n'
fi

source ~/.bash_profile
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

