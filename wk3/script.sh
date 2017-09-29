#!/bin/bash

# this is a CPU counting script

val=$(grep -o 'processor' /proc/cpuinfo | wc -l)
echo $val
if [ $val -lt 3 ]; then
  echo "Value too small"
  exit 1
fi
