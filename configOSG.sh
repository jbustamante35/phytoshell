#!/bin/bash

. /usr/local/bin/utils.sh

# Init input file of arguments

printf "\n**************************************************************\n"
printf "**************************************************************\n"
printf "**************************************************************\n"
printf "*                                                            *\n"
printf "* Downloading user data from iRODS                           *\n"
printf "*                                                            *\n"
printf "**************************************************************\n"
printf "**************************************************************\n"
printf "**************************************************************\n"
# Get user data from iRODS by parsing through tickets,directories file
tickets=input_ticket.list
ticketParser.sh $tickets || err_exit "unable to parse input ticket list"

printf "**************************************************************\n"
printf "**************************************************************\n"
printf "**************************************************************\n"
printf "*                                                            *\n"
printf "* Successfully downloaded  user data                         *\n"
printf "*                                                            *\n"
printf "**************************************************************\n"
printf "**************************************************************\n\n"

mkdir -p ~/.irods || err_exit "unable to create ~/.irods"
cp -p config.json ~/.irods/irods_environment.json || err_exit "unable to copy config file to ~/.irods"
args=$(parseConfig.sh "$(< ~/.irods/irods_environment.json)")
echo "[ $args ]"
