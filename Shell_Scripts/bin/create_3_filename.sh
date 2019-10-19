#*************************************************************************
#	> Program creats three files, which named by user's input and date command
#	> File Name: create_3_filename.sh	first release
#	> Author: fockpmov
#	> Mail: fockpmov@gmail.com 
#	> Created Time: Sat 19 Oct 2019 01:55:19 PM CST
#************************************************************************/
#!/bin/bash
PATH=$PATH:/root/Git/Linux_command/Shell_Scripts/bin
export PATH
echo -e "I will use 'touch' command to creat 3 files."
read -p "Please input your filename: " fileuser
filename=${fileuser:-"filename"}
date1=$(date --date='2 days ago' +%Y%m%d)
date2=$(date --date='1 days ago' +%Y%m%d)
date3=$(date +%Y%m%d)
file1=${filename}-${date1}
file2=${filename}-${date2}
file3=${filename}-${date3}
 
touch ${file1}
touch ${file2}
touch ${file3}

exit 0

