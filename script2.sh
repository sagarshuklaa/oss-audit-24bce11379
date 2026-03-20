#!/bin/bash
# Script 2: FOSS Package Inspector
# Author: Sagar | Course: Open Source Software
# Checks if a package is installed and prints its philosophy

PACKAGE="git"

# Check if package is installed using dpkg
if dpkg -l $PACKAGE &>/dev/null; then
    echo "======================================"
    echo " Package Inspector — $PACKAGE"
    echo "======================================"
    echo ""
    echo "Status   : INSTALLED"
    # Extract version from dpkg output
    VERSION=$(dpkg -l $PACKAGE | grep "^ii" | awk '{print $3}')
    echo "Version  : $VERSION"
    echo "Location : $(which $PACKAGE)"
    echo "License  : GPL v2"
    echo ""
else
    echo "$PACKAGE is NOT installed."
    echo "Install with: sudo apt install $PACKAGE"
fi

# Case statement — philosophy note for each package
echo "Philosophy Note:"
case $PACKAGE in
    git)
        echo "Git: Born when proprietary tools failed the Linux community." ;;
    firefox)
        echo "Firefox: A nonprofit fighting to keep the web open." ;;
    vlc)
        echo "VLC: Built by students who just wanted to watch videos freely." ;;
    python3)
        echo "Python: Shaped entirely by its community for 30+ years." ;;
    apache2)
        echo "Apache: The web server that helped build the open internet." ;;
    *)
        echo "An open-source tool — built openly, shared freely." ;;
esac
echo "======================================"
EOF 

