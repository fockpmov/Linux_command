#*************************************************************************
#	> Check $1 is equel to 'hello'
#	> File Name: hello-2.sh		first release
#	> Author: fockpmov
#	> Mail: fockpmov@gmail.com 
#	> Created Time: Sat 19 Oct 2019 04:00:02 PM CST
#************************************************************************/
#!/bin/bash
PATH=${PATH}:/root/Git/Linux_command/Shell_Scripts/bin
export PATH
if [ -z "$1" ]; then
	echo "You need input a parameter!"
	exit 0
elif [ "$1" == "hello" ]; then
	echo "Hello, how are you?"
	exit 0
else
	echo "The only parameter is 'hello' ==> ${0} hello"
	exit 0
fi
