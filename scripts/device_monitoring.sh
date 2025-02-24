#!/bin/bash

# Function to get CPU usage
get_cpu_usage() {
    echo "CPU Usage:"
    top -l 1 | grep "CPU usage" | awk '{print $3 " " $4 " " $5 " " $6 " " $7 " " $8}'
    echo ""
}

# Function to get memory usage
get_memory_usage() {
    echo "Memory Usage:"
    page_size=$(vm_stat | grep "page size of" | awk '{print $8}')
    free_pages=$(vm_stat | grep "Pages free" | awk '{print $3}' | sed 's/\.//')
    speculative_pages=$(vm_stat | grep "Pages speculative" | awk '{print $3}' | sed 's/\.//')
    active_pages=$(vm_stat | grep "Pages active" | awk '{print $3}' | sed 's/\.//')
    inactive_pages=$(vm_stat | grep "Pages inactive" | awk '{print $3}' | sed 's/\.//')
    wired_pages=$(vm_stat | grep "Pages wired down" | awk '{print $4}' | sed 's/\.//')
    purgeable_pages=$(vm_stat | grep "Pages purgeable" | awk '{print $3}' | sed 's/\.//')

    free_memory=$(echo "scale=2; ($free_pages + $speculative_pages) * $page_size / 1024 / 1024 / 1024" | bc)
    used_memory=$(echo "scale=2; ($active_pages + $inactive_pages + $wired_pages + $purgeable_pages) * $page_size / 1024 / 1024 / 1024" | bc)

    echo "Used: $used_memory GB"
    echo "Free: $free_memory GB"
    echo ""
}

# Function to get disk usage
get_disk_usage() {
    echo "Disk Usage:"
    df -h | grep "^/dev/"
    echo ""
}

# Function to get network activity
# get_network_activity() {
#     echo "Network Activity:"
#     netstat -ib | awk 'NR==1 || /en0/'
#     echo ""
# }

# Function to generate system report
generate_report() {
    echo "Generating system report..."

    # Create logs directory if it doesn't exist
    mkdir -p "../my-bash-project/logs"

    # Define the log file path
    log_file="../my-bash-project/logs/system-report-$(date +"%Y-%m-%d").log"

    # Generate the report
    echo "System Report - $(date)" > "$log_file"
    echo "----------------------------------------" >> "$log_file"
    get_cpu_usage >> "$log_file"
    get_memory_usage >> "$log_file"
    get_disk_usage >> "$log_file"
    # get_network_activity >> "$log_file"
    echo "Report generated: $log_file"
}

# Main script execution
generate_report

