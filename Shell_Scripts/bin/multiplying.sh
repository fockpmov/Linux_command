#*************************************************************************
#	> User input 2 integer numbers; program will cross these two numbers.
#	> File Name: multiplying.sh		first release
#	> Author: fockpmov
#	> Mail: fockpmov@gmail.com 
#	> Created Time: Sat 19 Oct 2019 02:25:26 PM CST
#************************************************************************/
#!/bin/bash
PATH=$PATH:/root/Git/Linux_command/Shell_Scripts/bin
export PATH
echo -e "You should input 2 integer numbers, I will multiplying them! \n"
read -p "first number: " firstnu
read -p "second number: " secnu
total=$(( ${firstnu}*${secnu} ))
echo -e "\nThe result of ${firstnu} X ${secnu} is ==> ${total}\n"
exit 0

