<map version="freeplane 1.3.0">
<!--To view this file, download free mind mapping software Freeplane from http://freeplane.sourceforge.net -->
<node TEXT="milk" FOLDED="false" ID="ID_110931042" CREATED="1610959238093" MODIFIED="1610959278514"><hook NAME="MapStyle">
    <properties fit_to_viewport="false" show_icon_for_attributes="true" show_note_icons="false" edgeColorConfiguration="#808080ff,#ff0000ff,#0000ffff,#00ff00ff,#ff00ffff,#00ffffff,#7c0000ff,#00007cff,#007c00ff,#7c007cff,#007c7cff,#7c7c00ff"/>

<map_styles>
<stylenode LOCALIZED_TEXT="styles.root_node" UNIFORM_SHAPE="true" VGAP_QUANTITY="24.0 pt">
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
<stylenode LOCALIZED_TEXT="AutomaticLayout.level.root" COLOR="#000000" SHAPE_HORIZONTAL_MARGIN="10.0 pt" SHAPE_VERTICAL_MARGIN="10.0 pt">
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
<node TEXT="ONTOLOGY milk" POSITION="right" ID="ID_393413836" CREATED="1611050168743" MODIFIED="1611050168743" BACKGROUND_COLOR="#ffffff" STYLE="fork">
<font ITALIC="true"/>
<richcontent TYPE="NOTE">

<html><body><pre codeType="owl">
# ONTOLOGY, predicate        ID_393413836 2021-01-19 09:56:08

@prefix : &lt;http://jbusse.de/ontologies/milk#&gt; .
    @base &lt;http://jbusse.de/ontologies/milk#&gt; .
    &lt;http://jbusse.de/ontologies/milk#&gt; rdf:type owl:Ontology .
    </pre></body></html>
</richcontent>
<node TEXT="milk" ID="ID_1781979295" CREATED="1611050168743" MODIFIED="1611050168743" BACKGROUND_COLOR="#ffffff" STYLE="fork">
<font BOLD="true"/>
<richcontent TYPE="NOTE">

<html><body><pre codeType="owl">
# ONTOLOGY, object        ID_1781979295 2021-01-19 09:56:08

:milk a owl:Class.</pre></body></html>
</richcontent>
<node TEXT="BY source" ID="ID_186589694" CREATED="1611050168743" MODIFIED="1611050168743" BACKGROUND_COLOR="#ffffff" STYLE="fork">
<font ITALIC="true"/>
<richcontent TYPE="NOTE">

<html><body><pre codeType="owl">
# BY, predicate        ID_186589694 2021-01-19 09:56:08

:source a owl:ObjectProperty .</pre></body></html>
</richcontent>
<node TEXT="cow milk" ID="ID_1629867687" CREATED="1611050168743" MODIFIED="1611050168743" BACKGROUND_COLOR="#ffffff" STYLE="fork">
<font BOLD="true"/>
<richcontent TYPE="NOTE">

<html><body><pre codeType="owl">
# BY, object        ID_1629867687 2021-01-19 09:56:08

:cow_milk a owl:Class ;
            rdfs:subClassOf :milk .</pre></body></html>
</richcontent>
<node TEXT="SOME cow" ID="ID_1425949390" CREATED="1611050168743" MODIFIED="1611050168743" BACKGROUND_COLOR="#ffffff" STYLE="fork">
<font ITALIC="true"/>
<richcontent TYPE="NOTE">

<html><body><pre codeType="verbose">
# SOME, predicate        ID_1425949390 2021-01-19 09:56:08
</pre><pre codeType="restriction">
:SOME_source_IS_cow a owl:Class ;
    owl:equivalentClass [ a owl:Restriction ;
        owl:onProperty :source ;
        owl:someValuesFrom :cow ] .</pre><pre codeType="intersection">
:milk_AND_SOME_source_IS_cow a owl:Class ;
    rdfs:subClassOf :cow_milk ;
    owl:equivalentClass [ a owl:Class ;
        owl:intersectionOf ( :milk :SOME_source_IS_cow ) ] .</pre><pre codeType="punning">
# owl 2 punning
    :cow a owl:Class ;
        rdfs:subClassOf :source .

    :cow rdf:type owl:NamedIndividual ;
        a :cow .</pre></body></html>
</richcontent>
</node>
</node>
<node TEXT="goat milk" ID="ID_437290613" CREATED="1611050168743" MODIFIED="1611050168743" BACKGROUND_COLOR="#ffffff" STYLE="fork">
<font BOLD="true"/>
<richcontent TYPE="NOTE">

<html><body><pre codeType="owl">
# BY, object        ID_437290613 2021-01-19 09:56:08

:goat_milk a owl:Class ;
            rdfs:subClassOf :milk .</pre></body></html>
</richcontent>
</node>
</node>
<node TEXT="EX" ID="ID_841812873" CREATED="1611050168743" MODIFIED="1611050168743" BACKGROUND_COLOR="#ffffff" STYLE="fork">
<font ITALIC="true"/>
<richcontent TYPE="NOTE">

<html><body><pre codeType="owl">
# EX, predicate        ID_841812873 2021-01-19 09:56:08
</pre></body></html>
</richcontent>
<node TEXT="happy cow milk" ID="ID_1716891840" CREATED="1611050168744" MODIFIED="1611056149911" BACKGROUND_COLOR="#ffffff" STYLE="fork"><richcontent TYPE="NOTE">

<html><body><pre codeType="owl">
# EX, object        ID_1716891840 2021-01-19 11:35:49

:happy_cow_milk a :milk .</pre></body></html>
</richcontent>
<node TEXT="OP source" ID="ID_294461127" CREATED="1611050168744" MODIFIED="1611050168744" BACKGROUND_COLOR="#ffffff" STYLE="fork">
<font ITALIC="true"/>
<richcontent TYPE="NOTE">

<html><body><pre codeType="owl">
# OP, predicate        ID_294461127 2021-01-19 09:56:08

:source a owl:ObjectProperty .</pre></body></html>
</richcontent>
<node TEXT="cow" ID="ID_906353454" CREATED="1611050168744" MODIFIED="1611050168744" COLOR="#666666" BACKGROUND_COLOR="#ffffff" STYLE="fork"><richcontent TYPE="NOTE">

<html><body><pre codeType="owl">
:happy_cow_milk :source :cow .</pre></body></html>
</richcontent>
</node>
</node>
</node>
</node>
</node>
</node>
<node TEXT="" POSITION="right" ID="ID_60770371" CREATED="1611657605636" MODIFIED="1611657605636"/>
</node>
</map>
