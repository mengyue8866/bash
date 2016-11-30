#!/bin/bash
read -p 'please input filename:' _filename
# _msg="simple.sh"
# echo ${_msg:?$_filename}
echo $((25<3 ? 2:3))
echo ${_msg:+$_filename}
echo ${_msg:-$_filename}
echo $_msg
echo ${_msg:=$_filename}











