#!/bin/bash

echo "Choose a number between 1 and 10 (1/2/3/4/5/6/7/8/9/10): " number
echo  "1 pwd"
echo "2 ls"
echo "3 htop"
echo "4 apt update"
echo "5 apt upgrade"
echo "6 pkg search"
echo "7 ifconfig"
echo "8 whois"
echo "9 clamav"
echo "10 nmap"
num=number 
read number
while true; do
	case $number in
        1)
                pwd
		cal
		break
                ;;
        2)
                echo  "choose directory:"
		read directory
		ls $directory
		break
                ;;
        3)
                htop
		break
                ;;
        4)
                apt update
		break
                ;;
        5)
                apt upgrade
		break
                ;;
        6)
                echo "pkg search:"
		read search
		$search --help
		break
                ;;
        7)
                ifconfig
		break
		;;
	8)
                echo "pick your favorite website:" website
		read website
		whois $website
		break
                ;;
        9)
                echo "clamscan path:" path
		read path
		clamscan $path
		break
                ;;
        10)
                echo "enter ip:" ip
		read ip
		nmap $ip 
		break
	esac
done

	if [ "$number" -gt 5 ]; then
		echo "$number is greater than 5"
	elif [ "$number" -lt 5 ]; then
		echo "$number is less than 5"
	else
		echo "$number is equal to 5"
	fi

