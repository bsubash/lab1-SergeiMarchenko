#!/bin/bash
arr=($@)
i=0
while [ $i -lt $# ]
do
  if [ "${arr[$i]}" == "-task" ];
  then
    echo "24. Поиск и замена "Hi\\bro" на "Yo\\bro" (замена только последнего совпадения) "
    echo ""
    break
  fi
  ((i++))
done

sed 's/\(.*\)Hi/\Yo/'
