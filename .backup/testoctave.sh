#!/bin/bash

folder=~/dockerData/phytoshell
lang=langtest
script=DEwrapper.m

fin=$folder/$lang/$script
echo "fin: $fin"

#cmd=$(octave --eval "run('$fin')")
cmd="octave --eval \"run('$fin')\""
echo "cmd: $cmd"

run="eval $cmd"
echo "run: $run"

$run $@
