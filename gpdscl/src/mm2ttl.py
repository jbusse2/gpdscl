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
# This file *mindmap to turtle (mm2ttl)* contains all functions to translate a gpdscl-annotated freeplane mindmap to OWL 2 in turtle format.
#
#
# * Johannes Busse, <http://www.jbusse.de/gpdscl>, email: jbusse at jbusse dot de
# * Version 0.24, 2021-01-19
#
# This early version of the documentation still contains text in DE. We ask for your understanding.
#
#
#
# jupytext: 
# * pair with percent script to get a .py file which can be imported
# * pair with Myst-Markdown to write jupytext-docu in an external editor

# %%
import xml.etree.ElementTree as ET
from xml.etree.ElementTree import Element, SubElement
from datetime import datetime
from xml.sax.saxutils import escape, unescape, quoteattr

# %%
classificationAxioms = False
restrictionSomeAxioms = False
owl2punning = True


# %% [markdown]
# ## Einführung (DE)
#
#
#
# GPDSCL:
# * Genus Proximus
# * Differentia Specifica
# * Clasification Language
#
# Mit der GPDSCL kann eine Klassifikation nach dem Modellierungs-Pattern [Genus proximum et differentia specifica](https://de.wikipedia.org/wiki/Genus_proximum_et_differentia_specifica) (a) anwenderfreundlich in einer Mindmap notiert und (b) in verschiedene Ontologiesprachen (insbesondere SKOS und OWL) übersetzt werden.
#
# GPDSCL ist eine domänenspezifische Sprache (DSL) und damit  eine "höhere Sprache", die "die in Abstraktion und Komplexität von der Ebene der Maschinensprachen ... entfernt ist" ([Wikipedia > Domänenspezifische Sprache](https://de.wikipedia.org/wiki/Dom%C3%A4nenspezifische_Sprache)).
#
# Notiert wird GPDSCL  im RDF-Datenmodell als ["gestreifter"](https://www.w3.org/2001/10/stripes/)  Baum, aus dem mittels eines Code-Generators eine OWL-Ontologie erzeugt werden kann.
#
# Für den Prototyp wählen wir folgende Technik:
# * Wir bauen den RDF-Graphen als Mindmap auf.
# * Für das Editieren der Mindmap verwenden wir die Open Source Software [ freeplane.org](https://www.freeplane.org/wiki/index.php/Home). Der Code-Generator dockt allerdings nicht an freeplane an, sondern wertet Dateien ausschließlich freeplane Datenformat `.mm` (ein XML-Format) aus. Damit kann jede andere Mindmap-Software verwendet werden, die das `.mm`-Format erzeugen kann.
# * Wir erzeugen OWL im Format Turtle.
#
#
# ## basic utility functions

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
# ## Depth first tree traversal
#
# Traverse the xml file of a freeplane mindmap in depth first order. If we find a node which stars with "ONTOLOGY " we start to interpret the subtree as a gpdscl annotated mindmap.

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


# %% [markdown]
# The current node is a rdf resource. Starting from here we expect the child nodes being rdf predicates.

# %%
def walkPredicates(node, *, gp, dsa, dt):
    """walk mindmap, expect predicates"""
    for n in listOfValidChildren(node):
        myTag, myIri = makeIriFromNode(n, 1)
        template = predicateTemplates.get(myTag, WARNING)
        template(n, 'predicate', gp=gp, dsa=dsa, dt=dt)


# %% [markdown]
# The current node is a rdf resource. Starting from here we expect the child nodes being rdf predicates.

# %%
def walkPredicateInstances(node, *, s, p, o):
    """walk mindmap, expect predicate instances"""
    for n in listOfValidChildren(node):
        myTag, myIri = makeIriFromNode(n, 1)
        template = predicateInstanceTemplates.get(myTag, WARNING2)
        template(n, 'predicate', s=s, p=p, o=o)


# %% [markdown]
# ## T-Box templates
#
# function parameter:
#
# * node ... an ElemTree XML node with the XML name "node"
# * element type: one of {'predicate', 'object'}
# * gp  ... genus proximum
# * dsa ... differentia specifica attribute
# * dt  ... definition term
# * dsv ... differentia specifica value
#
#
# (ontology)=
# ### ONTOLOGY

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


