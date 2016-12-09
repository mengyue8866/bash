#!/bin/bash
# 10-->2进制方法：对2进行求余，结果倒序即为2进制数据；位数不够，高位补0
# 负数转换：对正数-->2进制，余数每位取反+1
# 小数：小数后的乘以2, 取结果的整数部分; 0.125*2 = 0.25-->0    0.25*2 = 0.5-->0    0.5*2 = 1-->1  0.001
# 2-->10进制方法：每位数*2^index  再相加
# 首位为1，先取反再计算
# 小数：每位数*2^(-index)  再相加

#simple 表达式-->计算的函数值不可直接返回
declare -i x
declare -i y
function add(){
    x=$(expr "$1"+"$2")
}
# read -p "input first Number:" _a
# read -p "input second Number:" _b
# add $_a $_b
# echo $x

# 子进程
function add(){
    x=$(($1-$2))
}
# read -p "input first Number:" _c
# read -p "input second Number:" _d
# add $_c $_d
# echo $x

# 复杂计算-->这几种都可以
function add(){
    # x=$(($1*$2))
    # x=$(expr $1*$2)
    x=$(expr $1\*$2)
    y=$(expr $1/$2)
}
# read -p "input first Number:" _e
# read -p "input second Number:" _f
# add $_e $_f
# echo $x $y

# recircle and ``的使用
clear 
i="y"
sum=0





# read -p 'input a number:' _num
# if [ "$_num" -eq 0 ]
# then
#     echo "input a valide number" && exit 0
# else
    # power=1
    # Decimal=0
    # while [ "$_num" -ne 6 ]
    # do
    #     # rem=$(expr $_num % 10)
    #     # Decimal=$((Decimal+(rem*power)))
    #     # power=$((power*2))
    #     # _num=$(expr $_num/10)
    #     # Decimal=$((expr $Decimal++))
    #     # _num=$(expr $_num % 10)
    #     # echo $Decimal
    # done
    # echo "$Decimal"
# fi


