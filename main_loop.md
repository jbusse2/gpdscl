---
jupyter:
  jupytext:
    formats: ipynb,md
    text_representation:
      extension: .md
      format_name: markdown
      format_version: '1.2'
      jupytext_version: 1.6.0
  kernelspec:
    display_name: Python 3
    language: python
    name: python3
---

# Main Loop

## import packages

We need some Python packages, which may or may not be installed within your conda environment. Uncomment the following lines to install them. (Don't forget to comment the lines afterwards again.)

```python
# TBD
#!pip install rdflib etc.
```
Import packages:

```python
import time
from shutil import copyfile
import os
import xml.etree.ElementTree as ET
from rdflib import Graph
import owlrl

from gpdscl.src.mm2ttl import mm2turtle
```


## The main loop

We assume that you have done some edits to your mindmap.

In order to export the mindmap simply process the steps of this main loop.

### Define project name, organize backup

In this early version 0.2 we make use of ugly, but simple scriptig techniques, including global variables.


```python
# do not add the file extension '.mm' to the project name

# project = 'milk'
project = 'sandbox'
# project= 'Gewässer_Challenge_2021-01-19'

baseUri = "http://jbusse.de/ontologies/"
codeTypeList = [] # 'owl'
```

Don't change these settings:

```python
verbosity = 2
sourceDir = './mindmaps'
backupDir = './backups'
ontologyDir = './ontologies'
```

Because we will overwrite (!) the input file, we suggest to allocate time stamped backup files automatically.

```python
timestr = time.strftime("%Y-%m-%dT%H-%M-%S")
projectSourceFile = f"{sourceDir}/{project}.mm"
projectBackupDir  = f"{backupDir}/{project}"
projectBackupFile = f"{projectBackupDir}/{project}_{timestr}.mm"
projectOutDir     = f"{ontologyDir}/{project}"

if not os.path.exists(projectBackupDir):
    os.mkdir(projectBackupDir)
if not os.path.exists(projectOutDir):
    os.mkdir(projectOutDir)
    
copyfile(projectSourceFile, projectBackupFile)
print(f"backup done from {projectSourceFile} to {projectBackupFile}")
```


### Read and update `.mm`

```python
tree = ET.parse(projectSourceFile)
root = tree.getroot()
```

```python
ontologyString = mm2turtle(
    root, 
    baseUri, 
    verbosity=verbosity,
    codeTypeList = codeTypeList )

ontologyString = \
"""@prefix owl: <http://www.w3.org/2002/07/owl#> .
@prefix rdf: <http://www.w3.org/1999/02/22-rdf-syntax-ns#> .
@prefix xml: <http://www.w3.org/XML/1998/namespace> .
@prefix xsd: <http://www.w3.org/2001/XMLSchema#> .
@prefix rdfs: <http://www.w3.org/2000/01/rdf-schema#> .
@prefix skos: <http://www.w3.org/2004/02/skos/core#> .
""" + ontologyString


```

### write files

Overwrite (!) the source file:

```python
tree.write(projectSourceFile)
```

Export ontology:

```python
with open(f"{projectOutDir}/{project}.ttl", 'w') as out:
    out.write(ontologyString)
```
re-read the ttl file we have exported in the preceding step. (We read it two times in order to get two completely distinct graphs).

```python
g = Graph()
g.parse(f"{projectOutDir}/{project}.ttl", format='ttl')
print(len(g), 'triples')
```

```python
g2 = Graph()
g2.parse(f"{projectOutDir}/{project}.ttl", format='ttl')
owlrl.DeductiveClosure(owlrl.OWLRL_Semantics, axiomatic_triples = False).expand(g2)
print(len(g2), 'triples')
```

```python
g.serialize(destination  = f"{projectOutDir}/{project}_rdflib.ttl", format='turtle')
g2.serialize(destination = f"{projectOutDir}/{project}_rdflib_inferred.ttl", format='turtle')
```

```python

```

```python

```
