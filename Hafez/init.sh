#!/bin/bash

if ! [ -x "$(command -v bicon)" ]; then 
	echo "Missing Bicon! Try to install it."
else 
	bicon ir # Starts a Persian subshell
fi

