<map version="freeplane 1.7.0">
<!--To view this file, download free mind mapping software Freeplane from http://freeplane.sourceforge.net -->
<node TEXT="sandbox" FOLDED="false" ID="ID_1723255651" CREATED="1283093380553" MODIFIED="1611056025166">
<edge COLOR="#cccccc"/>
<hook NAME="MapStyle">
    <properties edgeColorConfiguration="#808080ff,#ff0000ff,#0000ffff,#00ff00ff,#ff00ffff,#00ffffff,#7c0000ff,#00007cff,#007c00ff,#7c007cff,#007c7cff,#7c7c00ff" show_note_icons="false" fit_to_viewport="false"/>

<map_styles>
<stylenode LOCALIZED_TEXT="styles.root_node" STYLE="oval" UNIFORM_SHAPE="true" VGAP_QUANTITY="24.0 pt">
<font SIZE="24"/>
<stylenode LOCALIZED_TEXT="styles.predefined" POSITION="right" STYLE="bubble">
<stylenode LOCALIZED_TEXT="default" COLOR="#000000" STYLE="fork">
<font NAME="SansSerif" SIZE="10" BOLD="false" ITALIC="false"/>
</stylenode>
<stylenode LOCALIZED_TEXT="defaultstyle.details"/>
<stylenode LOCALIZED_TEXT="defaultstyle.attributes">
<font SIZE="9"/>
</stylenode>
<stylenode LOCALIZED_TEXT="defaultstyle.note" COLOR="#000000" BACKGROUND_COLOR="#ffffff" TEXT_ALIGN="LEFT"/>
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
<stylenode LOCALIZED_TEXT="AutomaticLayout.level.root" COLOR="#000000" STYLE="oval" SHAPE_HORIZONTAL_MARGIN="10.0 pt" SHAPE_VERTICAL_MARGIN="10.0 pt">
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
<stylenode LOCALIZED_TEXT="AutomaticLayout.level,5"/>
<stylenode LOCALIZED_TEXT="AutomaticLayout.level,6"/>
<stylenode LOCALIZED_TEXT="AutomaticLayout.level,7"/>
<stylenode LOCALIZED_TEXT="AutomaticLayout.level,8"/>
<stylenode LOCALIZED_TEXT="AutomaticLayout.level,9"/>
<stylenode LOCALIZED_TEXT="AutomaticLayout.level,10"/>
<stylenode LOCALIZED_TEXT="AutomaticLayout.level,11"/>
</stylenode>
</stylenode>
</map_styles>
</hook>
<richcontent TYPE="NOTE">

<html><body /></html>
</richcontent>
<node TEXT="Feel free to use this mindmap&#xa;as a sandbox to explore gpdscl" POSITION="right" ID="ID_931416146" CREATED="1611058432599" MODIFIED="1611139160494">
<edge COLOR="#808080"/>
<richcontent TYPE="NOTE">

<html><body /></html>
</richcontent>
<node TEXT="ONTOLOGY sandbox" ID="ID_685648358" CREATED="1611056026207" MODIFIED="1611058432681" BACKGROUND_COLOR="#ffffff" STYLE="fork">
<font ITALIC="true"/>
<richcontent TYPE="NOTE">

<html><body><pre codeType="owl">
# ONTOLOGY, predicate        ID_685648358 2021-01-19 12:13:52

@prefix : &lt;http://jbusse.de/ontologies/sandbox#&gt; .
    @base &lt;http://jbusse.de/ontologies/sandbox#&gt; .
    &lt;http://jbusse.de/ontologies/sandbox#&gt; rdf:type owl:Ontology .
    </pre></body></html>
</richcontent>
<node TEXT="Gew&#xe4;sser" ID="ID_1936719561" CREATED="1610643571316" MODIFIED="1611154070849" BACKGROUND_COLOR="#ffffff" STYLE="fork">
<font BOLD="true"/>
<richcontent TYPE="NOTE">

<html><body><pre codeType="owl">
# ONTOLOGY, object        ID_1936719561 2021-01-20 14:47:50

:Gew&#228;sser a owl:Class.</pre></body></html>
</richcontent>
<node TEXT="BY Trophiestufe" ID="ID_1449600205" CREATED="1610643564876" MODIFIED="1611154066447" BACKGROUND_COLOR="#ffffff" STYLE="fork">
<font ITALIC="true"/>
<edge COLOR="#cccccc"/>
<richcontent TYPE="NOTE">

<html><body><pre codeType="owl">
# BY, predicate        ID_1449600205 2021-01-20 14:47:46

:Trophiestufe a owl:ObjectProperty .</pre></body></html>
</richcontent>
<node TEXT="_" ID="ID_1260890827" CREATED="1610643564877" MODIFIED="1610714753134" BACKGROUND_COLOR="#ffffff" STYLE="fork">
<font BOLD="true"/>
<edge COLOR="#cccccc"/>
<richcontent TYPE="NOTE">

<html><body><pre codeType="owl">
# BY, object        ID_1260890827 2021-01-15 12:45:53

