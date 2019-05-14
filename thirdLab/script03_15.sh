#!/bin/bash
if [ -n $1 ] && [ "$1"  == "-task" ];then
echo "Задание"
echo "15. Удалить все повторяющиеся пробелы и символы табуляции в начале и конце и в средине каждой строки файла"
echo
echo
fi
cat $1 |sed -e 's/^[ \t]*//' -e 's/^[ \t]*//;s/[ \t]*$//'
exit 0

