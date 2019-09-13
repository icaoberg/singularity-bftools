Bootstrap: docker
From: debian:latest

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
    /usr/bin/apt-get install -y unzip wget default-jre ffmpeg imagemagick

    wget -nc https://downloads.openmicroscopy.org/bio-formats/6.2.1/artifacts/bftools.zip
    unzip bftools.zip -d /opt
    rm -f bftools.zip

    wget -nc http://wsr.imagej.net/distros/linux/ij152-linux64-java8.zip
    unzip ij152-linux64-java8.zip -d /opt
    rm -f ij152-linux64-java8.zip

####################################################################################
%appenv showinf
    APP=/opt/bftools/showinf
    export APP

%apphelp showinf
    /opt/bftools/showinf --help

%apprun showinf
    /opt/bftools/showinf "$@"

####################################################################################
%appenv ijview
    APP=/opt/bftools/ijview
    export APP

%apphelp ijview
    /opt/bftools/ijview --help

%apprun ijview
    /opt/bftools/ijview "$@"

####################################################################################
%appenv bfconvert
    APP=/opt/bftools/bfconvert
    export APP

%apphelp bfconvert
    /opt/bftools/bfconvert --help

%apprun bfconvert
    /opt/bftools/bfconvert "$@"

####################################################################################
%appenv formatlist
    APP=/opt/bftools/formatlist
    export APP

%apphelp formatlist
    /opt/bftools/formatlist --help

%apprun formatlist
    /opt/bftools/formatlist "$@"

####################################################################################
%appenv xmlindent
    APP=/opt/bftools/xmlindent
    export APP

%apphelp xmlindent
    /opt/bftools/xmlindent --help

%apprun xmlindent
    /opt/bftools/xmlindent "$@"

####################################################################################
%appenv xmlvalid
    APP=/opt/bftools/xmlvalid
    export APP

%apphelp xmlvalid
    /opt/bftools/xmlvalid --help

%apprun xmlvalid
    /opt/bftools/xmlvalid "$@"

####################################################################################
%appenv tiffcomment
    APP=/opt/bftools/tiffcomment
    export APP

%apphelp tiffcomment
    /opt/bftools/tiffcomment --help

%apprun tiffcomment
    /opt/bftools/tiffcomment "$@"

####################################################################################
%appenv domainlist
    APP=/opt/bftools/domainlist
    export APP

%apphelp domainlist
    /opt/bftools/domainlist --help

%apprun domainlist
    /opt/bftools/domainlist "$@"

####################################################################################
%apphelp ffmpeg
    ffmpeg --help

%apprun ffmpeg
    ffmpeg "$@"
