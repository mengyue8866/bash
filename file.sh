#!/bin/bash
read -p "please input a filename：" _filename
test -z ${_filename} && echo "you must input filename" && exit 0
test ! -e ${_filename} && echo "file is not exist"