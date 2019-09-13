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
    /usr/bin/apt-get install -y unzip wget default-jre

    wget -nc https://downloads.openmicroscopy.org/bio-formats/6.2.1/artifacts/bftools.zip
    unzip bftools.zip -d /opt
    rm bftools.zip

####################################################################################
%appenv showinf
    APP=/opt/bftools/showinf
    export APP

%apphelp showinf
    /opt/bftools/showinf --help

%apprun showinf
    /opt/bftools/showinf "$@"
