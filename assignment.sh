#!/bin/bash

FILE=$1
WORD_COUNT=$(wc -w $FILE |cut -d " " -f1)
LINE_COUNT=$(wc -l $FILE |cut -d " " -f1)
CHAR_COUNT=$(wc -c $FILE |cut -d " " -f1)
EACH_WORD=$(tr -cs '[:alnum:]' '[\n*]' < $FILE | sort | uniq -c | sort -nr | head -n 5)
echo "Word count in file $FILE is:: $WORD_COUNT"
echo "Line count in file $FILE is:: $LINE_COUNT"
echo "Character count in file $FILE is:: $CHAR_COUNT"
echo "Occurrence of each word & Top 5 words:: $EACH_WORD"