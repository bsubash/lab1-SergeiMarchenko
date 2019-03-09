#!/bin/bash

arr=($@)
i=0
while [ $i -lt $# ]
do
        if [ "${arr[$i]}" == "-task" ]
        then
                echo "Задание"
                echo "31. Обработать список входных параметров, скрипт должен различать 7 типов параметров и вывадить сообщение о том, какой параметр был получен и какое знаечение передается после параметра" 
                echo ""
                echo ""
                break
        fi
        ((i++))
done

arguments_for_processing=( -q -w -e -r -t -y -u )


argument_processing () {
	for item in ${arguments_for_processing[@]}
	do
		if [ $1 == "$item" ]
		then
				value=$2
				if [ "$value" == "" ]
				then 
					echo "Получен параметр $item"
					exit 0
				fi
			echo "Получен параметр $item. Значение после параметра $value"
	        fi
	done
}


arguments=($@)
last_index=`expr $# - 1`

for index in `seq 0 $last_index`
do
	argument_processing ${arguments[$index]} ${arguments[`expr $index + 1`]}
done

exit 0
