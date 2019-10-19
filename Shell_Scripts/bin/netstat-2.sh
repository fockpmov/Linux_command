#*************************************************************************
#	> Using netstat and grep command to detect WWW, SSH, FTP and Mail service
#	> File Name: netstat-2.sh	first release
#	> Author: fockpmov
#	> Mail: fockpmov@gmail.com 
#	> Created Time: Sat 19 Oct 2019 04:29:22 PM CST
#************************************************************************/
#!/bin/bash
PATH=${PATH}:/root/Git/Linux_command/Shell_Scripts/bin
export PATH
echo "Now I will to find out what service is woring on you linux."
testfile=/tmp/netstat_checking.txt
netstat -tuln > "${testfile}"
testing=$( grep ":80" ${testfile} )
if [ "${testing}" == "" ]; then
	echo "The WWW service is no working!"
else
	echo "The WWW service is working!"
fi
testing=$( grep ":22" ${testfile} )
if [ "${testing}" == "" ]; then
	echo "The SSH service is no working!"
else
	echo "The SSH service is working!"
fi
testing=$( grep ":21" ${testfile} )
if [ "${testing}" == "" ]; then
	echo "The FTP service is no working!"
else
	echo "The FTP service is working!"
fi
testing=$( grep ":25" ${testfile} )
if [ "${testing}" == "" ]; then
	echo "The Mail service is no working!"
else
	echo "The Mail service is working!"
fi
exit 0
