#!/bin/bash

ADDRESS="https://example.com"
USERNAME="username"
FIX_PASSWORD="password"

# ----

PID_FILE=$HOME/vpn/.active/openconnect.pid

start() {
    echo $password | sudo openconnect --passwd-on-stdin --user=$USERNAME --pid-file=$PID_FILE --background $ADDRESS
}

stop() {
    sudo kill -- -$(cat $PID_FILE)
}

case "$1" in
    start)
        start
        ;;
    stop)
        stop
        ;;
    *)
        return 1
esac
