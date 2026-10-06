#!/bin/bash
TIMESTAMP=$(date +%s)
echo "Script executed at: $TIMESTAMP"
sleep 20
TIMESTAMP1=$(date +%s)
echo "Script execution time stopped at: $TIMESTAMP1"
TotalSleepTime=$((TIMESTAMP1 - TIMESTAMP))
echo "Total sleep time: $TotalSleepTime seconds"