#!/bin/bash

#7.Вывести количество переданных параметров и последний из них.

arr=($@)
i=0
while [ $i -lt $# ]
do
	if [ "${arr[$i]}" == "-task" ]
       	then
	       	echo "Задание"
	       	echo "7.Вывести количество переданных параметров и последний из них."
	       	echo ""
	       	echo ""
		break
       	fi
       	((i++))
done


arguments=("$@")
last_index=`expr $# - 1` 

echo "Количество параметров: " $#
echo "Последний параметр:    " ${arguments[$last_index]}


exit 0
