#!/bin/bash

# 20172510 hyemin Kim assignment

re="^[0-9]+$"
if ! [[ $1 =~ $re && $2 =~ $re ]] ; then       	
	echo "error: Not a number" >&2
	exit 1
fi

if [ $1 -lt 1 ] || [ $2 -lt 1 ] ; then
        echo "wrong input : you have to input number greater than 0."
        exit 0
fi

for row in $(seq 1 $1)
do
        for column in $(seq 1 $2)
        do
                echo $row"*"$column"="`expr $row \* $column`
        done
        echo ""
done

exit 0

