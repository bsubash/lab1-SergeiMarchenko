#!/bin/bash
arr=($@)
i=0
while [ $i -lt $# ]
do
  if [ "${arr[$i]}" == "-task" ];
  then
    echo "33.Если линия начинается с знака "==", то присоединить ее к предыдущей линии и заменить "==" пробелом" 
    echo ""
    break
  fi
  ((i++))
done

sed -e :a -e '$!N;s/\n==/ /;ta' -e 'P;D'
