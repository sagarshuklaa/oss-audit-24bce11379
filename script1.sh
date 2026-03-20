#!/bin/bash
# Script 1: System Identity Report
# Author: Sagar | Course: Open Source Software
STUDENT_NAME="Sagar"
SOFTWARE_CHOICE="Git"
KERNEL=$(uname -r)
USER_NAME=$(whoami)
UPTIME=$(uptime -p)
DISTRO=$(grep PRETTY_NAME /etc/os-release | cut -d= -f2 | tr -d '"')
CURRENT_DATE=$(date '+%d %B %Y, %I:%M %p')
HOME_DIR=$HOME
echo "=============================================="
echo "   Open Source Audit — $STUDENT_NAME"
echo "   Software Under Audit: $SOFTWARE_CHOICE"
echo "=============================================="
echo "  Distribution : $DISTRO"
echo "  Kernel       : $KERNEL"
echo "  Logged in as : $USER_NAME"
echo "  Home Dir     : $HOME_DIR"
echo "  Uptime       : $UPTIME"
echo "  Date & Time  : $CURRENT_DATE"
echo ""
echo "  OS License   : GPL v2 (Free as in Freedom)"
echo "  Git License  : GPL v2"
echo "=============================================="
