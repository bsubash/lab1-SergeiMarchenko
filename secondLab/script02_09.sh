#!/bin/bash
arr=($@)
i=0
while [ $i -lt $# ]
do
  if [ "${arr[$i]}" == "-task" ];
  then
    echo "Задание"
    echo "9. Написать скрипт, который скачивает заглавную страницу известного портала и архивирует ее (использовать wget и tar -czvf )."
    echo ""
    break
  fi
  ((i++))
done
wget --mirror -p --convert-links -P ./papka https://www.onliner.by/ 

