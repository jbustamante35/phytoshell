#!/bin/bash

# Parse iRODS input file to get ticket and data 
var=$1
var=$(echo ${var:0:1})

case $var in
'#')
        ;;

*)
        ticket=$(echo $1 | cut -f 1 -d ,)
        source=$(echo $1 | cut -f 2 -d ,)
        printf "Using ticket ${ticket} to place ${source} into ${2}\n"
        iget -v -t $ticket -r $source $2
        ;;
esac

