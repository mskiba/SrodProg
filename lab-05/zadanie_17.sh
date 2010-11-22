#!/bin/bash
./genlogs.sh 3 | grep "ACTION:" | sed 's/^.*ACTION:\s\(.*\)..account.*$/\1/g;s/^\(Make\stransfer\sfor\samount\).*$/\1/g' | sort | uniq
