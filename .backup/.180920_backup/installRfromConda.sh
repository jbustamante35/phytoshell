#!/bin/bash
# This script is made for Ubuntu 18.04, where R 4.2.2 depends on libreadlin.so.6, but only
# libreadline.so.7 is installed in Ubuntu 18.04. This is a hack that just sets a 
# soft link to have ver7 point to a renamed ver6 

/yes/bin/conda install -y -c r r-base && /yes/bin/conda install -y -c r r
ln -s /lib/x86_64-linux-gnu/libreadline.so.7 /lib/x86_64-linux-gnu/libreadline.so.6
