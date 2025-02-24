#!/bin/bash

# Function to check if running on macOS
check_macos() {
    if [[ "$(uname)" != "Darwin" ]]; then
        echo "Error: This script requires macOS to run."
        exit 1
    fi
}

# Function to check if log command exists
check_log_command() {
    if ! command -v log &> /dev/null; then
        echo "Error: 'log' command not found. Please ensure you're running this on macOS."
        exit 1
    fi
}

# Function to get user activity in the last 8 hours
get_user_activity() {
    echo "User Activity in the Last 8 Hours:"
    if ! log show --predicate 'eventMessage contains "launchservicesd" or eventMessage contains "xpc"' \
        --info --style syslog --last 8h 2>/dev/null | \
        grep -E 'com.apple.launchservicesd|com.apple.xpc.launchd' | \
        awk '{print $1, $2, $3, $4, $5, $6, $7, $8, $9, $10}'; then
        echo "No activity logs found or error accessing logs"
    fi
    echo ""
}

# Function to parse user activity logs and generate detailed report
parse_user_activity() {
    log show --predicate 'eventMessage contains "launchservicesd" or eventMessage contains "xpc"' \
        --info --style syslog --last 8h 2>/dev/null | \
        grep -E 'com.apple.launchservicesd|com.apple.xpc.launchd' | \
        awk '{print $1, $2, $3, $4, $5, $6, $7, $8, $9, $10}' | while read -r line; do
            if [ -n "$line" ]; then
                timestamp=$(echo "$line" | awk '{print $1, $2}')
                event=$(echo "$line" | awk '{print $10}')
                app=$(echo "$line" | awk -F'/' '{print $NF}')
                echo "$timestamp - $app - $event"
            fi
    done
}

# Function to generate user activity report
generate_report() {
    echo "Generating user activity report..."

    # Get the script's directory
    SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
    
    # Create logs directory if it doesn't exist
    LOGS_DIR="${SCRIPT_DIR}/logs"
    mkdir -p "$LOGS_DIR"

    # Define the log file path
    log_file="${LOGS_DIR}/user-activity-report-$(date +"%Y-%m-%d").log"
    
    # Generate the report
    {
        echo "User Activity Report - $(date)"
        echo "----------------------------------------"
        parse_user_activity
    } > "$log_file"

    if [ -f "$log_file" ]; then
        echo "Report generated successfully at: $log_file"
    else
        echo "Error: Failed to generate report"
    fi
}

# Main script execution
main() {
    # Check if running on macOS
    check_macos

    # Check if log command exists
    check_log_command

    # Generate the report
    generate_report
}

# Run the main function
main