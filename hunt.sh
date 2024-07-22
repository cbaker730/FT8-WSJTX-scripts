#!/bin/bash

# Check if the correct number of arguments is provided
if [ "$#" -ne 1 ]; then
    echo "Usage: $0 <search_term>"
    exit 1
fi

# Assign command line arguments to variables
searchTerm=$1
fileName='/path/to/ALL.TXT'

# Check if the file exists
if [[ -f "$fileName" ]]; then
    # Use grep to search for the term in the file
    grep "$searchTerm" "$fileName"
else
    echo "File not found!"
fi
