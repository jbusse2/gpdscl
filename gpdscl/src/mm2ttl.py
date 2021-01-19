# -*- coding: utf-8 -*-
# ---
# jupyter:
#   jupytext:
#     formats: ipynb,py:percent,md:myst
#     text_representation:
#       extension: .py
#       format_name: percent
#       format_version: '1.3'
#       jupytext_version: 1.6.0
#   kernelspec:
#     display_name: Python 3
#     language: python
#     name: python3
# ---

# %% [markdown]
# # mm2ttl
#
# This file *mindmap to turtle (mm2ttl)*: All functions to translate a gpdscl-annotated freeplane mindmap to OWL 2 in turtle format.
#
# jupytext: 
# * pair with percent script to get a .py file which can be imported
# * pair with Myst-Markdown to write docu in an external editor

# %%
import xml.etree.ElementTree as ET
from xml.etree.ElementTree import Element, SubElement
from datetime import datetime
from xml.sax.saxutils import escape, unescape, quoteattr


# %% [markdown]
# ### basic utility functions

# %%
def test_button_cancel(node):
    return 'button_cancel' in [ icon.attrib['BUILTIN'] for icon in node.findall("icon") ]


# %%
def makeIri(text, startwith=0):
    iri = escape("_".join(text.split()[startwith:]))
    if ":" not in iri:
        iri = ":" + iri
    return iri


# %%
def makeIriFromNode(node, startwith=0):
    
    if 'TEXT' in node.attrib:
        myText = node.attrib['TEXT']
    else:
        myText = 'ERROR: NO_TEXT_ATTRIBUTE'
    
    if myText == '_':
        myText = node.attrib['ID']
        
    #myText = node.attrib['TEXT'] if 'TEXT' in node.attrib else "_"
    #print(f'TEXT={myText}')
    #myText = node.attrib['ID'] if myText == '_' else myText
    
    myTextList = myText.split()
    myTag = myTextList[0]
    myIri = makeIri(myText, startwith) # escape("_".join(myTextList[startwith:]))
    return myTag, myIri


# %%
def listOfValidChildren(node):
    return [n for n in node.findall('node') if not(test_button_cancel(n))]


# %%
def listOfChildIris(node):
    return [ makeIriFromNode(n, 0) for n in listOfValidChildren(node) ]


# %%
def attachToNode(node, text, highlight):

    """add a text note to a mindmap node"""

    [ node.remove(n) for n in node.findall('font') ]
    node.attrib['BACKGROUND_COLOR'] = "#ffffff"
    node.attrib['STYLE'] = "fork"
    
    if highlight == 'predicate':
        ET.SubElement(node, 'font', {'ITALIC': 'true'})
        
    elif highlight == 'class':
        ET.SubElement(node, 'font', {'BOLD': 'true'})
        # node.attrib['STYLE'] = 'bubble'
        
    elif highlight == 'example':
        node.attrib['STYLE'] = "fork"
        # node.attrib['COLOR'] = "#666666"
        
    elif highlight == 'text':
        node.attrib['COLOR'] = "#666666"
        
    elif highlight == 'WARNING':
        node.attrib['BACKGROUND_COLOR'] = "#ff0000"
        node.attrib['COLOR'] = "#000000"
    
    if node.find('richcontent') != None:
        for r in node.findall('richcontent'):
            node.remove(r)  
    
    richcontent = ET.SubElement(node, 'richcontent', attrib = {'TYPE': 'NOTE'})
    html = ET.SubElement(richcontent, 'html')
    body = ET.SubElement(html, 'body')
    pre = ET.SubElement(body, 'pre')
    pre.text = text



# %%
def verbose(node, text, verboseLevel):

    """print mindmap node ID and ISO version of timestamp"""
    
    verbosity = 2 # TBD: use class attribute etc.
    ts = int(node.attrib['MODIFIED']) // 1000 
    tsIso = datetime.utcfromtimestamp(ts).strftime('%Y-%m-%d %H:%M:%S')
    nodeId = node.attrib['ID']
    return f"\n# {text}        {nodeId} {tsIso}\n" if verboseLevel <= verbosity else ""


# %%
def WARNING(node, elementType, *, gp, dsa, dt):
    # WARNING: 
    
    owlCode =  f"# T-box warning: unknown {elementType}: {node.get('TEXT')}"
    attachToNode(node, owlCode, 'WARNING')

    for n in listOfValidChildren(node):        
        searchForOntology(n)


# %%
def WARNING2(node, elementType, *, gp, dsa, dt):
    # WARNING: 
    
    owlCode =  f"# A-Box warning 2: unknown {elementType}: {node.get('TEXT')}"
    attachToNode(node, owlCode, 'WARNING')

    for n in listOfValidChildren(node):        
        searchForOntology(n)


