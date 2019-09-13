Bootstrap: docker
From: ubuntu:16.04

IncludeCmd: yes

%labels
    AUTHOR icaoberg
    EMAIL icaoberg@alumni.cmu.edu
    WEBSITE http://linus.cbd.cs.cmu.edu

%runscript
    exec /bin/bash "$@"

%post
    /usr/bin/apt-get update && apt-get install -y --no-install-recommends apt-utils
    /usr/bin/apt-get update --fix-missing
    /usr/bin/apt-get install -y curl git wget

    wget -nc https://downloads.openmicroscopy.org/bio-formats/6.2.1/artifacts/bftools.zip
    mkdir ~/bin
    unzip bftools.zip -d ~/bin

    if [ ! -d /images ]; then mkdir /images; fi
    if [ ! -d /projects ]; then mkdir /projects; fi
    if [ ! -d /containers ]; then mkdir /containers; fi
    if [ ! -d /share ]; then mkdir /share; fi
    if [ ! -d /scratch ]; then mkdir /scratch; fi
    if [ ! -d /webservers/pfenningweb ]; then mkdir -p /webservers/pfenningweb; fi

####################################################################################
%appenv showinf
    APP=~/bin/showinf
    export APP

%apphelp showinf
    Prints information about a given image file to the console, and displays the image itself in the Bio-Formats image viewer (see Displaying images and metadata for more information).

%apprun showinf
    showinf "$@"
