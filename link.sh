#! /bin/sh
#
# link.sh
# Copyright (C) 2015 jayden <jayden@zhaojaydendeMacBook-Pro.local>
#
# Distributed under terms of the MIT license.
#


filepath=$(cd "$(dirname "$0")";pwd)

filelist=$(ls $filepath)

for file in $filelist
do
	if [[ -f $file && ${file##*.} != "sh" && ${file##*.} != "png" ]]
	then
		echo $(ln -s $filepath/$file $HOME/.$file)
	fi
done

