#!/bin/bash

clear

echo -e '\033[01;33m
  /$$$$$$    /$$    /$$$$$$  /$$   /$$ /$$$$$$$  /$$   /$$\033[01;37m                 ,
\033[01;33m /$$__  $$ /$$$$   /$$__  $$| $$  | $$| $$__  $$| $$  | $$\033[01;37m            `-.   \    .-`
\033[01;33m| $$  \__/|_  $$  | $$  \__/| $$  | $$| $$  \ $$| $$  | $$\033[01;37m    ,-"`````""-\__ |  /
\033[01;33m| $$        | $$  | $$      | $$$$$$$$| $$  | $$| $$$$$$$$\033[01;37m     `-.._    _.-`` `-o,
\033[01;33m| $$        | $$  | $$      |_____  $$| $$  | $$|_____  $$\033[01;37m         _>--:{{<   ) |)
\033[01;33m| $$    $$  | $$  | $$    $$      | $$| $$  | $$      | $$\033[01;37m     .-``      `-.__.-o`
\033[01;33m|  $$$$$$/ /$$$$$$|  $$$$$$/      | $$| $$$$$$$/      | $$\033[01;37m    `-._____..-/`  |  \
\033[01;33m \______/ |______/ \______/       |__/|_______/       |__/\033[01;37m            ,-`   /    `-.
                                                                           `
\e[38;5;83m/*Coded by Tkaiper
We are Pryzraky\e[0m 

\e[38;5;99mGreetz -> D4RKR0N, Wicca, al1ne3737, PopTart, Aj4x, Inocent, Malokin_, Artr0n, Cyber_, Torrad4, ZHacker, Bisqwit, Monise, Vitor Vilela, Mecz1nho, Ergo, Dext3r, kimberlly, * Melissa *, p3g4sus*/\e[0m

'
read -p $'\e[96mMD5 > \e[0m ' x
read -p $'\e[96mWORDLIST > \e[0m ' y

c=0
for l in $(cat $y)
do
	v=$l
	md5="$(echo -n "$v" | md5sum | sed 's/-//g')";
	[ $md5 != $x ] && ((c++)) && echo -e "\e[91m[ERRO] ($l)\e[0m"
	[ $md5 = $x ] && echo -e "\e[92m[CRIPTOGRAFIA QUEBRADA] $v \e[0m" && exit
done
