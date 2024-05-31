#!/bin/bash

ACCESS_LOG="./access.log"

calculate_bandwidth() {
    total_bandwidth=0
    while read -r line; do
        size=$(awk '{print $10}' <<< "$line")
        ((total_bandwidth += size))
    done < "$ACCESS_LOG"
    total_bandwidth_kb=$((total_bandwidth / 1024))
    echo "Total bandwidth usage: $total_bandwidth_kb KB"
}

find_hotspots() {
    resource_bandwidth=$(awk '{resources[$7]+=$10} END {for (res in resources) print res, resources[res]}' "$ACCESS_LOG")
    sorted_resources=$(echo "$resource_bandwidth" | sort -nrk2)

    echo "Top (10) resource bandwith"
    echo "$resource_bandwidth" | head -n 10
}

main() {
    calculate_bandwidth
    echo ""
    find_hotspots
}

main