# %% [markdown]
# (by)=
# ### BY
#
#     Milch
#       BY hat_Quelle
#         Kuhmilch
#         Ziegenmilch
#       BY hat_Verpachung
#         Flaschenmilch
#         Tetrapack-Milch
#
# Die SKOS-Semantik ist angelehnt an <https://www.w3.org/TR/skos-primer#seccollections>:
#
#     milk (skos:Concept)
#       <milk by source animal> (skos:Collection)
#         cow milk (skos:Concept)
#         goat milk (skos:Concept)
#         buffalo milk (skos:Concept)

# %%
def BY(node, elementType, *, gp, dsa, dt):
    """
    BY: differentia specifica
    #    liquid (object, gp)
    #      ... (predicate, former dsa)
    #        milk (object, dt)
    #          BY source (predicate, new dsa)  # we are called here
    #            cow milk (object)             # and will also process these nodes
    """
    
    myTag, myIri = makeIriFromNode(node, 1)
    dsa = myIri if len(myIri) >0 else ':myTopObjectProperty'  # set dsa to new differentia specifica attribute

    owlCode = verbose(node, "BY, predicate", 2)
    owlCode += f"""\n{dsa} a owl:ObjectProperty ."""
    attachToNode(node, owlCode, 'predicate')

    for n in listOfValidChildren(node):  
        
        if n.get('TEXT') != '_':
            _, myIri = makeIriFromNode(n, 0)
        else:
            # generate a nice readable IRI
            childIriSome = [ makeIriFromNode(child, 1)[1] \
                            for child in listOfValidChildren(n)\
                            if makeIriFromNode(child, 1)[0] == 'SOME']
            print(childIriSome)
            if len(childIriSome) > 0:
                if childIriSome[0] != "":
                    myIri = f"{dt}_{dsa[1:]}_{childIriSome[0][1:]}"
                
        owlCode = verbose(n, "BY, object", 2)
        owlCode += f"""\n{myIri} a owl:Class ;
            rdfs:subClassOf {dt} ."""
            
        attachToNode(n, owlCode, 'class')
        walkPredicates(n, gp=dt, dsa=dsa, dt=myIri)  # parameter shift here


# %% [markdown]
# (isa)=
# ### ISA, Teilmenge
#
#     Tier
#       ISA
#         Kuh
#
# Semantik:
# * Jedes Ding, das Element der Menge *Kuh* ist, ist auch Element der Menge *Tier*.

# %%
def ISA(node, elementType, *, gp, dsa, dt):

    """
    ISA: subclass
    #    liquid (object, gp)
    #      ... (predicate, former dsa)
    #        milk (object, dt)
    #          ISA                             # we are called here
    #            cow milk (object)
    """
    
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


