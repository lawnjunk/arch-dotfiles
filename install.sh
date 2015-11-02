#!/usr/bin/env bash

# setup colors

# red green blue yello magenta white cyan 
blk="\0x1b[90m"
red="\0x1b[91m"
grn="\0x1b[92m"
ylw="\0x1b[93m"
blu="\0x1b[94m"
pnk="\0x1b[95m"
cyn="\0x1b[96m"
wht="\0x1b[97m"

CONFIGPATHCONF=confpath.conf


cat $CONFIGPATHCONF|  while read line; do 
  key=$(echo $line | cut -d "=" -f 1)
  value=$(echo $line | cut -d "=" -f 2)

  echo "key: $key"
  echo "value: $value"
done

