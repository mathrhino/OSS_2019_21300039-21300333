#!/bin/bash
num=$1
echo "n=$num"
first=0
second=1
if [ $num -eq 0 ];
then
        echo $first
elif [[ ( $num -eq 1 || $num -eq 2 ) ]];
then
        echo $second
else
        first=$second
        for((i=3; i<=$num; i++))
        do
                ((final=$first+$second))
                first=$second
                second=$final
 
 	done
        echo "fib($num)=$final"
fi
