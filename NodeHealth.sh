#!/bin/bash
##########################
#Author - Aayush
# Date - 29 - 9 - 2024
# Script to check node health of disk space, memory, CPU
# Version V1
#############################

#set -x # Debug mode
set -e # Quits in case of error
set -o pipefail # Enable pipefail errors

echo "this is the Disk space-:"
df -h
echo

echo "this is the Memory-:"
free -g
echo

echo "these are the available CPU cores-:"
nproc
echo

echo "All the Chrome Task ID's -: "

# Adding a delay to ensure processes are running
sleep 1

ps -ef

# Debugging output for ps
#ps -ef | grep chrome

# Extract Chrome PIDs (using alternative ps format if needed)
#ps -ef | grep chrome | awk '{print $2}'

echo