:Gew&#228;sser_Trophiestufe_SOME_oligotroph a owl:Class ;
            rdfs:subClassOf :Gew&#228;sser .</pre></body></html>
</richcontent>
<node TEXT="SOME  oligotroph" ID="ID_1974595102" CREATED="1610643564877" MODIFIED="1610643681877" BACKGROUND_COLOR="#ffffff" STYLE="fork">
<font ITALIC="true"/>
<edge COLOR="#cccccc"/>
<richcontent TYPE="NOTE">

<html><body><pre codeType="verbose">
# SOME, predicate        ID_1974595102 2021-01-14 17:01:21
</pre><pre codeType="restriction">
:SOME_Trophiestufe_IS_oligotroph a owl:Class ;
    owl:equivalentClass [ a owl:Restriction ;
        owl:onProperty :Trophiestufe ;
        owl:someValuesFrom :oligotroph ] .</pre><pre codeType="intersection">
:Gew&#228;sser_AND_SOME_Trophiestufe_IS_oligotroph a owl:Class ;
    rdfs:subClassOf :Gew&#228;sser_Trophiestufe_SOME_oligotroph ;
    owl:equivalentClass [ a owl:Class ;
        owl:intersectionOf ( :Gew&#228;sser :SOME_Trophiestufe_IS_oligotroph ) ] .</pre><pre codeType="punning">
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

<html><body><pre codeType="owl">
# BY, object        ID_440590526 2021-01-15 12:45:53

:Gew&#228;sser_Trophiestufe_SOME_mesotroph a owl:Class ;
            rdfs:subClassOf :Gew&#228;sser .</pre></body></html>
</richcontent>
<node TEXT="SOME mesotroph" ID="ID_825688094" CREATED="1610643564877" MODIFIED="1610643681878" BACKGROUND_COLOR="#ffffff" STYLE="fork">
<font ITALIC="true"/>
<edge COLOR="#cccccc"/>
<richcontent TYPE="NOTE">

<html><body><pre codeType="verbose">
# SOME, predicate        ID_825688094 2021-01-14 17:01:21
</pre><pre codeType="restriction">
:SOME_Trophiestufe_IS_mesotroph a owl:Class ;
    owl:equivalentClass [ a owl:Restriction ;
        owl:onProperty :Trophiestufe ;
        owl:someValuesFrom :mesotroph ] .</pre><pre codeType="intersection">
:Gew&#228;sser_AND_SOME_Trophiestufe_IS_mesotroph a owl:Class ;
    rdfs:subClassOf :Gew&#228;sser_Trophiestufe_SOME_mesotroph ;
    owl:equivalentClass [ a owl:Class ;
        owl:intersectionOf ( :Gew&#228;sser :SOME_Trophiestufe_IS_mesotroph ) ] .</pre><pre codeType="punning">
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

<html><body><pre codeType="owl">
# BY, object        ID_340097028 2021-01-15 12:45:53

:Gew&#228;sser_Trophiestufe_SOME_eutroph a owl:Class ;
            rdfs:subClassOf :Gew&#228;sser .</pre></body></html>
</richcontent>
<node TEXT="SOME eutroph" ID="ID_1417244006" CREATED="1610643564877" MODIFIED="1610643681879" BACKGROUND_COLOR="#ffffff" STYLE="fork">
<font ITALIC="true"/>
<edge COLOR="#cccccc"/>
<richcontent TYPE="NOTE">

<html><body><pre codeType="verbose">
# SOME, predicate        ID_1417244006 2021-01-14 17:01:21
</pre><pre codeType="restriction">
:SOME_Trophiestufe_IS_eutroph a owl:Class ;
    owl:equivalentClass [ a owl:Restriction ;
        owl:onProperty :Trophiestufe ;
        owl:someValuesFrom :eutroph ] .</pre><pre codeType="intersection">
:Gew&#228;sser_AND_SOME_Trophiestufe_IS_eutroph a owl:Class ;
    rdfs:subClassOf :Gew&#228;sser_Trophiestufe_SOME_eutroph ;
    owl:equivalentClass [ a owl:Class ;
        owl:intersectionOf ( :Gew&#228;sser :SOME_Trophiestufe_IS_eutroph ) ] .</pre><pre codeType="punning">
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

<html><body><pre codeType="owl">
# BY, object        ID_1784703466 2021-01-15 12:45:53

:Gew&#228;sser_Trophiestufe_SOME_hypertroph a owl:Class ;
            rdfs:subClassOf :Gew&#228;sser .</pre></body></html>
</richcontent>
<node TEXT="SOME hypertroph" ID="ID_399418016" CREATED="1610643564877" MODIFIED="1610643681880" BACKGROUND_COLOR="#ffffff" STYLE="fork">
<font ITALIC="true"/>
<edge COLOR="#cccccc"/>
<richcontent TYPE="NOTE">

<html><body><pre codeType="verbose">
# SOME, predicate        ID_399418016 2021-01-14 17:01:21
</pre><pre codeType="restriction">
:SOME_Trophiestufe_IS_hypertroph a owl:Class ;
    owl:equivalentClass [ a owl:Restriction ;
        owl:onProperty :Trophiestufe ;
        owl:someValuesFrom :hypertroph ] .</pre><pre codeType="intersection">
:Gew&#228;sser_AND_SOME_Trophiestufe_IS_hypertroph a owl:Class ;
    rdfs:subClassOf :Gew&#228;sser_Trophiestufe_SOME_hypertroph ;
    owl:equivalentClass [ a owl:Class ;
        owl:intersectionOf ( :Gew&#228;sser :SOME_Trophiestufe_IS_hypertroph ) ] .</pre><pre codeType="punning">
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
<node TEXT="Stra&#xdf;en" ID="ID_495095077" CREATED="1613457777607" MODIFIED="1613457781434"><richcontent TYPE="NOTE">

<html><body><pre codeType="owl">
# ONTOLOGY, object        ID_495095077 2021-02-16 06:43:01

:Stra&#223;en a owl:Class.</pre></body></html>
</richcontent>
<font BOLD="true"/>
<node TEXT="BY Geschwindigkeit" ID="ID_782577626" CREATED="1613457787833" MODIFIED="1613457801209"><richcontent TYPE="NOTE">

<html><body><pre codeType="owl">
# BY, predicate        ID_782577626 2021-02-16 06:43:21

:Geschwindigkeit a owl:ObjectProperty .</pre></body></html>
</richcontent>
<font ITALIC="true"/>
<node TEXT="Autobahn" ID="ID_785939820" CREATED="1613457801756" MODIFIED="1613457805044"><richcontent TYPE="NOTE">

<html><body><pre codeType="owl">
# BY, object        ID_785939820 2021-02-16 06:43:25

:Autobahn a owl:Class ;
            rdfs:subClassOf :Stra&#223;en .</pre></body></html>
</richcontent>
<font BOLD="true"/>
<node TEXT="DEF" ID="ID_235988510" CREATED="1613457805401" MODIFIED="1613457807605"><richcontent TYPE="NOTE">

<html><body><pre codeType="owl">
# AP, predicate        ID_235988510 2021-02-16 06:43:27

skos:definition a owl:AnnotationProperty .</pre></body></html>
</richcontent>
<font ITALIC="true"/>
<node TEXT="Teststrecke f&#xfc;r Rennwagen" ID="ID_903304503" CREATED="1613457808221" MODIFIED="1613457826519" COLOR="#666666"><richcontent TYPE="NOTE">

<html><body><pre codeType="owl">
:Autobahn skos:definition "Teststrecke f&#252;r Rennwagen" .</pre></body></html>
</richcontent>
</node>
</node>
<node TEXT="EX" ID="ID_774044550" CREATED="1613458008144" MODIFIED="1613458011896"><richcontent TYPE="NOTE">

<html><body><pre codeType="owl">
# EX, predicate        ID_774044550 2021-02-16 06:46:51
</pre></body></html>
</richcontent>
<font ITALIC="true"/>
<node TEXT="A5" ID="ID_1723529176" CREATED="1613458012251" MODIFIED="1613458015331" STYLE="fork"><richcontent TYPE="NOTE">

<html><body><pre codeType="owl">
# EX, object        ID_1723529176 2021-02-16 06:46:55

:A5 a :Autobahn .</pre></body></html>
</richcontent>
<node TEXT="DEF" ID="ID_710616076" CREATED="1613461856824" MODIFIED="1613461858549"><richcontent TYPE="NOTE">

<html><body><pre codeType="owl">
# AP, predicate        ID_710616076 2021-02-16 07:50:58

skos:definition a owl:AnnotationProperty .</pre></body></html>
</richcontent>
<font ITALIC="true"/>
<node TEXT="Salzburg - M&#xfc;nchen" ID="ID_938376831" CREATED="1613461859346" MODIFIED="1613461872122" COLOR="#666666"><richcontent TYPE="NOTE">

<html><body><pre codeType="owl">
:A5 skos:definition "Salzburg - M&#252;nchen" .</pre></body></html>
</richcontent>
</node>
</node>
<node TEXT="AP" ID="ID_854840961" CREATED="1613462219660" MODIFIED="1613462223316"><richcontent TYPE="NOTE">

<html><body><pre codeType="owl">
# AP, predicate        ID_854840961 2021-02-16 07:57:03

rdfs:comment a owl:AnnotationProperty .</pre></body></html>
</richcontent>
<font ITALIC="true"/>
<node TEXT="kann auch eine URL sein?" ID="ID_789014156" CREATED="1613462227335" MODIFIED="1613462235286" COLOR="#666666"><richcontent TYPE="NOTE">

<html><body><pre codeType="owl">
:A5 rdfs:comment "kann auch eine URL sein?" .</pre></body></html>
</richcontent>
</node>
</node>
</node>
</node>
</node>
</node>
</node>
</node>
</node>
</node>
</map>
