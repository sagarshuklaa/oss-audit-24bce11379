cat > README.md << 'EOF'
# OSS Audit — Git
**Student Name:** Sagar
**Roll Number:** 24BCE11379
**Course:** Open Source Software
**Software Chosen:** Git (GPL v2)

## Scripts

### script1.sh — System Identity Report
Displays system information including distro, kernel, user, uptime and license details.
**Run:** `bash script1.sh`

### script2.sh — FOSS Package Inspector
Checks if Git is installed, shows version and prints a philosophy note using a case statement.
**Run:** `bash script2.sh`

### script3.sh — Disk and Permission Auditor
Loops through key system directories and reports their size and permissions.
**Run:** `bash script3.sh`

### script4.sh — Log File Analyzer
Reads a log file and counts how many lines contain a keyword.
**Run:** `bash script4.sh /var/log/syslog error`

### script5.sh — Manifesto Generator
Asks 3 questions interactively and saves a personal open source philosophy statement.
**Run:** `bash script5.sh`

## Dependencies
- Bash
- Git
- Standard Linux tools (dpkg, awk, grep, du)

## How to Run
1. Clone this repo: `git clone https://github.com/sagarshuklaa/oss-audit-24bce11379.git`
2. Navigate into folder: `cd oss-audit-24bce11379`
3. Make scripts executable: `chmod +x *.sh`
4. Run any script: `bash script1.sh`
EOF 
