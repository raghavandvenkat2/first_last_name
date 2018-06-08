#!/bin/bash
echo $(awk -F: '{print $1}' <<< `head -1 /tmp/name.txt`)
