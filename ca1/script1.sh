#!/bin/bash
cnt=`grep processor /proc/cpuinfo | wc -l`
if [ $cnt -eq $1​ ]; then
echo "CPU​ ​ Configuration​ ​ correct"
fi
