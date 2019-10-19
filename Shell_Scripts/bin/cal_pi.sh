#*************************************************************************
#	> User input a scale number to calculate pi number.
#	> File Name: cal_pi.sh	first release
#	> Author: fockpmov
#	> Mail: fockpmov@gmail.com 
#	> Created Time: Sat 19 Oct 2019 02:33:09 PM CST
#************************************************************************/
#!/bin/bash
PATH=${PATH}:/root/Git/Linux_command/Shell_Scripts/bin
export PATH
echo -e "This program will calculate pi value. \n"
echo -e "You should input a float number to calculate pi value. \n"
read -p "The scale number (10 - 10000) ?" checking
num=${checking:-"10"}
echo -e "Starting calculate pi value. Be patient."
time echo "scale=${num}; 4*a(1)" | bc -lq
exit 0
