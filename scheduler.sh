#!/bin/bash
# Determine the absolute path of the current directory
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )"

# Add or update crontab entry without using crontab -e
(crontab -l 2>/dev/null; echo "0 6 * * * $DIR/main.sh >> $DIR/updateLogs/log 2>&1") | crontab -
