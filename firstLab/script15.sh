#!/bin/bash

#Сравнить две числовые переменные и вывести сообщение yes или no, используя команду test

if test $# -ne 2
then
	echo "неверное количество параметров"
	exit 1
fi

if test $1 -eq $2
then
	echo "yes"
else
	echo "no"
fi
