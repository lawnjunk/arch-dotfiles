#!/usr/bin/env bash

DOTDOTPATHSCONF=$HOME/.dotdot.conf

if [ ! -f $DOTDOTPATHSCONF ]; then 
  echo "Creating $HOME/.dotdot.conf"
  touch $DOTDOTPATHSCONF
fi

# setup colors
echo "\$1: $1 \$2: $2 \$3: $3"

# flags 
# --gather -g
# --plant -p
# --add -a
# --delete -d

[ $# -lt 1 ] && exit -1  


if [ $1 = "--gather" ] || [ $1 = "-g" ]; then 
  echo -e "ENTER GATHER SUBROUTINE"
fi 

if [ $1 = "--plant" ] || [ $1 = "-p" ]; then 
  echo "ENTER PLANT SUBROUTINE"
fi 

if [ $1 = "--add" ] || [ $1 = "-a" ]; then 
  echo "ENTER ADD SUBROUTINE"
  #$1 -a $2 name $3 path
  
  echo "$2=$3" >> $DOTDOTPATHSCONF
fi 

if [ $1 = "--delete" ] || [ $1 = "-d" ]; then 
  echo "ENTER DELETE SUBROUTINE"
fi 


#cat $configpathconf|  while read line; do 
  #key=$(echo $line | cut -d "=" -f 1)
  #value=$(echo $line | cut -d "=" -f 2)

  #handle $key $value
  ##echo "key: $key"
  ##echo "value: $value"
#done
