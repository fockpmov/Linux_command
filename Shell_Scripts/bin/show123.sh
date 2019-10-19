#*************************************************************************
#	> This script only accepts the following parameter: one, two, three
#	> File Name: show123.sh		first release
#	> Author: fockpmov
#	> Mail: fockpmov@gmail.com 
#	> Created Time: Sat 19 Oct 2019 06:19:11 PM CST
#************************************************************************/
#!/bin/bash
PATH=${PATH}:/root/Git/Linux_command/Shell_Scripts/bin
export PATH
echo "This program will print your selection!"
#read -p "Input your choice: " choice
#case ${choice} in
case ${1} in
	"one")
		echo "Your choice is ONE!"
		;;
	"two")
		echo "Your choice is TWO!"
		;;
	"three")
		echo "Your choice is THREE!"
		;;
	*)
		#echo "Please input one, two, three!"
		echo "Please use ${0} {one | two | three}"
		;;
esac

