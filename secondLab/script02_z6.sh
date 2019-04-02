#!/bin/bash

#15.Сравнить две числовые переменные и вывести сообщение yes или no, используя команду test


arr=($@)
i=0
while [ $i -lt $# ]
do
        if [ "${arr[$i]}" == "-task" ]
        then
                echo "Задание"
                echo "#6.Создайте функцию, в которую передается исходный код на языке С\С++, состоящий из более 40 строк. Код передается из файла. Функция обрабатывает текст выводит количество пар открывающих и закрывающих скобок {}."
                echo ""
                echo ""
                break
        fi
        ((i++))
done

if [ $# -ne 1 ]; then
  echo "Неверное количество аргументов (необходимо: 1)"
  exit 1
fi

if ! [ -f "$1" ]; then
  echo "Указанный файл не найден"
  exit 2
fi

text=$(cat $1)
open_braces=0;
pairs=0;
for symbol in  ${text[@]}; do
  if [ "$symbol" == '{' ]; then
    open_braces=`expr $open_braces + 1`
    continue
  fi
  if [ "$symbol" == '}' ]; then
    if [ $open_braces -gt 0 ]; then
      open_braces=`expr $open_braces - 1`
      pairs=`expr $pairs + 1`
    fi
    continue
  fi
done

echo "Количество пар: $pairs"

exit 0;
































