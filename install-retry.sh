#!/bin/bash

RETRIES=5

for i in $(seq 1 $RETRIES); do
    apt install -y "$@" && break || {
        echo "Failed, retrying... ($i)"
        sleep 5
    }
done