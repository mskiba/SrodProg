#!/bin/bash
last -400 | grep pts | awk -F ' ' '{print $1}' |sort | uniq -c | sort -r | head -3
