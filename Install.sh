#!/bin/bash
source ~/.bashrc
date=$(date +'%m:%d:%Y-%H-%M-%S')
file="$date-Install.log"
make package install > $file
cat $file
