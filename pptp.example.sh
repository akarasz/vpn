#!/bin/bash

PROFILE_NAME="example"

start() {
    sudo pon $PROFILE_NAME
}

stop() {
    sudo poff
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
