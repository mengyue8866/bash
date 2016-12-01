#!/bin/bash
# 中括号内的变量最好用引号，常量用单引号或双引号
if [ $? == 0 ]; then echo "exit"; else echo "no"; fi
if [ $? -eq 0 ]; then echo "exit"; else echo "no"; fi
# if [ -z$PATH ]; then echo "exsit"; fi
if [ ! -z "${PATH}" ]; then echo "exsit"; fi
read -p "input a filename:" _str
read -p "start index:" _start
read -p "end index" _end
echo $(sed "$_start,$_end d" "${_str}")