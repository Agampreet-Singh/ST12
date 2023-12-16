#!/bin/bash

cyan="\e[1;36m"
g="\033[1;32m"
r="\033[1;31m"
b="\033[1;34m"
w="\033[0m"
red='\e[1;31m'
yellow='\e[1;33m'
orange='\e[38;5;166m'
green='\e[1;32m'

if [[ $(/usr/bin/id -u) -ne 0 ]];
then
echo -e "$b __________________________"
echo -e "$red ROOT REQUIRED or TRYING SUDO .."
echo -e "$b __________________________"
exit

else
echo -e "$b __________________________"
echo -e "$green ROOT ACCESS CONFIRM .."
echo -e "$b __________________________"
sleep 1
fi

ping -c 1 google.com > /dev/null 2>&1
if [[ "$?" == 0 ]]; then
echo ""
sleep 2
echo -e "$green[+] [ Internet Connection ]......PASSED "
sleep 2
else
echo ""
sleep 2
echo -e "$red[-] [ Internet Connection ]......FAILED "
echo ""
exit
fi

echo ""
#check it if aircrack-ng install or not 
#######

which aircrack-ng > /dev/null 2>&1
if [ "$?" -eq "0" ]; then
echo -e $green "[ ✔ ] Aircrack..............${LighGreenF}[ Already Installed ] "
which aircrack-ng > /dev/null 2>&1
sleep 2

else
echo -e $red "[ X ] Aircrack-ng -> ${RedF}not Installed "
echo -e $yellow "[ ! ] Installing Aircrack-ng ...."
sleep 2
sudo apt install aircrack-ng
echo -e $b "[ ✔ ] Done installing ...."
which aircrack-ng > /dev/null 2>&1
sleep 2
fi


#check it if chkrootkit Install or not
#######

which chkrootkit > /dev/null 2>&1
if [ "$?" -eq "0" ]; then
echo -e $green "[ ✔ ] chkrootkit...........................${LighGreenF}[ Already Installed ] "
which chkrootkit > /dev/null 2>&1
sleep 2

else

echo -e $red "[ X ] chkrootkit -> ${RedF}not Installed "
echo -e $yellow "[ ! ] Installing chkrootkit...."
sleep 2
sudo apt install chkrootkit
echo -e $b "[ ✔ ] Done installing ...."
which chkrootkit > /dev/null 2>&1

sleep 2

fi

#check it if rkhunter Install or not
######

which rkhunter > /dev/null 2>&1
if [ "$?" -eq "0" ] ; then
echo -e $green "[ ✔ ] Rkhunter..........................${LighGreenF}[ Already Installed ] "
which aapt > /dev/null 2>&1
sleep 2
else
echo -e $red "[ X ] Rkhunter -> ${RedF}not Installed "
sleep 2
echo -e $yellow "[ ! ] Installing Rkhunter ...."
sleep 2
sudo apt install rkhunter
echo -e "$b [ ✔ ] Done installing .... "

which rkhunter > /dev/null 2>&1
sleep 2
fi

#check it if nmap Install or not
###########

which nmap > /dev/null 2>&1
if [ "$?" -eq "0" ] ; then
echo -e $green "[ ✔ ] Nmap..........................${LighGreenF}[ Already Installed ] "
which nmap > /dev/null 2>&1
sleep 2
else
echo -e $red "[ X ] Nmap -> ${RedF}not Installed "
sleep 2
echo -e $yellow "[ ! ] Installing Nmap ...."
sleep 2
sudo apt install nmap
echo -e $b " [ ✔ ] Done installing .... "

which nmap > /dev/null 2>&1
sleep 2
fi



#check openssl installed or not
########

which openssl > /dev/null 2>&1
if [ "$?" -eq "0" ] ; then
echo -e $green "[ ✔ ] Openssl..........................${LighGreenF}[ Already Installed ] "
which openssl > /dev/null 2>&1
sleep 2
else
echo -e $red "[ X ] Openssl -> ${RedF}not Installed "
echo -e $yellow "[ ! ] Installing Openssl ...."
sleep 2
sudo apt install openssl
echo -e $b " [ ✔ ] Done installing .... "

which openssl > /dev/null 2>&1 
sleep 2
fi


#check it if tcpdump install or not
############

which tcpdump > /dev/null 2>&1
if [ "$?" -eq "0" ] ; then
echo -e $green "[ ✔ ] TcpDump..........................${LighGreenF}[ Already Installed ] "
which tcpdump > /dev/null 2>&1
sleep 2
else
echo -e $red "[ X ] TcpDump -> ${RedF}not Installed "
echo -e $yellow "[ ! ] Installing TcpDump .... "
sleep 2
sudo apt install tcpdump
echo -e $b "[ ✔ ] Done installing .... "

which tcpdump > /dev/null 2>&1
sleep 2
fi


#check it if tshark Install or not
##########

which tshark > /dev/null 2>&1
if [ "$?" -eq "0" ] ; then
echo -e $green "[ ✔ ]tshark ..........................${LighGreenF}[ Already Installed ] "
which tshark > /dev/null 2>&1
sleep 2

else

echo -e $red "[ X ] tshark -> ${RedF}not Installed "
sleep 2
echo -e $yellow "[ ! ] Installing Tshark ...."
sleep 2
apt-get install tshark

echo -e $b " [ ✔ ] Done installing .... "

which tshark > /dev/null 2>&1
sleep 2
fi

echo ""
echo -e "
$b ________________________________________________________
$green    ALL PACKAGES DONE 
$b ________________________________________________________
"
