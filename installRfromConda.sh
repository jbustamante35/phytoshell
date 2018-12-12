#!/bin/bash
set -e

<<<<<<< HEAD
set -e

=======
>>>>>>> 2874e14fc44e2714b17ba29734dabfe0bdde62e3
$HOME/anaconda3/bin/conda install -y -c r r-base && $HOME/anaconda3/bin/conda install -y -c r r

# Figure out if this is needed for 18.04 but not 16.04
#ln -s /lib/x86_64-linux-gnu/libreadline.so.7 /lib/x86_64-linux-gnu/libreadline.so.6
