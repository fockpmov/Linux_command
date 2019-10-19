#*************************************************************************
#	> User input a filename, program will check the flowing:
#	  1.) exist? 2.) file/directory? 3.) file permissions
#	> File Name: file_perm.sh	first release
#	> Author: fockpmov
#	> Mail: fockpmov@gmail.com 
#	> Created Time: Sat 19 Oct 2019 02:52:43 PM CST
#************************************************************************/
#!/bin/bash
PATH=${PATH}:/root/Git/Linux_command/Shell_Scripts/bin
export PATH

echo -e "Please input a filename, I will check the filename's type and permissions.\n \n"
read -p "Input a filename: " filename
test -z ${filename} && echo "You must input a filename." && exit 0
test ! -e ${filename} && echo "The filename '${filename}' DO NOT EXIST!" && exit 0

test -f ${filename} && filetype="regular file"
test -d ${filename} && filetype="directory file"
test -r ${filename} && perm="readable"
test -w ${filename} && perm="${perm} writable"
test -x ${filename} && perm="${perm} executable"

echo "The filename: ${filename} is a ${filetype}"
echo "And the permissions for you are : ${perm}"
exit 0
