#!/bin/bash

# Function to get user activity in the last 8 hours
get_user_activity() {
    echo "User Activity in the Last 8 Hours:"
    log show --predicate 'eventMessage contains "launchservicesd" or eventMessage contains "xpc"' --info --style syslog --last 8h | grep -E 'com.apple.launchservicesd|com.apple.xpc.launchd' | awk '{print $1, $2, $3, $4, $5, $6, $7, $8, $9, $10}'
    echo ""
}

# Function to parse user activity logs and generate detailed report
parse_user_activity() {
    log show --predicate 'eventMessage contains "launchservicesd" or eventMessage contains "xpc"' --info --style syslog --last 8h | grep -E 'com.apple.launchservicesd|com.apple.xpc.launchd' | awk '{print $1, $2, $3, $4, $5, $6, $7, $8, $9, $10}' | while read -r line; do
        timestamp=$(echo "$line" | awk '{print $1, $2}')
        event=$(echo "$line" | awk '{print $10}')
        app=$(echo "$line" | awk -F'/' '{print $NF}')
        echo "$timestamp - $app - $event"
    done
}

# Function to generate user activity report
generate_report() {
    echo "Generating user activity report..."

    # Create logs directory if it doesn't exist
    mkdir -p "../my-bash-project/logs"

    # Define the log file path
    log_file="../my-bash-project/logs/user-activity-report-$(date +"%Y-%m-%d").log"
    # Generate the report
    echo "User Activity Report - $(date)" > "$log_file"
    echo "----------------------------------------" >> "$log_file"
    parse_user_activity >> "$log_file"
    echo "Report generated: $log_file"
}

# Main script execution
generate_report