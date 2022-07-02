#!/bin/bash
set -e

echo -e "Select your choice of operation from below:\n1) Sum"
read operation

case $operation in 
	1) echo "Enter first number"
		read a
		echo "Enter second number"
		read b
		sum=`expr $a + $b`
		echo "Sum of $a and $b is $sum."
		;;
	*) echo "Wrong choice"
		;;
esac
