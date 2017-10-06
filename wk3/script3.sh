#!/bin/bash
val=879
echo "The value of \"a\" is $val."
if [ $val -gt 100 ]; then
  echo "Value too large".
fi
echo $USER $HOME
echo $1 $2 $3
#positional parameters are the words following the name of a shell script
if [ $1 -gt 100 ]; then
  echo "Value too large".
else
  echo "The value is ok"
fi

