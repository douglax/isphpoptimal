#!/bin/bash

INFILE=$1
OUTFILE=$2
KEYFILE=$3

#Check to make sure three parameters were provided

if [ $# -ne 3 ] ; then
   echo "Wrong number of args provided"
   echo "Usage: $0 InFile OutFile KeyFile"
   exit 1
fi



#Check to make sure that infile exists

if [ ! -f $INFILE ] ; then
   echo "Error... specified input file does not exist"
   exit 1
fi





echo "first arg: ${INFILE}"
echo "second arg: ${OUTFILE}"
echo "third arg: ${KEYFILE}"


