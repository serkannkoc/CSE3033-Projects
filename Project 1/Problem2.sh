#!/bin/bash

# Project 1
# Script for Question 2

#check args
E_ARG_ERR=69
if [ $# -ne 1 ]
then
    echo "Error"
    echo "Syntax : $0 number"
    echo "File name must be given"
exit $E_ARG_ERR
fi

# filename stored in variable
filename=$1
fileExist=0

# check modification
File=$filename
if test -f "$File"; then
echo "$File exists. Do you want it to be modified? (y/n):"
fileExist=1
read confirmation
fi  

# generate random story method 1
if [[ $confirmation == "y" ]] || [[ $fileExist == 0 ]]; then
   	echo "A random story is created and stored in $filename."
  	# get random line from giris.txt
	LINES1=$(grep -c '.' giris.txt)
	R_LINE1=$(($(($(($RANDOM % $LINES1)) * 2)) + 1))
	sed -n "${R_LINE1}p" giris.txt > $filename
    echo "" >> $filename
	# get random line from gelisme.txt
	LINES2=$(grep -c '.' gelisme.txt)
	R_LINE2=$(($(($(($RANDOM % $LINES2)) * 2)) + 1))
	sed -n "${R_LINE2}p" gelisme.txt >> $filename
    echo "" >> $filename
	# get random line from sonuc.txt
	LINES3=$(grep -c '.' sonuc.txt)
	R_LINE3=$(($(($(($RANDOM % $LINES3)) * 2)) + 1))
	sed -n "${R_LINE3}p" sonuc.txt >>$filename

elif [[ $confirmation == "n" ]]; then
	   echo "Modification declaned."
	   exit $E_ARG_ERR
else
	   echo "Invalid input. You should enter y/n."
	   exit $E_ARG_ERR
fi