# %%
def ERROR(node, text):
    print(makeIriFromNode, text)


# %% [markdown]
# ### depth first tree traversal

# %%
def searchForOntology(node):

    """walk mindmap, search for nodes with tag 'ONTOLOGY' """
    if test_button_cancel(node): return

    myTag, myIri = makeIriFromNode(node, 1)
    
    if myTag == 'ONTOLOGY':
        ONTOLOGY(node, 'predicate', gp=None, dsa=None, dt=None)
    
    else:
        for n in node.findall("node"):
            searchForOntology(n)


# %%
def walkPredicates(node, *, gp, dsa, dt):
    """walk mindmap, expect predicates"""
    for n in listOfValidChildren(node):
        myTag, myIri = makeIriFromNode(n, 1)
        template = predicateTemplates.get(myTag, WARNING)
        template(n, 'predicate', gp=gp, dsa=dsa, dt=dt)


# %%
def walkPredicateInstances(node, *, s, p, o):
    for n in listOfValidChildren(node):
        myTag, myIri = makeIriFromNode(n, 1)
        template = predicateInstanceTemplates.get(myTag, WARNING2)
        template(n, 'predicate', s=s, p=p, o=o)


# %% [markdown]
# ### T-Box templates

# %%
def ONTOLOGY(node, elementType, *, gp, dsa, dt):
    if test_button_cancel(node): return

    # ONTOLOGY source (predicate, new dsa)  # we are called here
    #   milk (object)                       # and will also process these nodes
    #     BY has_Source (predicate)         # we will call this level next 
    
    myTag, myIri = makeIriFromNode(node, 1)

    owlCode = verbose(node, "ONTOLOGY, predicate", 2)
    owlCode += f"""\n@prefix : <http://jbusse.de/ontology/mm2owl#> ."""
    attachToNode(node, owlCode, 'predicate')
        
    for n in listOfValidChildren(node):
        
        _, myIri = makeIriFromNode(n, 0)
        
        owlCode = verbose(n, "ONTOLOGY, object", 2)
        owlCode += f"""\n{myIri} a owl:Class."""
        attachToNode(n, owlCode, 'class')
        
        walkPredicates(n, gp='OntologyTopConcept', dsa='OntologyTopProperty', dt=myIri)


# %%
def BY(node, elementType, *, gp, dsa, dt):

    #    liquid (object, gp)
    #      ... (predicate, former dsa)
    #        milk (object, dt)
    #          BY source (predicate, new dsa)  # we are called here
    #            cow milk (object)             # and will also process these nodes
    #              SOME cow (predicate)        # we will call this level next 

    myTag, myIri = makeIriFromNode(node, 1)
    dsa = myIri if len(myIri) >0 else ':myTopObjectProperty'  # set dsa to new differentia specifica attribute

    owlCode = verbose(node, "BY, predicate", 2)
    owlCode += f"""\n{dsa} a owl:ObjectProperty ."""
    attachToNode(node, owlCode, 'predicate')

    for n in listOfValidChildren(node):        
        _, myIri = makeIriFromNode(n, 0)
            
        owlCode = verbose(n, "BY, object", 2)
        owlCode += f"""\n{myIri} a owl:Class ;
            rdfs:subClassOf {dt} ."""
            
        attachToNode(n, owlCode, 'class')
        walkPredicates(n, gp=dt, dsa=dsa, dt=myIri)  # parameter shift here



# %%
def ISA(node, elementType, *, gp, dsa, dt):

    #    liquid (object, gp)
    #      ... (predicate, former dsa)
    #        milk (object, dt)
    #          ISA                             # we are called here
    #            cow milk (object)
    
    # myTag, myIri = makeIriFromNode(node, 1)
    # dsa = myIri if len(myIri) >0 else ':myTopObjectProperty'  # set dsa to new differentia specifica attribute

    owlCode = verbose(node, "ISA, predicate: nothing to do here", 2)
    attachToNode(node, owlCode, 'predicate')

    for n in listOfValidChildren(node):        
        _, myIri = makeIriFromNode(n, 0)
            
        owlCode = verbose(n, "ISA, object", 2)
        owlCode += f"""\n{myIri} a owl:Class ;
            rdfs:subClassOf {dt} ."""
            
        attachToNode(n, owlCode, 'class')
        walkPredicates(n, gp=dt, dsa=dsa, dt=myIri)  # parameter shift here



