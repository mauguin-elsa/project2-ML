#!/bin/bash

# Note that this script uses GNU-style sed as gsed. On Mac OS, you are required to first https://brew.sh/
#    brew install gnu-sed
# on linux, use sed instead of gsed in the command below:
cat twitter-datasets/train_pos.txt twitter-datasets/train_neg.txt | sed "s/ /\n/g" | grep -v "^\s*$" | sort | uniq -c > vocab_full.txt
