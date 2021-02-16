# gpdscl

Genus Proximum Differentia Specifica Classification Language (GPDSCL)

*gpdscl* is a pure Python package for modelling faceted classifications with (here: freeplane-) mindmaps. 

## Versions

* Version 0.26, 2021-02-16

## Installation

Currently we suggest to work with gpdscl in a jupyter notebook within a standard anaconda or miniconda environment. (Students of jbusse may easily can install gpdscl into their personal [data science lab](http://jbusse.de/dsci-lab/).)

    cd /home/myself/my/path/to/my/private/workspace
    clone https://github.com/jbusse2/gpdscl


Files and directories included are e.g.:

* (another nested) directory `gpdscl`: the according python package, including
   * `src` contains the most importand file mm2ttl.py 
   * `examples`
*  `mindmaps`: place your own mindmaps here. Add this directory to your backup schedule.
* `backups`:  Each run of mm2ttl.py will place a time stamped backup file here by default. Delete these files regularly.
* `ontologies`: output of mm2ttl.py
* `minimal_example.ipynb`

## Getting Started

Start jupyter notebook:

    jupyter notebook start &

In jupyter move to your private workspace, then into the directory `gpdscl`.  In jupyter open the file `minimal_example.ipynb`.






