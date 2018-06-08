#!/bin/bash
value=`cat name.txt`
echo $value| awk '{split($0,fname,":")} END{print fname[1]}'
