#!/bin/bash

cnt=`grep processor /proc/cpuinfo | wc -l`

if [ $cnt -le 5 ] ;then
echo "too few CPUs, exiting"
fi

