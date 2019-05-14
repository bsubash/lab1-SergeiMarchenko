#!/bin/bash
arr=($@)
i=0
while [ $i -lt $# ]
do
  if [ "${arr[$i]}" == "-task" ];
  then
    echo "Задание"
    echo "6. Вставить строку с символом /* после каждой строки соответсвующей регулярному выражению begin."
    echo ""
    break
  fi
  ((i++))
done


cat $1 | sed -e 's/^begin$/begin\n\/\*/g'
