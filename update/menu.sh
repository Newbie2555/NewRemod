#!/bin/bash
GREEN='\033[0;32m'
PURPLE='\033[0;35m'
CYAN='\033[0;36m'
NC='\033[0m'
yl='\e[32;1m'
bl='\e[36;1m'
gl='\e[32;1m'
rd='\e[31;1m'
mg='\e[0;95m'
blu='\e[34m'
op='\e[35m'
or='\033[1;33m'
bd='\e[1m'
color1='\e[031;1m'
color2='\e[34;1m'
color3='\e[0m'
clear
MYIP=$(wget -qO- ipinfo.io/ip);
echo "Checking VPS"
IZIN=$(wget -qO- ipinfo.io/ip);
clear 
echo -e ""
ISP=$(curl -s ipinfo.io/org | cut -d " " -f 2-10 )
DOMAIN=$(cat /etc/xray/domain)
CITY=$(curl -s ipinfo.io/city )
up=$(uptime|awk '{ $1=$2=$(NF-6)=$(NF-5)=$(NF-4)=$(NF-3)=$(NF-2)=$(NF-1)=$NF=""; print }')
tram=$( free -m | awk 'NR==2 {print $2}' )
echo -e ""
echo -e "${CYAN}━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m${NC}"
echo -e "\E[41;1;39m                     ⇱ INFORMASI VPS ⇲                        \E[0m"
echo -e "${CYAN}━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m${NC}"
echo -e " 💠$bd ISP Name          ${color1} •${color3}$bd $ISP"
echo -e " 💠$bd City              ${color1} •${color3}$bd $CITY"
echo -e " 💠$bd Total RAM         ${color1} •${color3}$bd $tram MB"
echo -e " 💠$bd IP VPS            ${color1} •${color3}$bd $MYIP"
echo -e " 💠$bd DOMAIN VPS        ${color1} •${color3}$bd $DOMAIN"
echo -e " 💠$bd Waktu Aktif       ${color1} •${color3}$bd $up"
echo -e "${CYAN}━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m${NC}"
echo -e "\E[41;1;39m                     ⇱ MENU  OPTIONS ⇲                        \E[0m"
echo -e "${CYAN}━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m${NC}"
echo -e "SILAHKAN DI PILIH SESUAI KEINGINAN"

#[${green}01${NC}]${color1} •${color3}$bd Panel SSH & OpenVPN (${color2}menu-ssh${color3})
[${green}02${NC}]${color1} •${color3}$bd PANEL VMESS (${color2}menu-vmess${color3})
[${green}03${NC}]${color1} •${color3}$bd PANEL VLESS (${color2}menu-vless${color3})
[${green}04${NC}]${color1} •${color3}$bd PANEL TROJAN (${color2}menu-trojan${color3})
[${green}05${NC}]${color1} •${color3}$bd ADD SUBDOMAIN FOR VPS (${color2}addhost${color3})
[${green}06${NC}]${color1} •${color3}$bd RENEW CERTIFICATE V2RAY (${color2}cert${color3})
[${green}07${NC}]${color1} •${color3}$bd GANTI PORT ALL ACCOUNT (${color2}menu-port${color3})
[${green}08${NC}]${color1} •${color3}$bd CEK STATUS LAYANAN (${color2}running${color3})
[${green}09${NC}]${color1} •${color3}$bd WEBMIN MENU (${color2}webmin${color3})
[${green}10${NC}]${color1} •${color3}$bd CEK BANDWITH HARIAN (${color2}vnstat${color3})
[${green}11${NC}]${color1} •${color3}$bd REBOOT VPS (${color2}reboot${color3})
[${green}12${NC}]${color1} •${color3}$bd SPEEDTEST VPS (${color2}speedtest${color3})
[${green}13${NC}]${color1} •${color3}$bd INFO AUTO SCRIPT (${color2}info${color3})

[${green}00${NC}]${color1} •${color3}$bd Back to exit Menu \033[1;32m<\033[1;33m<\033[1;31m<\033[1;31m"
echo ""
echo -e "${CYAN}━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m${NC}"
echo -e "\E[41;1;39m                     ⇱ WAAN PROJECT ⇲                       \E[0m"
echo -e "${CYAN}━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m${NC}"
echo -e  ""
 read -p "  Select menu :  " menu
echo -e   ""
case $menu in
1)
ssh
;;
2)
v2raay
;;
3)
vleess
;;
4)
trojaan
;;
5)
addhost
;;
6)
certv2ray
;;
7)
changeport
;;
8)
running
;;
9)
wbmn
;;
10)
vnstat -d
;;
11)
reboot
;;
12)
speedtest
;;
13)
info
;;
0 | 00)
menu
;;
*)
menu
;;
esac
