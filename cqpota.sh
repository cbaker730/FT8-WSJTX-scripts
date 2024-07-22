#!/bin/bash

RED='\033[0;31m'
GREEN='\033[0;32m'
NOCOLOR='\033[0m'

DATE=$(date -u '+%y%m%d_%H%M%S')

echo "[*] Searching for 'CQ POTA'..."
echo
echo -e $DATE "   ***************   CURRENT TIME    **************\n"

echo -e "${GREEN}"
tail -n 5000 /path/to/ALL.TXT | grep 'CQ POTA'
echo -e "${NOCOLOR}"

echo
echo -e $DATE "   ***************   CURRENT TIME    **************\n"

echo -e "${GREEN}"
tail -n 0 -f /path/to/ALL.TXT | grep 'CQ POTA'
echo -e "${NOCOLOR}"
