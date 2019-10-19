#*************************************************************************
#	> Using netstat and grep command to detect WWW, SSH, FTP and Mail service
#	> File Name: netstat.sh		first release
#	> Author: fockpmov
#	> Mail: fockpmov@gmail.com 
#	> Created Time: Sat 19 Oct 2019 04:11:51 PM CST
#************************************************************************/
#!/bin/bash
PATH=${PATH}:/root/Git/Linux_command/Shell_Scripts/bin
export PATH
if [ -n "$( netstat -tuln | grep :80 )" ]; then
	echo "The WWW service is working!"
fi
if [ -n "$( netstat -tuln | grep :22 )" ]; then
	echo "The SSH service is working!"
fi
if [ -n "$( netstat -tuln | grep :21 )" ]; then
	echo "The FTP service is working!"
fi
if [ -n "$( netstat -tuln | grep :25 )" ]; then
	echo "The Mail service is working!"
else
	echo "All WWW, SSH, FTP and Mail service are not working!"
	exit 0
fi
exit 0


