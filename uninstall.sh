#!/bin/bash

IMAGE=singularity-bioformats
DIRECTORY=~/.singularity

FILES=($DIRECTORY/$IMAGE.simg ~/bin/showinf ~/bin/ijview ~/bin/bfconvert ~/bin/formatlist ~/bin/xmlindent ~/bin/xmlvalid ~/bin/tiffcomment ~/bin/domainlist ~/bin/mkfake)

for FILE in "${FILES[@]}"
do
	echo "Removing "$FILE
	if [ -f $FILE ]; then
		rm -fv $FILE
	fi
done
