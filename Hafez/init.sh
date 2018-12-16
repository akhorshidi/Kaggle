#!/bin/bash

#test -d ./HafezAnalysis1 || mkdir HafezAnalysis1
#test -f ./HafezAnalysis1/hafez.txt || wget -P ./HafezAnalysis1/ www.cs.cmu.edu/~nsharifr/hafez.txt
#chmod +x ./hafez.sh ./init.sh

if ! [ -x "$(command -v bicon)" ]; then 
	echo "Missing Bicon! Try to install it."
else 
	bicon ir # Starts a Persian subshell
fi

