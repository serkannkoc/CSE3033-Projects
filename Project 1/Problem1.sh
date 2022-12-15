#    ASSIGMENT 1 Q 1
#    apple    12345    brspj
#    zoo     8    hww

string=$1
value=$2

alphabet=abcdefghijklmnopqrstuvwxyzabcdefghij

count=${#string}

if [ $count -eq ${#value} ] || [ ${#value} -eq 1 ];
then
 newString=""
 for(( i = 0; i < $count; i++ ))
 do
     for(( j = 0; j < ${#alphabet}; j++ ))
     do
        test1="${string:$i:1}"
        test2="${alphabet:$j:1}"
        
        if [ "$test1" = "$test2" ]; then
            incr=0
            if [ ${#value} -eq 1 ]; then
             incr=${value:0:1}
            else
             incr=${value:$i:1}
            fi
            newValue=`expr $j + $incr`
            newString="$newString${alphabet:$newValue:1}"
            break
        fi
     done
 done
 echo "$newString"
 exit 0
else
 echo "Inputs are wrong"
 exit 1
fi
