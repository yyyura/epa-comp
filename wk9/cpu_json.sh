#!/bin/bash
mpstat -o JSON
#interval of 10 seconds and produce 1 sample of CPU data
mpstat 10 1
