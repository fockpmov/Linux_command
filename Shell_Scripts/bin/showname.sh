#*************************************************************************
#	> User inputs his first name and last name. Program shows his full name
#	> File Name: showname.sh	first release
#	> Author: fockpmov
#	> Mail: fockpmov@gmail.com 
#	> Created Time: Sat 19 Oct 2019 01:41:17 PM CST
#************************************************************************/
#!/bin/bash
PATH=$PATH:~/Git/Linux_Command/Shell_Scripts/bin
export PATH
read -p "Please input your first name: "	firstname
read -p "Please input your last name: "	lastname
echo -e "\n Your full name is : ${firstname} ${lastname}\n"
exit 0
