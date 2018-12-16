#!/bin/bash

# Copyright (C) 2018 - A. KHORSHIDI <akhorshidi@moama.org>
# This file is distributed in the hope that it will be useful;
# It must be used under the terms of the GNU GPL v3.0.
# https://www.gnu.org/licenses/gpl-3.0.en.html

if ! [ -x "$(command -v bicon)" ]; then 
	echo "Missing Bicon! Try to install it."
else 
	bicon ir # Starts a Persian subshell
fi

