#!/bin/bash


#function to install apps with a clean display
function retryinstall
{
   echo -e "[\033[33m-\e[0m] Retrying..."
   DEBIAN_FRONTEND=noninteractive apt-get --fix-broken install -yq -o  Dpkg::Options::="--force-confdef" -o Dpkg::Options::="--force-confold" >/dev/null 2>/dev/nul
   DEBIAN_FRONTEND=noninteractive apt-get install --fix-missing -yq -o  Dpkg::Options::="--force-confdef" -o Dpkg::Options::="--force-confold" >/dev/null 2>/dev/nul
   DEBIAN_FRONTEND=noninteractive apt-get install -yq -o  Dpkg::Options::="--force-confdef" -o Dpkg::Options::="--force-confold" $1 >/dev/null 2>/dev/null && echo -e "[\033[32m*\e[0m]OK" || echo -e "[\033[31m-\e[0m] FAILED"
}
function install
{
   echo -n "Installing: $1 "
   DEBIAN_FRONTEND=noninteractive apt-get install -yq -o  Dpkg::Options::="--force-confdef" -o Dpkg::Options::="--force-confold" $1 >/dev/null 2>/dev/null && echo -e "[\033[32m*\e[0m]OK" || retryinstall $1
}



##### Main #####


#Check Sudo
if [[ $EUID -ne 0 ]]; then
   echo "This script must be run with sudo" 
   exit 1
fi

#Get the Standard Users username
inuser=$SUDO_USER

#Remove desktop
apt purge -y ubuntu-desktop
apt purge -y unity gnome-shell lightdm
apt autoremove -y
apt autoclean

#Install apps
install openssh-server
install vim
install p7zip

read -p "Check for Green * above, if red, or failed contact instructor. Press Enter to Reboot"

reboot
