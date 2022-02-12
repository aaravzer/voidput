#!/bin/sh
echo "
#   _   _ _____ _________________ _   _ _____
#  | | | |  _  |_   _|  _  \ ___ \ | | |_   _|
#  | | | | | | | | | | | | | |_/ / | | | | |
#  | | | | | | | | | | | | |  __/| | | | | |
#  \ \_/ | \_/ /_| |_| |/ /| |   | |_| | | |
#   \___/ \___/ \___/|___/ \_|    \___/  \_/
#
#

  "
echo "BEWARE: This will create two text files, the output will be formatted."
curl -s "https://voidpet.com/$1" > text.txt
echo "The output will be outputed to output.txt in the current file directory"
cat text.txt | tr ',' '\n' | tr '\' ' ' | tr -d '"' | perl -p -e 's/^.*?{/{/' > output.txt