# %% [markdown]
# (some)=
# ### SOME: OWL existential restriction ∃
#
#     Milch
#       BY hat_Quelle
#         Kuhmilch
#           SOME Kuh
#
# Dieses 4-Tupel lässt sich als Pattern verstehen für ein Inferencing in zwei Richtungen.
#
# (richtung1)=
# #### Richtung 1: single Subclass -> multiple Superclasses
#
# Inferencing:
# * Schließe von Subclass (hier: Kuhmilch) auf Superclasses (hier: Kuh,  ∃ hat_Quelle.Kuh )
#
# Gegeben: Von einem Ding sei bekannt:
# * Das Ding ist ein Element der Menge Kuhmilch.
#
# Dann sind das hinreichende Angaben, um mit obiger Notation zweierlei daraus schließen zu können:
# * Dieses Ding ist auch Element der Menge Milch.
# * Dieses Ding auch Element der Menge derjenigen Dinge, die - neben möglicherweise anderen Quellen- mindestens auch eine Kuh als Quelle haben.
#
# ("Hinreichend" sind die Angaben, weil allein sie ausreichend sind, diese zwei Schlüsse zu ziehen. Wir benötigen keine zusätzlichen notwendigen weitere Angaben.)
#
# ACHTUNG: Die Notation täuscht hier etwas: Durch den Baum wird suggeriert, dass die Baum-Node `SOME Kuh` (∃ hat_Quelle.Kuh) eine Subklasse von Kuhmilch ist. Das ist *nicht* gemeint.  Tatsächlich ist obige Notation eine verdichtete Baum-Notation, die man - bezogen auf Richtung 1 - auch so notieren könnte:
#
#     Milch
#       Kuhmilch
#     ∃ hat_Quelle.Kuh
#       Kuhmilch
#
# Wichtig zu sehen ist hier, dass hier kein AND oder Ähnliches vorliegt, sondern dass hier zwei separate Subclass-Aussagen modelliert werden, die ein Reasoner unabhängig voneinander ausführen kann: Wenn bekannt ist, dass ein Ding eine Kuhmilch ist, dass lassen sich auch beide Oberklassen ("Es ist eine Milch!"; "Es kommt von der Kuh!") ableiten.
#
# Von Protege exportiert nach OWL/RDF (<http://jbusse.de/ontology/Milch>):
#
#     <!-- http://jbusse.de/ontology/Milch#Kuhmilch -->
#     
#     <owl:Class rdf:about="http://jbusse.de/ontology/Milch#Kuhmilch">
#         <rdfs:subClassOf rdf:resource="http://jbusse.de/ontology/Milch#Milch"/>
#         <rdfs:subClassOf rdf:resource="http://jbusse.de/ontology/Milch#SOME_hat_Quelle_Kuh"/>
#         <rdfs:comment>Milch, die von der Kuh kommt</rdfs:comment>
#     </owl:Class>
#
#
#     <!-- http://jbusse.de/ontology/Milch#SOME_hat_Quelle_Kuh -->
#
#     <owl:Class rdf:about="http://jbusse.de/ontology/Milch#SOME_hat_Quelle_Kuh">
#         <owl:equivalentClass>
#             <owl:Restriction>
#                 <owl:onProperty rdf:resource="http://jbusse.de/ontology/Milch#hat_Quelle"/>
#                 <owl:someValuesFrom rdf:resource="http://jbusse.de/ontology/Milch#Kuh"/>
#             </owl:Restriction>
#         </owl:equivalentClass>
#         <rdfs:subClassOf rdf:resource="http://jbusse.de/ontology/Milch#RestrictionClasses"/>
#         <rdfs:comment>Die Menge aller Dinge, die eine Kuh als Quelle haben</rdfs:comment>
#     </owl:Class>
#
#
# (richtung2)=
# #### Richtung 2: Superclass 1 AND ... Superclass n -> Subclass
#
# Inferencing:
# * Schließe aus einem AND von mehreren Superclasses (hier: Milch,  ∃ hat_Quelle.Kuh) auf eine gemeinsame Subclass (hier: Kuhmilch)
#
# Gegeben: Von einem Ding sei bekannt:
# * Das Ding ist Element der Menge Milch, und
# * das Ding ist Element der Menge derjenigen Dinge, die eine Kuh als Quelle haben.
#
# Dann *seien uns diese Information hinreichend* für den Schluss:
# * Dieses Ding ist ein Element der Menge Kuhmilch.
#
# In  DL:
#
#     Kuhmilch ⊇ AND_Class_Kuhmilch
#     AND_Class_Kuhmilch == Milch ∧ ∃ hat_Quelle.Kuh
#     
# in Mengenschreibweise:
#
#     Kuhmilch ⊇ {x | Milch(x) ∧ ∃y[hat_Quelle(x,y) ∧ Kuh(y)] }
#
#
# in First Order Logic (FOL): 
#
#     ∀x[Kuhmilch(x) ← Milch(x) ∧ ∃y[hat_Quelle(x,y) ∧ Kuh(y)]
#
# Um Richtung 2 (also solch ein Superclass --> Subclass-Inferencing) in einer Mindmap darstellen zu können, wäre ein AND hilfreich. Wir benötigen es aber nicht unbedingt explizit, sondern bauen es implizit in unser Pfad-Pattern mit der hier angegebenen  Superclasses -> Subclass-Semantik ein.
#
# In OWL verwendet man hier eine `owl:intersectionOf`. 
#
#
#     <!-- http://jbusse.de/ontology/Milch#AND_Class_Kuhmilch -->
#
#     <owl:Class rdf:about="http://jbusse.de/ontology/Milch#AND_Class_Kuhmilch">
#         <owl:equivalentClass>
#             <owl:Class>
#                 <owl:intersectionOf rdf:parseType="Collection">
#                     <rdf:Description rdf:about="http://jbusse.de/ontology/Milch#Kuh"/>
#                     <rdf:Description rdf:about="http://jbusse.de/ontology/Milch#SOME_hat_Quelle_Kuh"/>
#                 </owl:intersectionOf>
#             </owl:Class>
#         </owl:equivalentClass>
#         <rdfs:subClassOf rdf:resource="http://jbusse.de/ontology/Milch#AND_Classes"/>
#     </owl:Class>
#
#
# (vgl. auch das strukturäquivalende Beispiel aus <https://www.w3.org/TR/owl-xmlsyntax/apd-example.html#subapd-eg41>): "Without such a definition it is possible to know that white wines are wines and white, but not vice-versa. This is an important tool for categorizing individuals."
#
#
# Diskussion: Durch obige Formulierung *"seien uns diese Information hinreichend"* wollen wir (in Umkehrung von Richtung 1 (eine Subclass -> mehrere Superclasses) hier in Richtung 2 annehmen, dass die Klasse Kuhmilch durch die drei anderen Angaben im Pfad   `Milch, BY hat_Quelle, _ , SOME Kuh` hinreichend (d.h. vollständig, umfassend, ohne dass weitere notwendige Bedingungen gelten müssen) bestimmt ist.  
#
# Dies ist eine vergleichsweise starke Annahme, die in Protege extra modelliert werden muss (d.h. nicht automatisch angelegt wird, wenn man zu einer Klasse einer Restriction hinzufügt). In welchen Kontexten können wir diese Annahme unterstützen wollen, und wo stört uns solch eine Annahme eher?
#    * Um allgemeine OWL-Ontologien zu modellieren ist diese Annahme sicherlich zu stark.
#    * Um eine Mindmap-basierte Sprache zu definieren,  um gemäß dem *genus proximum, differentia specifica*-Pattern eine Facetten-Klassifikation zu notieren, dürfte diese Annahme ein ganz guter Kompromiss sein.
#    * Diskutieren: Wenn man erlaubt, dass dasselbe Konzept an verschiedenen Stellen der Ontologie stückweise defininiert wird:
#       * sind das dann verschiedene, alternative lokale Stories?
#       * oder sollten für das Richtung-2-Inferencing alle Konjunktionsglieder eingesammelt werden? Damit lässt sich das Richtung-2-Inferencing nicht mehr durch eine rein lokale Code-Generierung handhaben.
#
# #### Richtung 1 + Richtung 2
#
#
# Die hier angegebenen OWL/XML-Auszüge sind nicht falsch oder korrekt, sondern sie *definieren* die Semantik des bislang rein syntaktisch beschriebenen Teilpfades `... BY ... SOME ... `  einer Mindmap. 
#
# Es stellen sich allerdings sofort  die folgenden Fragen:
# * Wären andere Definitionen sinnvoller?
# * Wollen wir OWL verwenden, oder "reicht" und RDF(S)?
#
# Die Antwort auf diese Fragen hängt davon ab, welches Inferencing wir im Kopf haben.
#
# In der hier vorgeschlagenen Semantik für einen Teilpfad der Form Pfad   `Milch, BY hat_Quelle, Kuhmilch, SOME Kuh` wird ein Inferncing ermöglicht, mit dem ein Ding anhand seiner charakteristischen Eigenschaften vom Allgemeinen immer spezieller zum Besonderen hin klassifiziert werden kann.