# %%
def SOME(node, elementType, *, gp, dsa, dt):
  
    #    liquid (object, gp)
    #      BY has_Source (predicate, dsa)
    #        cow milk (object, dt)
    #          SOME cow  (predicate, dsv)  # we are called here
       
    myTag, myIri = makeIriFromNode(node, 1)
    dsv = myIri  # differentia specifica value
    
    someClass = f":SOME_{dsa}_{dsv}"  
    # someClass = ':SOME_' + node.get('ID')
    
    andClass  = f"{gp}_AND_{someClass}"

    owlCode = verbose(node, "SOME, predicate", 2)
    owlCode += f"""\n{someClass} a owl:Class ;
        owl:equivalentClass [ a owl:Restriction ;
            owl:onProperty {dsa} ;
            owl:someValuesFrom {dsv} ] .

    {andClass} a owl:Class ;
        rdfs:subClassOf {dt} ;
        owl:equivalentClass [ a owl:Class ;
            owl:intersectionOf ( {gp} {someClass} ) ] .

    # owl 2 punning
    {dsv} a owl:Class ;
        rdfs:subClassOf {dsa} .
        
    {dsv} rdf:type owl:NamedIndividual ;
        a {dsv} ."""
        
    attachToNode(node, owlCode, 'predicate')       
    
    for n in listOfValidChildren(node):
        
        _, myIri = makeIriFromNode(n, 0)
        
        owlCode = verbose(n, "SOME, object", 2)
        owlCode += f"""\n{myIri} a owl:Class ;
            rdfs:subClassOf {dt} ."""  
        attachToNode(n, owlCode,'class')
        
        walkPredicates(n, gp=dt, dsa=dsa, dt=myIri)  # parameter shift here



# %%
def SUP(node, elementType, *, gp, dsa, dt):
  
    #    milk (gp)
    #      BY something
    #        bottled cow milk (object, dt) # superclass 1
    #          SUP (predicate)     # we are called here
    #            cow               # superclass 2
    #            bottle            # superclass 3 etc.
    
    myTag, myIri = makeIriFromNode(node, 1)
    dsv = myIri  # differentia specifica value
    
    SupClass = ':SUP_'+node.get('ID')
    superclassIRIs = " ".join([ makeIriFromNode(n,0)[1] 
                                     for n in listOfValidChildren(node) ])
    owlCode = verbose(node, f"SUP, predicate, gp=={gp}, dt=={dt}", 2)        
    owlCode += f"""\n{SupClass} a owl:Class ;
        rdfs:subClassOf {dt} ;
        owl:equivalentClass [ a owl:Class ;
            owl:intersectionOf 
                (  {superclassIRIs} ) ] ."""  # {gp}
       
    attachToNode(node, owlCode, 'predicate')       
    
    for n in listOfValidChildren(node):
        _, myIri = makeIriFromNode(n, 0)
        
        owlCode = verbose(n, "SUP, object", 2)
        owlCode += f"""\n{dt} a owl:Class ;
            rdfs:subClassOf {myIri} ."""  
        
        attachToNode(n, owlCode,'class')
        walkPredicates(n, gp=':myTopObject', dsa=':myTopDataProperty', dt=myIri)  # parameter shift here


# %%
def EX(node, elementType, *, gp, dsa, dt):

    #        milk (object, dt)
    #          EX (predicate, new dsa)  # we are called here
    #            ID_123456 (example object)      # and will also process these nodes

    owlCode = verbose(node, "EX, predicate", 2)
    attachToNode(node, owlCode,'predicate')
        
    for n in listOfValidChildren(node):        
        _, myIri = makeIriFromNode(n, 0)

        owlCode = verbose(n, "EX, object", 2)
        owlCode += f"""\n{myIri} a {dt} ."""
        
        attachToNode(n, owlCode, 'example')  
        walkPredicateInstances(n, s=None, p=None, o=myIri)


# %%
def AP(node, elementType, *, gp, dsa, dt):

    #        milk (object, dt)
    #          AP skos:definition (predicate, new )  # we are called here
    #            some text# and will also process these nodes
    
    
    myTag, myIri = makeIriFromNode(node, 1)
    ap = myIri if myIri != ':' else 'rdfs:comment' 

    owlCode = verbose(node, "AP, predicate", 2)
    owlCode += f"""\n{ap} a owl:AnnotationProperty ."""
    attachToNode(node, owlCode, 'predicate')

    for n in listOfValidChildren(node):        
        
        owlCode = verbose(n, "AP, literal", 2)
        owlCode = f"""\n{dt} {ap} {quoteattr(node.attrib['TEXT'])} ."""
        
        attachToNode(n, owlCode, 'text')
        
        # do not walkPredicates(...): We are at a dead end here. 
        # instead search for ONTOLOGY:
        
        for n2 in listOfValidChildren(n):        
            searchForOntology(n2)
        

