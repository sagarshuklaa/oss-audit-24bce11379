#!/bin/bash
# Script 5: Open Source Manifesto Generator
# Author: Sagar | Course: Open Source Software
# Asks 3 questions and saves a personal philosophy statement to a file

echo "============================================"
echo " Open Source Manifesto Generator"
echo " Inspired by the Git project"
echo "============================================"
echo ""
echo "Answer three questions to generate your manifesto."
echo ""

# Read user input interactively
read -p "1. Name one open-source tool you use every day: " TOOL
read -p "2. In one word, what does freedom mean to you: " FREEDOM
read -p "3. Name one thing you would build and share freely: " BUILD

# Get current date and set output filename
DATE=$(date '+%d %B %Y')
OUTPUT="manifesto_$(whoami).txt"

# Write manifesto to file
echo "" > "$OUTPUT"
echo "=== My Open Source Manifesto ===" >> "$OUTPUT"
echo "Generated on: $DATE" >> "$OUTPUT"
echo "" >> "$OUTPUT"
echo "Every day I rely on $TOOL — a tool I did not pay for," >> "$OUTPUT"
echo "built by people I have never met, who chose to share" >> "$OUTPUT"
echo "their work openly. To me, freedom means $FREEDOM." >> "$OUTPUT"
echo "That is what open source represents: the freedom to" >> "$OUTPUT"
echo "use, study, modify, and share." >> "$OUTPUT"
echo "" >> "$OUTPUT"
echo "One day I will build $BUILD and release it freely," >> "$OUTPUT"
echo "the same way Linus Torvalds released Git — not for" >> "$OUTPUT"
echo "profit, but because open knowledge makes everyone better." >> "$OUTPUT"
echo "" >> "$OUTPUT"
echo "Signed: $(whoami) | $DATE" >> "$OUTPUT"

# alias example: alias today='date' would shorten the date command above
echo ""
echo "Manifesto saved to $OUTPUT"
echo ""
cat "$OUTPUT"
echo "============================================"
EOF 

