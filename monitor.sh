#!/bin/bash

timestamp=$(date +%s)
log_file="logs/log_$timestamp.txt"

echo "==== System Snapshot: $(date) ====" > "$log_file"
echo "Uptime (from C++):" >> "$log_file"
./uptime_reader >> "$log_file"

echo -e "\nMemory Usage:" >> "$log_file"
free -h >> "$log_file"

echo -e "\nCPU Load:" >> "$log_file"
uptime >> "$log_file"

echo -e "\nLogged-in Users:" >> "$log_file"
who >> "$log_file"

echo -e "\nIP Address:" >> "$log_file"
hostname -I >> "$log_file"

echo "✅ System info logged to $log_file"
