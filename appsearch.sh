#!/bin/bash
while getopts ":hsr" opt;do
case ${opt} in
h )
echo "Usage"
echo "--------"
echo "./appsearch.sh -s      Search by a keyword"
echo "./appsearch.sh -r      Read the entire Steam library - IMPORTANT: USE THIS FIRST!"
echo "./appsearch.sh -h      Help for usage"
echo "If you ever wish to use this script, may God help your pity soul."
echo "--------"
;;
s )
filename='steamapps.txt'
x=1
echo "Keywords, please"
read gamename
while read line; do
if grep -q "$gamename" <<< "$line"; then
echo "$x. $line"
x=$((x+1))
fi
done<$filename
;;
r )
bash "writer.sh"
;;
\? ) echo "Usage: appsearch.sh [-h] [-s] [-r]"
;;
esac
done
