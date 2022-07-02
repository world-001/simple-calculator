#!/bin/bash
set -e

echo -e "Select your choice of operation from below:\n1) Sum"
read operation

case $operation in
        "1") echo "Enter first number"
                read a
                echo "Enter second number"
                read b
                ;;
        *) echo "Wrong choice"
                ;;
esac

re='^[0-9]+$'
if ! [[ ${a} =~ $re ]] ; then
   echo "error: $a an integer" ; exit 1
elif ! [[ ${b} =~ $re ]] ; then
   echo "error: ${b} an integer" ; exit 1
fi

case $operation in 
	1) 	sum=`expr $a + $b`
		echo "Sum of $a and $b is $sum."
		;;
	*) echo "Wrong choice"
		;;
esac
