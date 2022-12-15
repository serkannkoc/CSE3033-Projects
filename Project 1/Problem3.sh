# !/bin/sh
# Question 3

arr=(./*)

controlUnit=0

for ((i=0; i<${#arr[@]}; i++)); do
    if [ -w ${arr[$i]} ] && [ -f ${arr[$i]} ] && [ $0 != ${arr[$i]} ];
    then
        if [ $controlUnit -eq 0 ]; then
            mkdir writable
        fi
        controlUnit=`expr $controlUnit + 1`
        mv ${arr[$i]} ./writable
    fi
done

if [ $controlUnit -eq 0 ]; then
    mkdir writable
else
    echo "$controlUnit files moved to writable directory"
fi
