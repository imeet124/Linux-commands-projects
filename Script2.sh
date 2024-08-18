#!/bin/bash

##########################
# Author: Meet
# Date: 08/20/2024

# This Script outputs the node health

# Version: v1
##########################

set -x # Debug mode
set -e # Exit from the script whenever there is an error
set -o # pipe fail

df -h
free -g
nproc

:wq!
