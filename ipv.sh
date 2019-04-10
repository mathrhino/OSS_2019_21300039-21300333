#!/bin/bash
num=$1
echo "n=$num"
if [ $num -lt 1 ];
then
        echo
elif [ $num -gt 12 ];
then
        echo "You put wrong number"
else
        for((i=1;i<=$num;i++))
        do
                for((j=1;j<i;j++))
                do
                        echo -n " "
                done
                for((a=1;a<=2*$num-(i*2-1);a++))
                do
                        echo -n "*"
                done
                echo
        done
fi
