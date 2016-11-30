*  开头：#!/bin/bash   声明所用的语法，以载入相应环境的配置
*  执行：文件有读与执行权限 ./file.sh  或 PATH内  或  bash file.sh 或 sh file.sh   在子进程中执行的
*  关键字：export  抛出为环境变量   set   unset   exit 0   read  declare
*  开头生成注释？？？
*  变量条件赋值：
    *  用new作传回值：${old-new} old无设定时     ${old:-new}  old无设定或空时
    *  用new作传回值：${old+new} old为空值或非空值   ${old:+new}  非空值
    *  用new作传回值, 同时再赋值给old：${old=new}  old无设定  ${old:=new} old无设定或空时
    *  将new输出到标准输出：${old?new}  old未设定   ${old:?new}   old未设定或为空值
*  指令表达式：
    *  扩展运算：$((exp))
    *  $() 重开子进行执行,除最后一个命令外用;分隔多个命令, 不必有空格  与  ``
    *  ${} 当前进行执行,都用;分隔多个命令, 第一个命令与左括号之前必须有一个空格
*  bc进行小数的计算：bc -lq
*  source 或 .  脚本：在父进程中执行的
*  $?    test  &&  ||
*  []  判断
*  文件相关判断：-e 存在  类型：-f/d  权限：-r/w   组：-g/u  -s 非空白  文件比较：-nt 比新  ot比旧  ef同一个
*  整数：eq  ne  gt  lt  ge  le
*  字符串：-z 长度为空  -n 非空  ==    !=
*  字符串操作：
    *  左侧删除：${file#*identity} 删除标识及左侧的字符  ${file##*identity} 删除最后一个标识及左侧的字符
    *  右侧删除${file%identity*}  删除最后一个标识及右侧的字符    ${file%%identity*}  删除第一个标识及右侧的字符    
    *  ${file/a/b}  替换第一个      ${file//a/b}  替换所有
    *  ${string:0:5}  截取
    *  ${#var}  变量长度
*  多重：-a   -o   !