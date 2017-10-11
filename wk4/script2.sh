#!/bin/bash
FILE="$1"
if [ -e $HOME/epa-comp/wk4/"$1" ]; then
    echo "File $1 exists"
else
    echo "File does not exist"
fi
