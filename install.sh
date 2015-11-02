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
# --list -l

getAbsolutePath(){
  [[ -d $1 ]] && { cd "$1"; echo "$(pwd -P)"; } || 
  { cd "$(dirname "$1")"; echo "$(pwd -P)/$(basename "$1")"; }
}

function fexists {
  if [ $# -eq 0 ] ; then
    echo "file path required"
    exit -1 
  fi

  if [ ! -e $1 ]; then 
    echo "$UERROR"
    echo -e "\tfile not found at $1"
    exit -1
  fi
}

function notEmptyString(){  
  if [ $# -ne 2 ] || [ -z $1 ]; then 
    echo -e "$UERROR"
    echo -e "\t$1 may not be empty"
    exit -1
  fi
}

[ $# -lt 1 ] && exit -1  

if [ $1 = "--gather" ] || [ $1 = "-g" ]; then 
  echo -e "ENTER GATHER SUBROUTINE"
fi 

if [ $1 = "--plant" ] || [ $1 = "-p" ]; then 
  echo "ENTER PLANT SUBROUTINE"
fi 

if [ $1 = "--add" ] || [ $1 = "-a" ]; then 
  #$1 -a $2 name $3 path
  UERROR="USAGE ERROR: --add [key] [./file/path]"
  echo "ENTER ADD SUBROUTINE"

  # check num args = 3
  if [ $# -ne 3 ]; then 
    echo $UERROR
    exit -1
  fi

  # check key != 
  dotkeyname=$2
  notEmptyString $dotkeyname "[key]"

  dotconfpath=$3
  notEmptyString $dotconfpath "[./file/path]"
  abspath=$(getAbsolutePath $dotconfpath)
  fexists $abspath 

  abspath=$(echo $abspath | sed -e "s:$HOME:\$HOME:")

  echo "$dotkeyname=$abspath" >> $DOTDOTPATHSCONF
  echo "adding PATH $abspath for key $dotkeyname"
fi 

if [ $1 = "--delete" ] || [ $1 = "-d" ]; then 
  echo "ENTER DELETE SUBROUTINE"
fi 

if [ $1 = "--list" ] || [ $1 = "-l" ]; then 
  echo "ENTER DELETE SUBROUTINE"
  cat $DOTDOTPATHSCONF
fi 


#cat $configpathconf|  while read line; do 
  #key=$(echo $line | cut -d "=" -f 1)
  #value=$(echo $line | cut -d "=" -f 2)

  #handle $key $value
  ##echo "key: $key"
  ##echo "value: $value"
#done
