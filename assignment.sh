#!/bin/bash

FILE=$1
COUNT=$(wc $FILE)
echo "Word count in file $FILE is:: $COUNT"