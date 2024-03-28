#!/bin/bash
# This script takes in a URL, sends a GET request to the URL,
# and displays the body of the response (if status code is 200)
curl -sL -w "%{http_code}" -o /dev/null "$1" | 
if [ $(tail -n1) -eq 200 ]; then
    curl -sL "$1"
fi
