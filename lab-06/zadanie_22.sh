#!/bin/bash
for FILE in *; do
	echo "$FILE": `head -1 "$FILE"`
done
