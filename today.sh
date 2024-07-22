#!/bin/bash

todaysDate=$(date -u '+%y%m%d')
fileName='/path/to/wsjtx_log.adi'

# Check if the file exists
if [[ -f "$fileName" ]]; then
    # Use grep to search for the term in the file
    grep "$todaysDate" "$fileName" | cut -d' ' -f1 | cut -d'>' -f2 | sort
else
    echo "File not found!"
fi
