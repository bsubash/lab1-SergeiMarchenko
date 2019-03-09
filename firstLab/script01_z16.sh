#!/bin/bash

arr=($@)
i=0
while [ $i -lt $# ]
do
        if [ "${arr[$i]}" == "-task" ]
        then
                echo "Задание"
                echo "#16.Сравнить две строковые переменные и вывести сообщение yes или no, используя команду test"
                echo ""
                echo ""
                break
        fi
        ((i++))
done

if [ $# -ne 2 ]
then
	echo "Неверное кол-во параметров"
	exit 1
fi


if test $1 == $2
then
	echo "yes"
else
	echo "no"
fi

exit 0
