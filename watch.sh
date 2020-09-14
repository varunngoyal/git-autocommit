#!/bin/bash
path="/home/varun/WORK/HUMACi Internship all/Nextmeet Flask Test Project" # Replace this with the path to your git repository. To get path, run pwd in the directory or right click and select properties of the folder  
while true 
do
	inotifywait --recursive -qq -e attrib,create,delete,modify,delete_self,move,move_self,close_write "$path"
	printf "going inside"
	cd $path                              > /dev/null &> /dev/null
	printf "cd $path"
	git add --all                         > /dev/null &> /dev/null
	now=$(date)                           > /dev/null &> /dev/null
	git commit -m "Auto-Commit at : $now" > /dev/null &> /dev/null
	git pull                              > /dev/null &> /dev/null
	git push -u origin master             > /dev/null &> /dev/null
	printf "all git commands done"
done
