#!/bin/bash

# Traffic Analysis Script:
# This script could analyze access logs to identify:
# Most frequently accessed pages
# Top visitors/IP addresses
# HTTP response code distribution
# It could generate a report summarizing this information and highlighting any anomalies.

LOG_FILE="./sample.log"

analyze_frequent_page() {
    echo "Frquently access page"
    awk '{print $7}' "$LOG_FILE" | sort | uniq -c | sort -nr | head -n 10
}

analyze_top_visitors() {
    echo "Top visitors based on IP address"
    awk '{print $1}' "$LOG_FILE" | sort | uniq -c | sort -nr | head -n 10
}

analyze_response_code() {
    echo "Track response status code"
    awk '{print $9}' "$LOG_FILE" | sort | uniq -c | sort -nr | head -n 10
}

main() {
    analyze_frequent_page
    analyze_top_visitors
    analyze_response_code
}

main