#!/bin/bash

#23.Вывести только четные параметры, переданные в скрипт

arr=($@)
i=0
while [ $i -lt $# ]
do
        if [ "${arr[$i]}" == "-task" ]
        then
                echo "Задание"
                echo "23.Вывести только четные параметры, переданные в скрипт"
                echo ""
                echo ""
                break
        fi
        ((i++))
done


arguments=("$@")
last_index=`expr $# - 1` 

for index in `seq 0 $last_index`
do
       	mod=`expr $index % 2`
       	if [ $mod == 1 ]
       	then	
	   	echo ${arguments[$index]}
       	fi
done

exit 0                
