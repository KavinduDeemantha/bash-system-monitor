#!/bin/bash

USAGE=$(df -h /mnt/c | awk 'NR==2 {print $5}' | tr -d '%')

THRESHOLD=50
LOG_FILE="/home/$(whoami)/c_drive_usage.log"
TIMESTAMP=$(date +"%Y-%m-%d %H:%M:%S")

if [ "$USAGE" -gt "$THRESHOLD" ]; then
     echo "[$TIMESTAMP] WARNING: Disk space is low! Usage is at $USAGE%" >> "$LOG_FILE"
     echo "Alert! Disk space is low. Logged to $LOG_FILE"
else
     echo "[$TIMESTAMP] Health Check PASSED. Usage is at $USAGE%" >> "$LOG_FILE"
     echo "Everything is fine. Current usage: $USAGE%"
fi
