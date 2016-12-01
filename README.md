*  开头：#!/bin/bash   声明所用的语法，以载入相应环境的配置
*  执行：文件有读与执行权限 ./file.sh  或 PATH内  或  bash file.sh 或 sh file.sh   在子进程中执行的
*  关键字：export  抛出为环境变量   set   unset   exit 0   read  declare  
*  常用特殊变量：
	*  $0  当前脚本文件名
	*  $n  传递给脚本或函数的参数
	*  $#  参数个数
	*  $*  所有参数，与$@几乎相同，在""内部时稍有不同, 前者为视为一个整体，后者视为单个
	*  $?  上个命令的退出状态或函数返回值
	*  $$  进程ID
    *  $-  当前使用项
*  括号相关：
	*  ${a}   变量，不引起歧义的情况下，括号可以省略
	*  $(cmd)  命令替换，执行cmd; 同``
	*  $((exp))  数学表达式; 同 `expr exp`
	*  (cmd1;cmd2)  或 {cmd1;cmd2;}  多条命令执行, 是否开子进程执行；括号中重定向只影响内部，外部重定向可以影响内部所有命令
*  双括号：增加括号的用法
	*  (())常用于算术运算，可以不使用$前缀   或 ` `  或{1..3}
*  指令表达式：
	*  扩展运算：$((exp))
	*  $() 重开子进行执行,除最后一个命令外用;分隔多个命令, 不必有空格  与  ``
	*  ${} 当前进行执行,都用;分隔多个命令, 第一个命令与左括号之前必须有一个空格
*  ()  子表达式返回值，不会影响外部的
*  let  (())表达式计算    $(())与其类似, 但b=1 $((++b)) 与((b++))一样
*  $() 命令执行的结果
*  {1..30}  /{,s}bin/
*  开头生成注释？？？
*  变量条件赋值：
	*  用new作传回值：${old-new} old无设定时     ${old:-new}  old无设定或空时
	*  用new作传回值：${old+new} old为空值或非空值   ${old:+new}  非空值
	*  用new作传回值, 同时再赋值给old：${old=new}  old无设定  ${old:=new} old无设定或空时
	*  将new输出到标准输出：${old?new}  old未设定   ${old:?new}   old未设定或为空值
*  bc进行小数的计算：bc -lq
*  source 或 .  脚本：在父进程中执行的
*  $?  &&  ||
*  测试：[]  test  [[]]
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
*  <() >()  >>  <<  反命令结果当文件读入
*  重点区分：${a}变量  $(cmd)命令替换  $((exp))
*  重点区分：(cmd;cmd1)  {cmd;cmd1;cmd2;}
*  双括号：常用于算术运算
*  expr length "str" 或  expr substr "str"  或  expr index "str"  或  expr 运算
## 流程控件
*  if [condition]; then command...; fi
*  if [condition] \n then command.... \n else command \n fi
*  if [condition]\n then command....\n elif [condition]\n then command \n else command \n fi
*  for var in list \n  do command ... \n done
*  while condition \n do command  \n done
*  until condition \n do command  \n done
*  break  continue
`  case
	模式1)
		command
		command1
		...
		;;
	模式2)
		command
		command1
		...
		;;
	esac`
## 函数
*  定义：function fname(){}  或 fname(){}
*  调用：fname  或  fname param1 param2
    