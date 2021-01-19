<map version="freeplane 1.7.0">
<!--To view this file, download free mind mapping software Freeplane from http://freeplane.sourceforge.net -->
<node TEXT="sandbox" FOLDED="false" ID="ID_1723255651" CREATED="1283093380553" MODIFIED="1611056025166"><hook NAME="MapStyle">
    <properties edgeColorConfiguration="#808080ff,#808080ff,#808080ff,#808080ff,#808080ff" fit_to_viewport="false" show_note_icons="false"/>

<map_styles>
<stylenode LOCALIZED_TEXT="styles.root_node" STYLE="oval" UNIFORM_SHAPE="true" VGAP_QUANTITY="24.0 pt">
<font SIZE="24"/>
<stylenode LOCALIZED_TEXT="styles.predefined" POSITION="right" STYLE="bubble">
<stylenode LOCALIZED_TEXT="default" MAX_WIDTH="600.0 px" COLOR="#000000" STYLE="as_parent">
<font NAME="SansSerif" SIZE="10" BOLD="false" ITALIC="false"/>
</stylenode>
<stylenode LOCALIZED_TEXT="defaultstyle.details"/>
<stylenode LOCALIZED_TEXT="defaultstyle.attributes">
<font SIZE="9"/>
</stylenode>
<stylenode LOCALIZED_TEXT="defaultstyle.note"/>
<stylenode LOCALIZED_TEXT="defaultstyle.floating">
<edge STYLE="hide_edge"/>
<cloud COLOR="#f0f0f0" SHAPE="ROUND_RECT"/>
</stylenode>
</stylenode>
<stylenode LOCALIZED_TEXT="styles.user-defined" POSITION="right" STYLE="bubble">
<stylenode LOCALIZED_TEXT="styles.topic" COLOR="#18898b" STYLE="fork">
<font NAME="Liberation Sans" SIZE="10" BOLD="true"/>
</stylenode>
<stylenode LOCALIZED_TEXT="styles.subtopic" COLOR="#cc3300" STYLE="fork">
<font NAME="Liberation Sans" SIZE="10" BOLD="true"/>
</stylenode>
<stylenode LOCALIZED_TEXT="styles.subsubtopic" COLOR="#669900">
<font NAME="Liberation Sans" SIZE="10" BOLD="true"/>
</stylenode>
<stylenode LOCALIZED_TEXT="styles.important">
<icon BUILTIN="yes"/>
</stylenode>
</stylenode>
<stylenode LOCALIZED_TEXT="styles.AutomaticLayout" POSITION="right" STYLE="bubble">
<stylenode LOCALIZED_TEXT="AutomaticLayout.level.root" COLOR="#000000">
<font SIZE="18"/>
</stylenode>
<stylenode LOCALIZED_TEXT="AutomaticLayout.level,1" COLOR="#0033ff">
<font SIZE="16"/>
</stylenode>
<stylenode LOCALIZED_TEXT="AutomaticLayout.level,2" COLOR="#00b439">
<font SIZE="14"/>
</stylenode>
<stylenode LOCALIZED_TEXT="AutomaticLayout.level,3" COLOR="#990000">
<font SIZE="12"/>
</stylenode>
<stylenode LOCALIZED_TEXT="AutomaticLayout.level,4" COLOR="#111111">
<font SIZE="10"/>
</stylenode>
</stylenode>
</stylenode>
</map_styles>
</hook>
<hook NAME="AutomaticEdgeColor" COUNTER="12" RULE="ON_BRANCH_CREATION"/>
<edge COLOR="#cccccc"/>
<node TEXT="Feel free to use this mindmap&#xa;as a sandbox to explore gpdscl" POSITION="right" ID="ID_931416146" CREATED="1611058432599" MODIFIED="1611058485641">
<edge COLOR="#808080"/>
<node TEXT="ONTOLOGY sandbox" ID="ID_685648358" CREATED="1611056026207" MODIFIED="1611058432681" BACKGROUND_COLOR="#ffffff" STYLE="fork">
<font ITALIC="true"/>
<richcontent TYPE="NOTE">

<html><body><pre>
# ONTOLOGY, predicate        ID_685648358 2021-01-19 11:34:18

