#!/bin/bash
source ~/.bashrc
date=$(date +'%m:%d:%Y-%H-%M-%S')
file="$date-Build.log"
make package > $file
cat $file
