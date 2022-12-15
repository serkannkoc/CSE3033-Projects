if [ $# -gt 0 ]
then
	if [ $1 -gt 0 ] ; then
	echo "Hexadecimal of 2 is 2"
	for((i=3;i<$1;i++))
	do
	  for((j=i-1;j>=2;))
	  do
	    if [  `expr $i % $j` -ne 0 ] ; then
	      prime_1=1
	    else
	      prime_1=0
	      break
	    fi
	    j=`expr $j - 1`
	  done
	  if [ $prime_1 -eq 1 ] ; then
	  hex_digits=0123456789ABCDEF
	  dec_value=i
	  hex_value=""
	  until [ $dec_value == 0 ]; do

	    rem_value=$((dec_value % 16))
	    dec_value=$((dec_value / 16))

	    hex_digit=${hex_digits:$rem_value:1}

	    hex_value="${hex_digit}${hex_value}"

	done
	    echo "Hexadecimal of $i is $hex_value"
	  fi
	done
	else
	echo "Enter positive integer"
	fi
else
echo "You did not give argument. Enter integer!"
fi

