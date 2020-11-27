#!/bin/bash
file=$1
echo -e "\e[1;31mA simple git pushing script\e[m"
if [[ $file == '' ]]
then
	echo "Usage: ./script fileName"
elif [[ ! -f "$file" ]]
then
	echo "File doesn't exist"
fi
git add $file # add file to stage
git status    # review the status
read -p "Type in the commit message: "
git commit -m "${REPLY}"
unset REPLY #unset the value of REPLY
git push -u origin master #push to master branch
