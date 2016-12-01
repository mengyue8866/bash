#!/bin/bash
# ${变量}进行字符串或赋值，变量不需要加$, sed中位置为变量？
# 变量什么时候用${}  什么时候用"$var"
# 执行多个命令：&& 与 ; 或 |的区别？
find ./ -type f -name "[a-z]*.sh" | while read name; do
    # na=$(echo $name && grep '[a-z]*')
    # echo $na
    na=${name##*/}
    nb=${na%_*}
    nc=${nb}.sh
    mv "$name"  "$nc"
done