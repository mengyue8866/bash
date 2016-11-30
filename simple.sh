#!/bin/bash
echo $PATH
echo "hello word"
# read -p "what's date today?" _date
# read -p "what's time now?" _time
# echo ${_date} ${_time}
echo $(date '+%x%X')
read -p "please input number" _number
read -p "please input another number" _number1
$_number=${_number:-"3"}
$_number1=${_number1:-"10"}
echo "${_number}; 4*a(1)" | bc -lq

exit 0
