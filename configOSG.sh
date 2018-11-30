#!/bin/bash

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
# If
tickets=$PWD/loadingdock/input_ticket.list
ticketParser.sh $tickets

printf "**************************************************************\n"
printf "**************************************************************\n"
printf "**************************************************************\n"
printf "*                                                            *\n"
printf "* Successfully downloaded  user data                         *\n"
printf "*                                                            *\n"
printf "**************************************************************\n"
printf "**************************************************************\n\n"

mkdir -p ~/.irods
mv $PWD/loadingdock/config.json ~/.irods/irods_environment.json
args=$(parseConfig.sh "$(< ~/.irods/irods_environment.json)")
echo "[ $args ]"
