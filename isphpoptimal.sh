#!/bin/bash

echo "THIS PROGRAM IS STILL UNFINISHED - DON'T TRY TO RUN IT UNTIL A DECENT RELEASE"


INFILE=$1
OUTFILE=$2
KEYFILE=$3

#Check to make sure three parameters were provided

if [ $# -ne 3 ] ; then
   echo "Wrong number of args provided"
   echo "Usage: $0 InFile OutFile KeyFile"
   exit 1
fi



#Check to make sure that both infile and keyfile exists

if [ ! -f $INFILE ] ; then
   echo "Error... specified input file does not exist"
   exit 1
fi

#I'm pretty sure this could have been done in a single block, I'll fix it later
if [ ! -f $KEYFILE ] ; then
   echo "Error... specified key-value file does not exist"
   exit 1
fi



echo "first arg: ${INFILE}"
echo "second arg: ${OUTFILE}"
echo "third arg: ${KEYFILE}"

#Open KEYFILE and store keys and values into an array

awk 'BEGIN {
while (getline < "'"$INFILE"'")
{
split($0,pair,"\t");
key=pair[1];
value=pair[2];

pk=key;
data=value;
nameArr[pk]=data;
}




close("'"$INFILE"'");

}'


#valor=nameArr[1]
#
echo "1 -> $data[1] "
echo "5 -> $nameArr[5] "
echo "7 -> $nameArr[7] "
echo "10 -> $nameArr[10] "