# %%
def SOME(node, elementType, *, gp, dsa, dt):

    """
    SOME
    #    milk (object, gp)
    #      BY has_Source (predicate, dsa)
    #        cow milk (object, dt)         # we are called here
    #          SOME cow  (predicate, dsv)
    """
    myTag, myIri = makeIriFromNode(node, 1)
    dsv = myIri  # differentia specifica value

    # be careful: construct IRI without leading ":", attach later
    # eliminate ":" from dsa and dsv
    someClass = f"SOME_{dsa[1:]}_IS_{dsv[1:]}"  
    # alternative: someClass = 'SOME_' + node.get('ID')  
    
    andClass  = f"{gp}_AND_{someClass}"  # IRI gets the leading ":" from gp

    owlCode = verbose(node, "SOME, predicate", 2)

    if restrictionSomeAxioms:
        owlCode += f"""\n:{someClass} a owl:Class ;
        owl:equivalentClass [ a owl:Restriction ;
            owl:onProperty {dsa} ;
            owl:someValuesFrom {dsv} ] ."""

    if classificationAxioms:
        owlCode += f"""\n{andClass} a owl:Class ;
        rdfs:subClassOf {dt} ;
        owl:equivalentClass [ a owl:Class ;
            owl:intersectionOf ( {gp} :{someClass} ) ] ."""

    if owl2punning:
        owlCode += f"""\n# owl 2 punning
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


# %% [markdown]
# (all)=
# ### ALL: OWL for all restriction
#
# nicht implementiert
#
# (sup)=
# ### SUP, Super-Set, Obermenge
#
#     Tier
#       ISA
#         Hengst
#           SUP
# 	    Maskulinum
# 	    Pferd
# 	    
# Semantik wie bei ISA, nur in die andere Richtung notiert: Tier ist eine Obermenge von Kuh. (Zugegeben, das erscheint ungewohnt. Aber das ist der Tribut dafür, dass wir mit Mindmaps und Bäumen arbeiten wollen statt mit Graph-Tools. )
#
# Mit SUP lässt  sich in einer Mindmap die "untere Hälfte", genauer: der poly-hierarchische Teil einer FCA in einer Mindmap notieren.
#
# Semantik Teil 1 ("Richtung 1"), Oder-Verknüpfung von ISA und SUP wie oben beschrieben:
# * *Hengst* ist Teilmenge von *Tier* (siehe oben, ISA)
# * *Hengst* ist Teilmenge von *Maskulinum* und *Pferd* (siehe oben, SUP)
#
# Semantik Teil 2 ("Richtung 2") - und wesentliche  Design-Entscheidung in GPDSCL:
# * Wenn wir von einem Ding wissen, dass es (a) ein Tier und (b) ein Maskulinum und ein Pferd ist
# * und wir diese Information in einer Ontologie in unmittelbarer Nachbarschaft als ein ISA - SUP Quintupel notieren
# * dann mögen uns diese Informationen genügen daraus zu schließen, dass dieses Ding ein Hengst ist.
#
#
#  
# WICHTIG:
# * Die Kombination von ISA und SUP stellt in GPDSCL ein wesentliches Sprachelement dar, das die zunehmend genauere Klassierung von Beispielen anhand mehrerer Oberklassen ermöglicht.
# *  In [F-Logic](https://en.wikipedia.org/wiki/F-logic) würde man schreiben: `Hengst(X) <- Tier(X) AND Maskulinum(X) AND Pferd(X)`: *SUP ist gleichbedeutend mit konjunktiven Regeln.*

# %%
def SUP(node, elementType, *, gp, dsa, dt):

    """
    SUP: Superclass. Similar to ISA, but reverse notation order in the mindmap
    #    milk (gp)
    #      BY something
    #        bottled cow milk (object, dt) # superclass 1
    #          SUP (predicate)     # we are called here
    #            cow               # superclass 2
    #            bottle            # superclass 3 etc.
    """
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


# %% [markdown]
# (ex)=
# ### EX, Example
#
#     Kuh
#       EX
#         Elsa_12345
#             
# Semantik: 
# * *Elsa_12345* ist ein Element der Menge *Kuh*.
#
# Beispiele von Beispielen sind in RDF übrigens perfekt möglich. In der Mathematik ist diese Idee trivialerweise als Potenzmenge bekannt. Problem: In Bezug auf Inferencing verlassen wir hier die First Order Logic, unser Inferencing wird unentscheidbar.
#
#     Boeing 747
#       EX
#         Air Force One
#           EX
#             VC-25A-33A275R3
#             
# RDFS-Interpretation: 
# * Die *Air Force One* ist ein Element der Menge *Boeing 747*, und das Flugzeug mit der ID *VC-25A-33A275R3* ist ein Element der Menge *Air Force One*.
#
# In GPDSCL wollen wir keine Mengen von Mengen haben. Unklar, wie wir solche eine Modellierung übersetzen wollen.

# %%
def EX(node, elementType, *, gp, dsa, dt):

    """
    EX: example, instance of
    #        milk (object, dt)
    #          EX (predicate, new dsa)  # we are called here
    #            ID_123456 (example object)      # and will also process these nodes
    """
    owlCode = verbose(node, "EX, predicate", 2)
    attachToNode(node, owlCode,'predicate')
        
    for n in listOfValidChildren(node):        
        _, myIri = makeIriFromNode(n, 0)

        owlCode = verbose(n, "EX, object", 2)
        owlCode += f"""\n{myIri} a {dt} ."""
        
        attachToNode(n, owlCode, 'example')  
        walkPredicateInstances(n, s=None, p=None, o=myIri)


# %% [markdown]
# (ap)=
# ### AP
#
# Annotation Property

# %%
def AP(node, elementType, *, gp, dsa, dt):

    """
    AP: annotation property
    #        milk (object, dt)
    #          AP skos:definition (predicate, new )  # we are called here
    #            some text# and will also process these nodes
    """
    
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
# used by function walkPredicates()
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
# ## A-Box templates
#
# (dp)=
# ### DP
#
# Data Property

# %%
def DP(node, elementType, *, s, p, o):

    """DP: data property
    #        milk (o object)
    #          DP hat_Fettgehalt   # we are called here
    #            1.5               # and will also process these nodes
    """
    
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


# %% [markdown]
# (op)=
# ### OP
#
# Object Property

# %%
def OP(node, elementType, *, s, p, o):

    """OP: object property
    #        milk_1234 (o object)
    #          OP hat_Hersteller   # we are called here
    #            Weideglück        # and will also process these nodes
    """
    
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


# %% [markdown]
# (xe)=
# ### XE, elpmaxe
#
# EX (example), in umgekehrter Leserichtung geschrieben: EX, elpmaxe. Anwendung dort, wo ein Exemplar gleichzeitig als Element von mehreren Mengen gekennzeichnet werden soll.
#
#     Kuh
#       EX
#         Elsa_12345
#           XE
#             Femininum
#             Fleckvieh
#             
# Semantik: 
# * *Elsa_12345* ist ein Element der Menge *Kuh* (aus EX)
# * *Elsa_12345* ist außerdem ein Element der Menge *Femininum* und der Menge *Fleckvieh* (aus XE)

# %%
def XE(node, elementType, *, s, p, o):

    """XE: example, the other way round: the parent node is the example, the child nodes the respective classes.
    #        ID_123456 (example object)
    #          XE (predicate, new dsa)  # we are called here
    #            milk (object, dt)      # and will also process these nodes
    """
    attachToNode(node, '','predicate')
        
    for n in listOfValidChildren(node):        
        _, myIri = makeIriFromNode(n, 0)
        
        owlCode = verbose(n, "XE, object", 2)
        owlCode += f"""\n{o} a {myIri} ."""
        
        attachToNode(n, owlCode, 'class')  
        walkPredicates(n, gp=':myTopObject', dsa=':myTopObjectProperty', dt=':myTopObject')  # parameter shift here


# %%
# used by walkPredicateInstances()
predicateInstanceTemplates = {
    'DP': DP,
    'OP': OP,
    'XE': XE
}


# %% [markdown]
# ## Generate serialization
#
# Walk through the mindmap graph and collect all `richcontent[@TYPE="NOTE"]/html/body/pre`-elements into the dict `owlEntries`.

# %%
def collectOwlEntries(owlEntries, node):
    if test_button_cancel(node): return
    pre = node.find('richcontent[@TYPE="NOTE"]/html/body/pre')
    if pre != None:
        myId = node.attrib['ID']
        owlEntries[myId] = pre.text
        # print("collectOwlEntries:", pre.text)
    for n in node.findall('node'):
        collectOwlEntries(owlEntries, n)


# %% [markdown]
# Join the dict `owlEntries` to get a string version of the ontology.

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


