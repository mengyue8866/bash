#!/bin/bash
read -p 'please input a string to test:' _str
echo ${_str:4:10}
echo ${_str#*n}
echo ${_str/want/wanted}
echo ${#_str}