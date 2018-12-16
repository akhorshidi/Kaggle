#!/bin/bash -v

# Copyright (C) 2018 - A. KHORSHIDI <akhorshidi@moama.org>
# This file is distributed in the hope that it will be useful;
# It must be used under the terms of the GNU GPL v3.0.
# https://www.gnu.org/licenses/gpl-3.0.en.html

test -d ./Divan || mkdir Divan
test -f ./Divan/hafez.txt || wget -P ./Divan/ https://raw.githubusercontent.com/akhorshidi/Kaggle/master/Hafez/hafez.txt
test -f ./Divan/plot.in || wget -P ./Divan/ https://raw.githubusercontent.com/akhorshidi/Kaggle/master/Hafez/plot.in
#chmod +x ./hafez.sh ./init.sh

# Dispaly the first 5 lines of the data file ignoring the first two one
cat ./Divan/hafez.txt | head -5 | tail -n +2
# Count the number of Ghazals using grep and wc -l
cat ./Divan/hafez.txt | grep -E '[۰-۹]{1,3}$' | wc -l
# Count the number of Ghazals using awk
cat ./Divan/hafez.txt | awk 'BEGIN {FS="\n"} /[۰-۹]+$/ {print $1}' | awk 'END {print NR}'
# List the Top 20 words used in Divan-e-Hafez using sed and other text filters
#sed 's/\s/\n/g' splits all spaces into newlines
#sed '/^$/d' deletes all blank lines
#sed 's///g' strips multiple sapces to one
#sed '/[0-9]$/d' deletes lines end with digits
sed -e '/[۰-۹]\+$/d' -e 's/ \+/ /g' -e '/^$/d' -e 's/ /\'$'\n/g' < ./Divan/hafez.txt | sort | uniq -c | sort -nr > ./Divan/words.out
cat ./Divan/words.out | head -20
cat ./Divan/words.out | head -20 > ./Divan/top20.out
#Extract the frequncy of the word حافظ and عشق 
cat ./Divan/words.out | grep حافظ 
#Total number of the all forms of the  word of the word حافظ 
cat ./Divan/words.out | grep حافظ | awk '{sum += $1} END{print sum}'
cat ./Divan/words.out | grep عشق 
#And for the word عشق
cat ./Divan/words.out | grep عشق | awk '{sum += $1} END{print sum}' 
#Write a function to display a specific Ghazal 
function printGhazal(){
cat $1 | awk "/$2/{flag=1; next} /$3/{flag=0} flag"
#cat $1 | sed -n "/$2/,/$3/p"
}
printGhazal ./Divan/hafez.txt ۴۹۵ ۴۹۶
#Count the most frequent words for a Ghazal
printGhazal ./Divan/hafez.txt ۴۹۵ ۴۹۶ | sed -e '/^$/d' -e 's/ /\'$'\n/g' | sort | uniq -c | sort -nr | head -10
printGhazal ./Divan/hafez.txt ۴۹۵ ۴۹۶ | sed -e '/^$/d' -e 's/ /\'$'\n/g' | sort | uniq -c | sort -nr | head -10 > ./Divan/top10.out
#Plot histograms
gnuplot ./Divan/plot.in


