#!/bin/bash

if [[ -n "$KEY_PATH" ]]; then
    if [[ -n "$1" ]] && [[ ! "$2" ]]; then
        ssh -t -i "$KEY_PATH" 'ubuntu@'"$1"
    fi
    if [[ -n "$1" ]] && [[ -n "$2" ]] && [[ ! "$3" ]]; then
        ssh -t -i "$KEY_PATH" 'ubuntu@'"$1" ssh -t -i new_key 'ubuntu@'"$2"
    fi
    if [[ -n "$1" ]] && [[ -n "$2" ]] && [[ -n "$3" ]]; then
        ssh -t -i "$KEY_PATH" 'ubuntu@'"$1" ssh -t -i new_key 'ubuntu@'"$2" "$3"
    fi
fi

if [[ ! "$KEY_PATH" ]]; then
    echo "KEY_PATH env var is expected"
    echo "Please provide bastion IP address"
    exit 5
fi
