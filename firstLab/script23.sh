#!/bin/bash

#Вывести только четные параметры, переданные в скрипт

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
