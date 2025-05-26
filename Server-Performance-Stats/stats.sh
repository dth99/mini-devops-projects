#!/bin/bash

#Total CPU Usage

echo "------------------------------------------------------------"
idle_time=$(vmstat 1 2 | tail -1 | awk '{print $15}')
echo "| CPU Usage | : $((100 - $idle_time))%"
echo "------------------------------------------------------------"

# Total Memory Usage

total_memory=$(free -m | awk '/^Mem:/ {print $2}')
used_memory=$(free -m  | awk '/^Mem:/ {print $3}')
free_memory=$(free -m  | awk '/^Mem:/ {print $4}')

memory_utilized=$(echo "scale=2; ($total_memory - $free_memory) * 100 / $total_memory" | bc)
free_percent=$(echo "scale=2; $free_memory * 100 / $total_memory" | bc)
used_percent=$(echo "scale=2; $used_memory * 100 / $total_memory" | bc)

echo "| Total Memory Usage | : $memory_utilized% (Free: $free_percent%, Used: $used_percent%)"

echo "------------------------------------------------------------"


# Total Disk Usage

total_disk=$(df -BG / | tail -1 | awk '{print $2}')
used_disk=$(df -BG /  | tail -1 | awk '{print $3}')
available_disk=$(df -BG / | tail -1 | awk '{print $4}')


used_disk_percent=$(echo "scale=2; $used_disk * 100 / $total_disk" | bc)
available_disk_percent=$(echo "scale=2; $available_disk * 100 / $total_disk" | bc)
disk_utilized=$(echo "scale=2; ($total_disk - $available_disk) * 100 / $total_disk" | bc)

echo "| Total DISK Usage | : $disk_utilized% (Free: $available_disk_percent%, Used: $used_disk_percent%)"
echo "------------------------------------------------------------"

# Top 5 processes by CPU usage

echo "| Top 5 Processes by CPU Usage : |"
top -b -n 1 | sed -n '8,12p' | awk '{print $12}'
echo "------------------------------------------------------------"

# Top 5 processes by memory usage
echo "| Top 5 processes by Memory Usage: |"
ps aux --sort=-%mem | head -n 6 | awk 'NR>1 {print $11}'
echo "------------------------------------------------------------"