@prefix : &lt;http://jbusse.de/ontology/mm2owl#&gt; .</pre></body></html>
</richcontent>
<node TEXT="Gew&#xe4;sser" ID="ID_1936719561" CREATED="1610643571316" MODIFIED="1611056026249" BACKGROUND_COLOR="#ffffff" STYLE="fork">
<font BOLD="true"/>
<richcontent TYPE="NOTE">

<html><body><pre>
# ONTOLOGY, object        ID_1936719561 2021-01-19 11:33:46

:Gew&#228;sser a owl:Class.</pre></body></html>
</richcontent>
<node TEXT="BY Trophiestufe" ID="ID_1449600205" CREATED="1610643564876" MODIFIED="1610643681875" BACKGROUND_COLOR="#ffffff" STYLE="fork">
<font ITALIC="true"/>
<edge COLOR="#cccccc"/>
<richcontent TYPE="NOTE">

<html><body><pre>
# BY, predicate        ID_1449600205 2021-01-14 17:01:21

:Trophiestufe a owl:ObjectProperty .</pre></body></html>
</richcontent>
<node TEXT="_" ID="ID_1260890827" CREATED="1610643564877" MODIFIED="1610714753134" BACKGROUND_COLOR="#ffffff" STYLE="fork">
<font BOLD="true"/>
<edge COLOR="#cccccc"/>
<richcontent TYPE="NOTE">

<html><body><pre>
# BY, object        ID_1260890827 2021-01-15 12:45:53

:ID_1260890827 a owl:Class ;
            rdfs:subClassOf :Gew&#228;sser .</pre></body></html>
</richcontent>
<node TEXT="SOME  oligotroph" ID="ID_1974595102" CREATED="1610643564877" MODIFIED="1610643681877" BACKGROUND_COLOR="#ffffff" STYLE="fork">
<font ITALIC="true"/>
<edge COLOR="#cccccc"/>
<richcontent TYPE="NOTE">

<html><body><pre>
# SOME, predicate        ID_1974595102 2021-01-14 17:01:21

