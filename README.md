# bioformats
[![Hosted](https://img.shields.io/badge/hosted-sylabs.io-green.svg)](https://cloud.sylabs.io/library/icaoberg/default/bioformats)
![Release](https://img.shields.io/badge/release-v6.3.1-green.svg)
[![Build Status](https://travis-ci.org/icaoberg/singularity-bioformats.svg?branch=master)](https://travis-ci.org/icaoberg/singularity-bioformats)
[![GitHub issues](https://img.shields.io/github/issues/icaoberg/singularity-bioformats.svg)](https://github.com/icaoberg/singularity-bioformats/issues)
[![GitHub forks](https://img.shields.io/github/forks/icaoberg/singularity-bioformats.svg)](https://github.com/icaoberg/singularity-bioformats/network)
[![GitHub stars](https://img.shields.io/github/stars/icaoberg/singularity-bioformats.svg)](https://github.com/icaoberg/singularity-bioformats/stargazers)
[![GitHub license](https://img.shields.io/badge/license-GPLv3-blue.svg)](https://www.gnu.org/licenses/quick-guide-gplv3.en.html)

![Logo](https://www-legacy.openmicroscopy.org/site/support/ome-artwork/bio-formats-logos/bio-formats-logo-800.png)

Singularity recipe for [bio-formats](https://www.openmicroscopy.org/bio-formats/).

* `showinf`. Prints information about a given image file to the console, and displays the image itself in the Bio-Formats image viewer (see Displaying images and metadata for more information).

* `ijview`. Displays the given image file in ImageJ using the Bio-Formats Importer plugin. See Display file in ImageJ for details.

* `bfconvert`. Converts an image file from one format to another. Bio-Formats must support writing to the output file (see Converting a file to different format for more information).

* `formatlist`. Displays a list of supported file formats in HTML, plaintext or XML. See List supported file formats for details.

* `xmlindent`. A simple XML prettifier similar to xmllint --format but more robust in that it attempts to produce output regardless of syntax errors in the XML. See Format XML data for details.

* `xmlvalid`. A command-line XML validation tool, useful for checking an OME-XML document for compliance with the OME-XML schema. See Validating XML in an OME-TIFF for details.

* `tiffcomment`. Dumps the comment from the given TIFF file’s first IFD entry; useful for examining the OME-XML block in an OME-TIFF file (also see Editing XML in an OME-TIFF).

* `domainlist`. Displays a list of imaging domains and the supported formats associated with each domain. See List formats by domain for more information.

* `mkfake`. Creates a “fake” high-content screen with configurable dimensions. This is useful for testing how HCS metadata is handled, without requiring real image data from an acquired screen. See Create a high-content screen for testing for more information.

To make this image even more awesome I included [ffmpeg](https://ffmpeg.org/) and [ImageMagick](https://imagemagick.org/index.php).

## Pre-requisites

* [Singularity v3.5.+](https://sylabs.io/docs/).

## Building the image using the recipe

### To build the image locally
Run the script `build.sh` to build image locally.

```
bash ./build.sh
```

### To build the image remotely remotely
Run the script `rbuild.sh` to build image remotely.

```
bash ./rbuild.sh
```

You will need to edit the script above to match your account on [SyLabs.io](https://sylabs.io/).

### Pulling from the repository
If you have the client installed and cannot build the image locally nor remotely, simply run

```
singularity pull --arch amd64 library://icaoberg/default/bioformats:v6.3.1
```

## Disclaimer

[![Wold you buy me some coffee?](https://www.buymeacoffee.com/assets/img/custom_images/orange_img.png)](https://www.buymeacoffee.com/icaoberg)

I am nothing but a humble programmer creating the container for these wonderful apps. To meet the amazing team behind Bio-Formats click [here](https://www.openmicroscopy.org/teams/).

---
[![CBD](http://www.cbd.cmu.edu/wp-content/uploads/2017/07/wordpress-default.png)](http://www.cbd.cmu.edu)

Copyleft © 2019-2020 [icaoberg](http://www.andrew.cmu.edu/~icaoberg) at the [Computational Biology Department](http://www.cbd.cmu.edu) in [Carnegie Mellon University](http://www.cmu.edu)
