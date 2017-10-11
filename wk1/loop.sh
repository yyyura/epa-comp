#!/bin/bash
a=879
echo "The value of \"a\" is $a."
if [ $a -gt 100 ]; then
  echo "Value too large".
fi
echo $USER $HOME
echo $1 $2 $3 
#positional parameters are the words following the name of a shell script
#$ ./loop.sh one two three
