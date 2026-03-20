#!/bin/bash
# Script 3: Disk and Permission Auditor
# Author: Sagar | Course: Open Source Software
# Loops through system directories and reports permissions and size

DIRS=("/etc" "/var/log" "/home" "/usr/bin" "/tmp")

echo "==============================="
echo " Directory Audit Report"
echo " Date: $(date '+%d %B %Y')"
echo "==============================="

# Loop through each directory
for DIR in "${DIRS[@]}"; do
    if [ -d "$DIR" ]; then
        # Extract permissions, owner, group
        PERMS=$(ls -ld "$DIR" | awk '{print $1}')
        OWNER=$(ls -ld "$DIR" | awk '{print $3}')
        GROUP=$(ls -ld "$DIR" | awk '{print $4}')
        SIZE=$(du -sh "$DIR" 2>/dev/null | cut -f1)
        echo ""
        echo "Directory : $DIR"
        echo "  Permissions : $PERMS"
        echo "  Owner       : $OWNER ($GROUP)"
        echo "  Size        : $SIZE"
    else
        echo "$DIR does not exist on this system"
    fi
done

echo ""
echo "==============================="
echo " Git Config Check"
echo "==============================="
# Check if Git user config file exists
GIT_CONFIG="$HOME/.gitconfig"
if [ -f "$GIT_CONFIG" ]; then
    PERMS=$(ls -l "$GIT_CONFIG" | awk '{print $1, $3, $4}')
    echo "Git config found : $GIT_CONFIG"
    echo "Permissions      : $PERMS"
else
    echo "No .gitconfig found."
fi
echo "==============================="
EOF 
