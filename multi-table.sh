#!/bin/sh

echo -n "input rows and columns : "
read rows columns

re="^[0-9]+$"
if ! [[ $rows =~ $re && $columns =~ $re ]] ; then       	
	echo "error: Not a number" >&2
	exit 1
fi

if [ ${rows} -lt 1 ] || [ ${columns} -lt 1 ]
then
        echo "wrong input : you have to input number greater than 0."
        exit 0
fi

for row in $(seq 1 $rows)
do
        for column in $(seq 1 $columns)
        do
                echo ${row}"*"${column}"="`expr $row \* $column`
        done
        echo ""
done

exit 0

