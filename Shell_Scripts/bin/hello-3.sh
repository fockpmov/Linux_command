#*************************************************************************
#	> Show "hello" from $1...by using case...esac
#	> File Name: hello-3.sh		first release
#	> Author: fockpmov
#	> Mail: fockpmov@gmail.com 
#	> Created Time: Sat 19 Oct 2019 06:05:17 PM CST
#************************************************************************/
#!/bin/bash
PATH=${PATH}:/root/Git/Linux_command/Shell_Scripts/bin
export PATH
case ${1} in
	"hello")
		echo -e "\nHello, how are you?\n"
		;;
	"")
		echo -e "\nYou must input parameters, ex => ${0} someword\n"
		;;
	*)
		echo -e "\nUsage ${0} hello\n"
		;;
esac
exit 0
	
	
		
