#!/bin/bash

source=/loadingdock/userdata
while IFS='' read -r line || [[ -n "$line" ]]; do
        bash evalTicket.sh $line $source
done < "$1"


