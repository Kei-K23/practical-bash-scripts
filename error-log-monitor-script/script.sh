#!/bin/bash

ERROR_LOG="./error.log"

check_error_patterns() {
    num_404=$(grep " 404 " "$ERROR_LOG" | wc -l)
    if (( num_404 > 0 ));
    then
        echo "404 Error founded: $num_404 occurences"
    fi
    
    num_500=$(grep " 500 " "$ERROR_LOG" | wc -l)
    if (( num_500 > 0 ));
    then
        echo "500 Error founded: $num_500 occurences"
    fi
}

main() {
    check_error_patterns
}

main