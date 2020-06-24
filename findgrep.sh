#!/bin/bash

pattern=$1
directory=$2
name=$3

if [ -z "$directory" ]; then
	directory='.'
fi
if [ -z "$name" ]; then
	name='*'
fi
find "$directory"  -type f "$name" -print0 | xargs -0 grep -nH "$pattern"
