#!/bin/bash
echo "hi"
~/epa-comp/wk8/loadtest $1
bg loadWrapper.sh
sleep 2
echo "hi2"
pkill loadWrapper.sh

