#!/bin/bash

# Update and Upgrade the Kali Image

printf '\n'
echo -e "\e[1;32m[+]  -  Updating the Kali images...\e[0m"
printf '\n'
sudo apt-get update

printf '\n'
echo -e "\e[1;32m[+]  -  Upgrading Kali Linux...\e[0m"
printf '\n'
sudo apt-get upgrade

# Install upgrades that may need new packages

echo -e "\e[1;32m[+]  -  Upgrading tools with (Kept Back) packages...\e[0m"
sudo apt-get --with-new-pkgs upgrade

printf '\n\n'
echo -e "\e[1;32m[+]  -  Upgrades Completed Successfully\e[0m"
printf '\n'

# Install NahamSec BBHT & LazyRecon

echo -e "\e[1;32m[+]  -  Installing BBHT & LazyRecon by NahamSec...\e[0m"
printf '\n'

git clone https://github.com/nahamsec/bbht.git
cd bbht
chmod +x install.sh
./install.sh

printf '\n'
echo -e "\e[1;32m[+]  -  Successfully installed LazyRecon and BBHT\e[0m"
printf '\n'

# Install MassDNS

echo -e "\e[1;32m[+]  -  Installing Massdns...\e[0m"
printf '\n'

cd /root
git clone https://github.com/blechschmidt/massdns.git

printf '\n'
echo -e "\e[1;32m[+]  -  Successfully Installed Massdns\e[0m"
printf '\n'

# Install Asnlookup

echo -e "\e[1;32m[+]  -  Installing Asnlookup...\e[0m"
printf '\n'

cd ~/tools/
git clone https://github.com/yassineaboukir/Asnlookup.git && cd Asnlookup
pip3 install -r requirements.txt

printf '\n'
echo -e "\e[1;32m[+]  -  Successfully Installed Asnlookup\e[0m"
printf '\n'

# Install RED_HAWK

echo -e "\e[1;32m[+]  -  Installing RED HAWK...\e[0m"
printf '\n'

cd
mkdir /pentest
cd /pentest
git clone https://github.com/Tuhinshubhra/RED_HAWK.git

printf '\n'
echo -e "\e[1;32m[+]  -  Successfully Installed RED_HAWK\e[0m"
printf '\n'

# Install Anon-Surf

echo -e "\e[1;32m[+]  -  Installing Anon-Surf...\e[0m"
printf '\n'

cd /pentest

git clone https://github.com/Und3rf10w/kali-anonsurf.git

cd /pentest/kali-anonsurf
chmod +x installer.sh
./installer.sh

printf '\n'
echo -e "\e[1;32m[+]  -  Successfully Installed Anon-Surf\e[0m"

# Finish Execution Message
printf '\n'
echo -e "\e[1;32[+]  -  All Installations Are Complete\e[0m"
printf '\n'
echo -e "\e[1;31m     |  HACK THE PLANET |\e[0m"
printf '\n\n'








