#!/bin/bash
for file in *jl.bak; do
	if [ -e "$file" ]; then 
		mv "$file" ".backups/${file%.bak}_$(date +%Y%m%d%H%M%S).bak"
	fi
done
