#*************************************************************************
#	> You input your demobilization date, I calculate how many days before you demobilize.
#	> File Name: cal_retired.sh		first release
#	> Author: fockpmov
#	> Mail: fockpmov@gmail.com 
#	> Created Time: Sat 19 Oct 2019 04:46:17 PM CST
#************************************************************************/
#!/bin/bash
PATH=${PATH}:/root/Git/Linux_command/Shell_Scripts/bin
export PATH
echo "This program will try to calculate :"
echo "How many days before you demobilization date..."
read -p "Please input your demobilization date (YYYYMMDD ex > 20191019): " date2

date_d=$( echo ${date2} | grep "[0-9]\{8\}" )

if [ "${date_d}" == "" ]; then 
	echo "You input the wrong date format!"
	exit 1
fi

declare -i date_dem=$( date --date="${date2}" +%s )
if [ "$?" != 0 ]; then
	echo "You need input the real date!"
	exit 1
fi
declare -i date_now=$( date +%s )
declare -i date_total_s=$(( ${date_dem} - ${date_now} ))
declare -i date_day=$(( ${date_total_s}/60/60/24 ))
if [ "${date_total_s}" -lt 0 ]; then
	echo "You have been demobilized $(( -${date_day} )) days ago."
else
	declare -i date_hour=$(( ${date_total_s}/60/60-${date_day}*24 ))
	echo "You will demobilization in ${date_day} days and ${date_hour} hours!"
fi
exit 0
