#*************************************************************************
#	> Program shows the user's choice 
#	> File Name: ans_yn-2.sh	first release
#	> Author: fockpmov
#	> Mail: fockpmov@gmail.com 
#	> Created Time: Sat 19 Oct 2019 03:46:03 PM CST
#************************************************************************/
#!/bin/bash
PATH=${PATH}:/root/Git/Linux_command/Shell_Scripts/bin
export PATH
read -p "Please input your choice: " yn
if [ "${yn}" == "Y" ] || [ "${yn}" == "y" ]; then
	echo "OK, continue."
	exit 0
fi
if [ "${yn}" == "N" ] || [ "${yn}" == "n" ]; then
	echo "OH, interrupt!"
	exit 0
fi

echo "I do not know what is your choice."
exit 0
