#!/bin/bash
if [ $? == 0 ]; then echo "exit"; else echo "no"; fi
if [ $? -eq 0 ]; then echo "exit"; else echo "no"; fi
if [ -z$PATH ]; then echo "exsit"; fi