:SOME_:Trophiestufe_:oligotroph a owl:Class ;
        owl:equivalentClass [ a owl:Restriction ;
            owl:onProperty :Trophiestufe ;
            owl:someValuesFrom :oligotroph ] .

    :Gew&#228;sser_AND_:SOME_:Trophiestufe_:oligotroph a owl:Class ;
        rdfs:subClassOf :ID_1260890827 ;
        owl:equivalentClass [ a owl:Class ;
            owl:intersectionOf ( :Gew&#228;sser :SOME_:Trophiestufe_:oligotroph ) ] .

    # owl 2 punning
    :oligotroph a owl:Class ;
        rdfs:subClassOf :Trophiestufe .
        
    :oligotroph rdf:type owl:NamedIndividual ;
        a :oligotroph .</pre></body></html>
</richcontent>
</node>
</node>
<node TEXT="_" ID="ID_440590526" CREATED="1610643564877" MODIFIED="1610714753134" BACKGROUND_COLOR="#ffffff" STYLE="fork">
<font BOLD="true"/>
<edge COLOR="#cccccc"/>
<richcontent TYPE="NOTE">

<html><body><pre>
# BY, object        ID_440590526 2021-01-15 12:45:53

:ID_440590526 a owl:Class ;
            rdfs:subClassOf :Gew&#228;sser .</pre></body></html>
</richcontent>
<node TEXT="SOME mesotroph" ID="ID_825688094" CREATED="1610643564877" MODIFIED="1610643681878" BACKGROUND_COLOR="#ffffff" STYLE="fork">
<font ITALIC="true"/>
<edge COLOR="#cccccc"/>
<richcontent TYPE="NOTE">

<html><body><pre>
# SOME, predicate        ID_825688094 2021-01-14 17:01:21

:SOME_:Trophiestufe_:mesotroph a owl:Class ;
        owl:equivalentClass [ a owl:Restriction ;
            owl:onProperty :Trophiestufe ;
            owl:someValuesFrom :mesotroph ] .

    :Gew&#228;sser_AND_:SOME_:Trophiestufe_:mesotroph a owl:Class ;
        rdfs:subClassOf :ID_440590526 ;
        owl:equivalentClass [ a owl:Class ;
            owl:intersectionOf ( :Gew&#228;sser :SOME_:Trophiestufe_:mesotroph ) ] .

    # owl 2 punning
    :mesotroph a owl:Class ;
        rdfs:subClassOf :Trophiestufe .
        
    :mesotroph rdf:type owl:NamedIndividual ;
        a :mesotroph .</pre></body></html>
</richcontent>
</node>
</node>
<node TEXT="_" ID="ID_340097028" CREATED="1610643564877" MODIFIED="1610714753135" BACKGROUND_COLOR="#ffffff" STYLE="fork">
<font BOLD="true"/>
<edge COLOR="#cccccc"/>
<richcontent TYPE="NOTE">

<html><body><pre>
# BY, object        ID_340097028 2021-01-15 12:45:53

:ID_340097028 a owl:Class ;
            rdfs:subClassOf :Gew&#228;sser .</pre></body></html>
</richcontent>
<node TEXT="SOME eutroph" ID="ID_1417244006" CREATED="1610643564877" MODIFIED="1610643681879" BACKGROUND_COLOR="#ffffff" STYLE="fork">
<font ITALIC="true"/>
<edge COLOR="#cccccc"/>
<richcontent TYPE="NOTE">

<html><body><pre>
# SOME, predicate        ID_1417244006 2021-01-14 17:01:21

:SOME_:Trophiestufe_:eutroph a owl:Class ;
        owl:equivalentClass [ a owl:Restriction ;
            owl:onProperty :Trophiestufe ;
            owl:someValuesFrom :eutroph ] .

    :Gew&#228;sser_AND_:SOME_:Trophiestufe_:eutroph a owl:Class ;
        rdfs:subClassOf :ID_340097028 ;
        owl:equivalentClass [ a owl:Class ;
            owl:intersectionOf ( :Gew&#228;sser :SOME_:Trophiestufe_:eutroph ) ] .

    # owl 2 punning
    :eutroph a owl:Class ;
        rdfs:subClassOf :Trophiestufe .
        
    :eutroph rdf:type owl:NamedIndividual ;
        a :eutroph .</pre></body></html>
</richcontent>
</node>
</node>
<node TEXT="_" ID="ID_1784703466" CREATED="1610643564877" MODIFIED="1610714753135" BACKGROUND_COLOR="#ffffff" STYLE="fork">
<font BOLD="true"/>
<edge COLOR="#cccccc"/>
<richcontent TYPE="NOTE">

<html><body><pre>
# BY, object        ID_1784703466 2021-01-15 12:45:53

:ID_1784703466 a owl:Class ;
            rdfs:subClassOf :Gew&#228;sser .</pre></body></html>
</richcontent>
<node TEXT="SOME hypertroph" ID="ID_399418016" CREATED="1610643564877" MODIFIED="1610643681880" BACKGROUND_COLOR="#ffffff" STYLE="fork">
<font ITALIC="true"/>
<edge COLOR="#cccccc"/>
<richcontent TYPE="NOTE">

<html><body><pre>
# SOME, predicate        ID_399418016 2021-01-14 17:01:21

:SOME_:Trophiestufe_:hypertroph a owl:Class ;
        owl:equivalentClass [ a owl:Restriction ;
            owl:onProperty :Trophiestufe ;
            owl:someValuesFrom :hypertroph ] .

    :Gew&#228;sser_AND_:SOME_:Trophiestufe_:hypertroph a owl:Class ;
        rdfs:subClassOf :ID_1784703466 ;
        owl:equivalentClass [ a owl:Class ;
            owl:intersectionOf ( :Gew&#228;sser :SOME_:Trophiestufe_:hypertroph ) ] .

    # owl 2 punning
    :hypertroph a owl:Class ;
        rdfs:subClassOf :Trophiestufe .
        
    :hypertroph rdf:type owl:NamedIndividual ;
        a :hypertroph .</pre></body></html>
</richcontent>
</node>
</node>
</node>
</node>
</node>
</node>
</node>
</map>
