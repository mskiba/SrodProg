#!/bin/bash
for ITEM in *; do
	FILE=$(file "$ITEM" | sed 's/^.*: //')
	if [ "$FILE" = "Bourne-Again shell script text executable" ]; then
		echo "$ITEM"
	fi
done
