#!/bin/bash

# This is the main script of the my-bash-project.
# It provides a menu to execute various utility scripts.

echo "Welcome to my Bash project!"
echo "Please choose an option from the menu below:"

while true; do
    echo "----------------------------------------"
    echo "1. Organize Files"
    echo "2. Monitor System Resources"
    echo "3. Track User Activity"
    echo "4. Exit"
    echo "----------------------------------------"
    read -p "Enter your choice [1-4]: " choice

    case $choice in
        1)
            echo "Running file organizer..."
            bash "$(dirname "$0")/organizer.sh"
            ;;
        2)
            echo "Generating system resource log..."
            bash "/device_monitoring.sh"
            ;;
        3)
            echo "Tracking user activity..."
            bash "$(dirname "$0")/user_monitoring.sh"
            ;;
        4)
            echo "Exiting. Thank you for using my Bash project!"
            exit 0
            ;;
        *)
            echo "Invalid choice. Please enter a number between 1 and 4."
            ;;
    esac
done