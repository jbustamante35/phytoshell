#!/bin/bash
# Parse through config.json file to extract arguments
# Arguments are extracted in the following order:
#   arguments: [
#        "verbosity",
#        "user_codebase",
#        "lang_codebase_application",
#        "input_data"
#    ]

# Concatenate new lines --> extract between '[' and ']' --> remove '"'
fin=$1
str=$(echo $fin | tr "\n" " " | cut -f 2 -d [ | cut -f 1 -d ] | tr -d "\"" )

echo $str
