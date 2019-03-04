#!/bin/bash

#7.Вывести количество переданных параметров и последний из них.

arguments=("$@")
last_index=`expr $# - 1` 

echo "Количество параметров: " $#
echo "Последний параметр:    " ${arguments[$last_index]}


exit 0