# %%
predicateTemplates = {
  'WARNING': WARNING,
  'ONTOLOGY': ONTOLOGY,
  'BY': BY, 
  'SOME': SOME,
  'SUP': SUP,
  'EX': EX,
  'AP': AP,
  'ISA': ISA,
 #'ASI': ASI ... use SUP instead
 }


# %% [markdown]
# ### A-Box templates

# %%
def DP(node, elementType, *, s, p, o):
    
    #        milk (o object)
    #          DP hat_Fettgehalt   # we are called here
    #            1.5               # and will also process these nodes
    
    myTag, myIri = makeIriFromNode(node, 1)
    dp = myIri # TBD set default: if myIri != ':' else 'rdfs:comment' 

    owlCode = verbose(node, "DP, predicate", 2)
    owlCode += f"""\n{dp} a owl:DatatypeProperty ."""
    attachToNode(node, owlCode, 'predicate')

    for n in listOfValidChildren(node):
        
        owlCode = verbose(n, "DP, literal", 2)
        owlCode = f"""\n{o} {dp} {quoteattr(node.attrib['TEXT'])} ."""
        
        attachToNode(n, owlCode, 'text')
        
        # do not walkPredicates(...): We are at a dead end here. 
        # instead search for ONTOLOGY:
        
        for n2 in listOfValidChildren(n):        
            searchForOntology(n2)


# %%
def OP(node, elementType, *, s, p, o):
    
    #        milk_1234 (o object)
    #          OP hat_Hersteller   # we are called here
    #            Weideglück        # and will also process these nodes
    
    myTag, myIri = makeIriFromNode(node, 1)
    op = myIri # TBD set default: if myIri != ':' else 'skos:narrower' 

    owlCode = verbose(node, "OP, predicate", 2)
    owlCode += f"""\n{op} a owl:ObjectProperty ."""
    attachToNode(node, owlCode, 'predicate')

    for n in listOfValidChildren(node):        
        
        _, childIri = makeIriFromNode(n, 0)
    
        owlCode = verbose(n, "OP, literal", 2)
        owlCode = f"""\n{o} {op} {childIri} ."""
        
        attachToNode(n, owlCode, 'text')
        walkPredicateInstances(n, s=0, p=op, o=childIri)



# %%
def XE(node, elementType, *, s, p, o):

    #        ID_123456 (example object)
    #          XE (predicate, new dsa)  # we are called here
    #            milk (object, dt)      # and will also process these nodes
    
    attachToNode(node, '','predicate')
        
    for n in listOfValidChildren(node):        
        _, myIri = makeIriFromNode(n, 0)
        
        owlCode = verbose(n, "XE, object", 2)
        owlCode += f"""\n{o} a {myIri} ."""
        
        attachToNode(n, owlCode, 'class')  
        walkPredicates(n, gp=':myTopObject', dsa=':myTopObjectProperty', dt=':myTopObject')  # parameter shift here


# %%
predicateInstanceTemplates = {
    'DP': DP,
    'OP': OP,
    'XE': XE
}


# %% [markdown]
# ### generate serialization

# %%
def collectOwlEntries(owlEntries, node):
    if test_button_cancel(node): return
    pre = node.find('richcontent[@TYPE="NOTE"]/html/body/pre')
    if pre != None:
        myId = node.attrib['ID']
        owlEntries[myId] = pre.text
        print("collectOwlEntries:", pre.text)
    for n in node.findall('node'):
        collectOwlEntries(owlEntries, n)


# %%
def mm2turtle(node, baseUri, *, verbosity=0):
    searchForOntology(node)
    owlEntries = {}
    collectOwlEntries(owlEntries, node)
    joinedCollectedOwlEntries = "\n".join(owlEntries.values())
    ontologyString = f"""@prefix owl: <http://www.w3.org/2002/07/owl#> .
@prefix rdf: <http://www.w3.org/1999/02/22-rdf-syntax-ns#> .
@prefix xml: <http://www.w3.org/XML/1998/namespace> .
@prefix xsd: <http://www.w3.org/2001/XMLSchema#> .
@prefix rdfs: <http://www.w3.org/2000/01/rdf-schema#> .
@prefix skos: <http://www.w3.org/2004/02/skos/core#> .

@prefix : <{baseUri}#> .
@base <{baseUri}> .
<{baseUri}> rdf:type owl:Ontology .

{joinedCollectedOwlEntries}
    """
    print(f"ontologyString: {ontologyString}")
    return ontologyString
#    return owlEntries

# %%



#hookNode = root.find('.//node[hook]')
#if hookNode:
#    hook = hookNode.find('hook')
#    hookNode.remove(hook)


