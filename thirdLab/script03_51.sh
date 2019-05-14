#!/bin/bash
arr=($@)
i=0
while [ $i -lt $# ]
do
  if [ "${arr[$i]}" == "-task" ];
  then
    echo "51. Печать строк, совпадающих с регулярными выражениями AAA, BBB и CCC " 
    echo "одновременно (в конкретной последовательности)"
    echo ""
    break
  fi
  ((i++))
done

sed '/AAA.*BBB.*CCC/!d' 


