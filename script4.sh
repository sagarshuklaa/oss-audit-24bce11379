#!/bin/bash
# Script 4: Log File Analyzer
# Author: Sagar | Course: Open Source Software
# Usage: ./script4.sh /var/log/syslog error

LOGFILE=$1
KEYWORD=${2:-"error"}
COUNT=0

# Check if file was provided
if [ -z "$LOGFILE" ]; then
    echo "Usage: ./script4.sh <logfile> <keyword>"
    exit 1
fi

# Check if file exists
if [ ! -f "$LOGFILE" ]; then
    echo "Error: File '$LOGFILE' not found."
    exit 1
fi

# Check if file is empty
if [ ! -s "$LOGFILE" ]; then
    echo "Warning: Log file is empty."
    exit 1
fi

echo "======================================"
echo " Log File Analyzer"
echo " File    : $LOGFILE"
echo " Keyword : $KEYWORD"
echo "======================================"

# Read file line by line and count matches
while IFS= read -r LINE; do
    if echo "$LINE" | grep -iq "$KEYWORD"; then
        COUNT=$((COUNT + 1))
    fi
done < "$LOGFILE"

echo " Matches found : $COUNT"
echo ""
echo "Last 5 matching lines:"
echo "--------------------------------------"
grep -i "$KEYWORD" "$LOGFILE" | tail -5
echo "======================================"
EOF 

