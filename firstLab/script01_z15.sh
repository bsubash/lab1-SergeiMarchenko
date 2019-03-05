#!/bin/bash

#15.Сравнить две числовые переменные и вывести сообщение yes или no, используя команду test


arr=($@)
i=0
while [ $i -lt $# ]
do
        if [ "${arr[$i]}" == "-task" ]
        then
                echo "Задание"
                echo "#15.Сравнить две числовые переменные и вывести сообщение yes или no, используя команду test"
                echo ""
                echo ""
                break
        fi
        ((i++))
done


if test $# -ne 2
then
	echo "неверное количество параметров"
	exit 1
fi

if test $1 -eq $2
then
	echo "yes"
else
	echo "no"
fi
