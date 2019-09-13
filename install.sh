#!/bin/bash

IMAGE=singularity-bioformats
DIRECTORY=~/.singularity

if [ ! -d $DIRECTORY ]; then
	mkdir $DIRECTORY
fi

if [ ! -d ~/bin ]; then
	mkdir ~/bin
fi

if [ ! -f $DIRECTORY/$(echo $IMAGE | cut -d"-" -f2).simg ]; then
	singularity pull --name $(echo $IMAGE | cut -d"-" -f2).simg shub://icaoberg/$IMAGE
	if [ ! -f $(echo $IMAGE | cut -d"-" -f2).simg ]; then
		return
	fi
	mv -v $(echo $IMAGE | cut -d"-" -f2).simg $DIRECTORY
fi

# showinf
cat << EOF > ~/bin/showinf
#!/bin/bash

singularity run --app showinf ~/.singularity/$(echo $IMAGE | cut -d"-" -f2).simg $1
EOF

chmod +x ~/bin/showinf

# ijview
cat << EOF > ~/bin/ijview
#!/bin/bash

singularity run --app ijview ~/.singularity/$(echo $IMAGE | cut -d"-" -f2).simg $1
EOF

chmod +x ~/bin/ijview

# bfconvert
cat << EOF > ~/bin/bfconvert
#!/bin/bash

singularity run --app bfconvert ~/.singularity/$(echo $IMAGE | cut -d"-" -f2).simg $1
EOF

chmod +x ~/bin/bfconvert

# formatlist
cat << EOF > ~/bin/formatlist
#!/bin/bash

singularity run --app formatlist ~/.singularity/$(echo $IMAGE | cut -d"-" -f2).simg $1
EOF

chmod +x ~/bin/formatlist

# xmlindent
cat << EOF > ~/bin/xmlindent
#!/bin/bash

singularity run --app xmlindent ~/.singularity/$(echo $IMAGE | cut -d"-" -f2).simg $1
EOF

chmod +x ~/bin/xmlindent

# xmlvalid
cat << EOF > ~/bin/xmlvalid
#!/bin/bash

singularity run --app xmlvalid ~/.singularity/$(echo $IMAGE | cut -d"-" -f2).simg $1
EOF

chmod +x ~/bin/xmlvalid

# tiffcomment
cat << EOF > ~/bin/tiffcomment
#!/bin/bash

singularity run --app tiffcomment ~/.singularity/$(echo $IMAGE | cut -d"-" -f2).simg $1
EOF

chmod +x ~/bin/tiffcomment

# domainlist
cat << EOF > ~/bin/domainlist
#!/bin/bash

singularity run --app domainlist ~/.singularity/$(echo $IMAGE | cut -d"-" -f2).simg $1
EOF

chmod +x ~/bin/domainlist

# mkfake
cat << EOF > ~/bin/mkfake
#!/bin/bash

singularity run --app mkfake ~/.singularity/$(echo $IMAGE | cut -d"-" -f2).simg $1
EOF

chmod +x ~/bin/mkfake
