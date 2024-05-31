#!/bin/bash

AUTH_LOG="./auth.log"

check_auth_log() {
    fail_password_time=$(grep " Failed password " "$AUTH_LOG" | wc -l)
    if (( fail_password_time > 0 )); 
    then
        echo "Login failed time: $fail_password_time"
    fi
 
    auth_failure_time=$(grep " pam_unix(sudo:auth): authentication failure; " "$AUTH_LOG" | wc -l)
    if (( auth_failure_time > 0 )); 
    then
        echo "Auth failure time: $auth_failure_time"
    fi
}

main() {
    check_auth_log
}

main