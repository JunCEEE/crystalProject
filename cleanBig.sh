#!/bin/bash
# This script is to clean up big files in a git repository
# From https://bit.ly/2kdQrl9

find . -size +40M | sed 's|^\./||g' >> .gitignore
echo "$(awk '!NF || !seen[$0]++' .gitignore)" >  .gitignore
cat .gitignore
