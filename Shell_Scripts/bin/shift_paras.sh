#*************************************************************************
#	> Program shows the effect of the shift function ...
#	> File Name: shift_paras.sh		first release
#	> Author: fockpmov
#	> Mail: fockpmov@gmail.com 
#	> Created Time: Sat 19 Oct 2019 03:27:00 PM CST
#************************************************************************/
#!/bin/bash
PATH=${PATH}:/root/Git/Linux_command/Shell_Scripts/bin
export PATH
echo "Total parameter numbers is ==> $#"
echo "Your whole parameters are ==> $@"
shift
echo "Total parameter numbers is ==> $#"
echo "Your whole parameters are ==> $@"
shift 3
echo "Total parameter numbers is ==> $#"
echo "Your whole parameters are ==> $@"
exit 0

