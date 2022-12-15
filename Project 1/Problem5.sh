 #! /usr/bin/bash

if [ $# -eq 0 ]
then
    echo "Missing command line arguments!"
elif [ $# -eq 1 ]
then
    if [[ "$1" != *"*"* ]]
    then
    echo "You entered wrong wildcard. Use * in your argument!!"
    else
    find . -maxdepth 1 -name "$1" -type f -exec rm -i {} \;
    
    fi
elif [ $# -eq 2 ]
then
    if [[ "$1" != *"*"* ]]
    then
    echo "You entered wrong wildcard. Use * in your argument!!"
    else
        if [[ -d $2 ]]
        then
        find $2 -name "$1" -type f -exec rm -i {} \;
        else
        echo "You entered wrong directory name!!"
        fi
    fi
fi
