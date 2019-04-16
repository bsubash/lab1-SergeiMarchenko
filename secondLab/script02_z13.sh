#!/bin/bash


arr=($@)
i=0
while [ $i -lt $# ]
do
        if [ "${arr[$i]}" == "-task" ]
        then
                echo "Задание"
                echo "13. Написать скрипт, который выводит 1000 сообщений с периодичностью 1 сек. По нажатию на клавиатуре CTRL+Z, процесс должен вывести сообщение "нет возможности запустить в фоновом режиме", после команды fg процесс должен завершиться."
                echo ""
                echo ""
                break
        fi
        ((i++))
done

if [ $# -ne 0 ]; then
  echo "Неверное количество аргументов (необходимо: 0)"
  exit 1
fi

trap "echo 'нет возможности запустить в фоновом режиме'"  INT


messages_left=1000

for index in `seq 1 1000`
do
  echo "Message $index"
  messages_left=`expr $messages_left - 1`
  sleep 1
done

exit 0
