#*************************************************************************
#	> Program shows the scripts name, parameters...
#	> File Name: how_paras.sh	first release
#	> Author: fockpmov
#	> Mail: fockpmov@gmail.com 
#	> Created Time: Sat 19 Oct 2019 03:17:14 PM CST
#************************************************************************/
#!/bin/bash
PATH=${PATH}:/root/Git/Linux_command/Shell_Scripts/bin
export PATH
echo "The Script name is ==> $0"
echo "Total Parameters number is ==> $#"
[ "$#" -lt 2 ] && echo "The number of the Parameters is less than 2 .Stop here!" && exit 0
echo "Your script parameter are ==> $@"
echo "Your first parameter is ==> ${1}"
echo "Your second parameter is ==> ${2}"
exit 0
