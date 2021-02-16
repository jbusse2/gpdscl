<map version="freeplane 1.7.0">

<node TEXT="Gew&#228;sser_Challenge_2021-01-19.mm" FOLDED="false" ID="ID_1723255651" CREATED="1283093380553" MODIFIED="1611055769803"><hook NAME="MapStyle" zoom="0.75">
    <properties edgeColorConfiguration="#808080ff,#808080ff,#808080ff,#808080ff,#808080ff" show_note_icons="false" fit_to_viewport="false" />

<map_styles>
<stylenode LOCALIZED_TEXT="styles.root_node" STYLE="oval" UNIFORM_SHAPE="true" VGAP_QUANTITY="24.0 pt">
<font SIZE="24" />
<stylenode LOCALIZED_TEXT="styles.predefined" POSITION="right" STYLE="bubble">
<stylenode LOCALIZED_TEXT="default" MAX_WIDTH="600.0 px" COLOR="#000000" STYLE="as_parent">
<font NAME="SansSerif" SIZE="10" BOLD="false" ITALIC="false" />
</stylenode>
<stylenode LOCALIZED_TEXT="defaultstyle.details" />
<stylenode LOCALIZED_TEXT="defaultstyle.attributes">
<font SIZE="9" />
</stylenode>
<stylenode LOCALIZED_TEXT="defaultstyle.note" />
<stylenode LOCALIZED_TEXT="defaultstyle.floating">
<edge STYLE="hide_edge" />
<cloud COLOR="#f0f0f0" SHAPE="ROUND_RECT" />
</stylenode>
</stylenode>
<stylenode LOCALIZED_TEXT="styles.user-defined" POSITION="right" STYLE="bubble">
<stylenode LOCALIZED_TEXT="styles.topic" COLOR="#18898b" STYLE="fork">
<font NAME="Liberation Sans" SIZE="10" BOLD="true" />
</stylenode>
<stylenode LOCALIZED_TEXT="styles.subtopic" COLOR="#cc3300" STYLE="fork">
<font NAME="Liberation Sans" SIZE="10" BOLD="true" />
</stylenode>
<stylenode LOCALIZED_TEXT="styles.subsubtopic" COLOR="#669900">
<font NAME="Liberation Sans" SIZE="10" BOLD="true" />
</stylenode>
<stylenode LOCALIZED_TEXT="styles.important">
<icon BUILTIN="yes" />
</stylenode>
</stylenode>
<stylenode LOCALIZED_TEXT="styles.AutomaticLayout" POSITION="right" STYLE="bubble">
<stylenode LOCALIZED_TEXT="AutomaticLayout.level.root" COLOR="#000000">
<font SIZE="18" />
</stylenode>
<stylenode LOCALIZED_TEXT="AutomaticLayout.level,1" COLOR="#0033ff">
<font SIZE="16" />
</stylenode>
<stylenode LOCALIZED_TEXT="AutomaticLayout.level,2" COLOR="#00b439">
<font SIZE="14" />
</stylenode>
<stylenode LOCALIZED_TEXT="AutomaticLayout.level,3" COLOR="#990000">
<font SIZE="12" />
</stylenode>
<stylenode LOCALIZED_TEXT="AutomaticLayout.level,4" COLOR="#111111">
<font SIZE="10" />
</stylenode>
</stylenode>
</stylenode>
</map_styles>
</hook>
<hook NAME="AutomaticEdgeColor" COUNTER="11" RULE="ON_BRANCH_CREATION" />
<edge COLOR="#cccccc" />
<node TEXT="ONTOLOGY gewaesser" POSITION="right" ID="ID_1456425654" CREATED="1611063890631" MODIFIED="1611063902502" BACKGROUND_COLOR="#ffffff" STYLE="fork">
<edge COLOR="#808080" />
<node TEXT="Gew&#228;sser" ID="ID_1936719561" CREATED="1610643571316" MODIFIED="1611063890972" BACKGROUND_COLOR="#ffffff" STYLE="fork">
<node TEXT="BY Salzgehalt" ID="ID_505798876" CREATED="1610643564871" MODIFIED="1610643681811" BACKGROUND_COLOR="#ffffff" STYLE="fork">
<edge COLOR="#cccccc" />
<node TEXT="Salzwasser" ID="ID_318603048" CREATED="1610643564871" MODIFIED="1610644695266" BACKGROUND_COLOR="#ffffff" STYLE="fork">
<edge COLOR="#cccccc" />
<node TEXT="SOME salzwasser-artig" ID="ID_881092601" CREATED="1610643564871" MODIFIED="1610643681814" BACKGROUND_COLOR="#ffffff" STYLE="fork">
<edge COLOR="#cccccc" />
<richcontent TYPE="NOTE"><html><body><pre codeType="verbose">
# SOME, predicate        ID_881092601 2021-01-14 17:01:21
</pre><pre codeType="restriction">
:SOME_Salzgehalt_IS_salzwasser-artig a owl:Class ;
    owl:equivalentClass [ a owl:Restriction ;
        owl:onProperty :Salzgehalt ;
        owl:someValuesFrom :salzwasser-artig ] .</pre><pre codeType="intersection">
:Gew&#228;sser_AND_SOME_Salzgehalt_IS_salzwasser-artig a owl:Class ;
    rdfs:subClassOf :Salzwasser ;
    owl:equivalentClass [ a owl:Class ;
        owl:intersectionOf ( :Gew&#228;sser :SOME_Salzgehalt_IS_salzwasser-artig ) ] .</pre><pre codeType="punning">
# owl 2 punning
    :salzwasser-artig a owl:Class ;
        rdfs:subClassOf :Salzgehalt .

    :salzwasser-artig rdf:type owl:NamedIndividual ;
        a :salzwasser-artig .</pre></body></html></richcontent><font ITALIC="true" /><font ITALIC="true" /><font ITALIC="true" /><font ITALIC="true" /></node>
<richcontent TYPE="NOTE"><html><body><pre codeType="owl">
# BY, object        ID_318603048 2021-01-14 17:18:15

:Salzwasser a owl:Class ;
            rdfs:subClassOf :Gew&#228;sser .</pre></body></html></richcontent><font BOLD="true" /></node>
<node TEXT="S&#252;&#223;wasser" ID="ID_442317624" CREATED="1610643564871" MODIFIED="1610656285246" BACKGROUND_COLOR="#ffffff" STYLE="fork">
<edge COLOR="#cccccc" />
<node TEXT="SOME s&#252;&#223;wasser-artig" ID="ID_1493417393" CREATED="1610643564871" MODIFIED="1610643681816" BACKGROUND_COLOR="#ffffff" STYLE="fork">
<edge COLOR="#cccccc" />
<richcontent TYPE="NOTE"><html><body><pre codeType="verbose">
# SOME, predicate        ID_1493417393 2021-01-14 17:01:21
</pre><pre codeType="restriction">
:SOME_Salzgehalt_IS_s&#252;&#223;wasser-artig a owl:Class ;
    owl:equivalentClass [ a owl:Restriction ;
        owl:onProperty :Salzgehalt ;
        owl:someValuesFrom :s&#252;&#223;wasser-artig ] .</pre><pre codeType="intersection">
:Gew&#228;sser_AND_SOME_Salzgehalt_IS_s&#252;&#223;wasser-artig a owl:Class ;
    rdfs:subClassOf :S&#252;&#223;wasser ;
    owl:equivalentClass [ a owl:Class ;
        owl:intersectionOf ( :Gew&#228;sser :SOME_Salzgehalt_IS_s&#252;&#223;wasser-artig ) ] .</pre><pre codeType="punning">
# owl 2 punning
    :s&#252;&#223;wasser-artig a owl:Class ;
        rdfs:subClassOf :Salzgehalt .

    :s&#252;&#223;wasser-artig rdf:type owl:NamedIndividual ;
        a :s&#252;&#223;wasser-artig .</pre></body></html></richcontent><font ITALIC="true" /><font ITALIC="true" /><font ITALIC="true" /><font ITALIC="true" /></node>
<richcontent TYPE="NOTE"><html><body><pre codeType="owl">
# BY, object        ID_442317624 2021-01-14 20:31:25

:S&#252;&#223;wasser a owl:Class ;
            rdfs:subClassOf :Gew&#228;sser .</pre></body></html></richcontent><font BOLD="true" /></node>
<node TEXT="Brackwasser" ID="ID_1259118166" CREATED="1610643564871" MODIFIED="1610644704513" BACKGROUND_COLOR="#ffffff" STYLE="fork">
<edge COLOR="#cccccc" />
<node TEXT="SOME brackwasser-artig" ID="ID_1300425357" CREATED="1610643564871" MODIFIED="1610643681818" BACKGROUND_COLOR="#ffffff" STYLE="fork">
<edge COLOR="#cccccc" />
<richcontent TYPE="NOTE"><html><body><pre codeType="verbose">
# SOME, predicate        ID_1300425357 2021-01-14 17:01:21
</pre><pre codeType="restriction">
:SOME_Salzgehalt_IS_brackwasser-artig a owl:Class ;
    owl:equivalentClass [ a owl:Restriction ;
        owl:onProperty :Salzgehalt ;
        owl:someValuesFrom :brackwasser-artig ] .</pre><pre codeType="intersection">
:Gew&#228;sser_AND_SOME_Salzgehalt_IS_brackwasser-artig a owl:Class ;
    rdfs:subClassOf :Brackwasser ;
    owl:equivalentClass [ a owl:Class ;
        owl:intersectionOf ( :Gew&#228;sser :SOME_Salzgehalt_IS_brackwasser-artig ) ] .</pre><pre codeType="punning">
# owl 2 punning
    :brackwasser-artig a owl:Class ;
        rdfs:subClassOf :Salzgehalt .

    :brackwasser-artig rdf:type owl:NamedIndividual ;
        a :brackwasser-artig .</pre></body></html></richcontent><font ITALIC="true" /><font ITALIC="true" /><font ITALIC="true" /><font ITALIC="true" /></node>
<richcontent TYPE="NOTE"><html><body><pre codeType="owl">
# BY, object        ID_1259118166 2021-01-14 17:18:24

:Brackwasser a owl:Class ;
            rdfs:subClassOf :Gew&#228;sser .</pre></body></html></richcontent><font BOLD="true" /></node>
<richcontent TYPE="NOTE"><html><body><pre codeType="owl">
# BY, predicate        ID_505798876 2021-01-14 17:01:21

:Salzgehalt a owl:ObjectProperty .</pre></body></html></richcontent><font ITALIC="true" /></node>
<node TEXT="BY Stellung im Gew&#228;ssersystem" ID="ID_442938628" CREATED="1610643564872" MODIFIED="1610643681830" BACKGROUND_COLOR="#ffffff" STYLE="fork">
<edge COLOR="#cccccc" />
<node TEXT="Meer" ID="ID_965849686" CREATED="1610643564872" MODIFIED="1610708946393" BACKGROUND_COLOR="#ffffff" STYLE="fork">
<edge COLOR="#cccccc" />
<node TEXT="SOME meeres-artig" ID="ID_410943511" CREATED="1610643564872" MODIFIED="1611064204225" BACKGROUND_COLOR="#ffffff" STYLE="fork">
<edge COLOR="#cccccc" />
<richcontent TYPE="NOTE"><html><body><pre codeType="verbose">
# SOME, predicate        ID_410943511 2021-01-19 13:50:04
</pre><pre codeType="restriction">
:SOME_Stellung_im_Gew&#228;ssersystem_IS_meeres-artig a owl:Class ;
    owl:equivalentClass [ a owl:Restriction ;
        owl:onProperty :Stellung_im_Gew&#228;ssersystem ;
        owl:someValuesFrom :meeres-artig ] .</pre><pre codeType="intersection">
:Gew&#228;sser_AND_SOME_Stellung_im_Gew&#228;ssersystem_IS_meeres-artig a owl:Class ;
    rdfs:subClassOf :Meer ;
    owl:equivalentClass [ a owl:Class ;
        owl:intersectionOf ( :Gew&#228;sser :SOME_Stellung_im_Gew&#228;ssersystem_IS_meeres-artig ) ] .</pre><pre codeType="punning">
# owl 2 punning
    :meeres-artig a owl:Class ;
        rdfs:subClassOf :Stellung_im_Gew&#228;ssersystem .

    :meeres-artig rdf:type owl:NamedIndividual ;
        a :meeres-artig .</pre></body></html></richcontent><font ITALIC="true" /><font ITALIC="true" /><font ITALIC="true" /><font ITALIC="true" /></node>
<richcontent TYPE="NOTE"><html><body><pre codeType="owl">
# BY, object        ID_965849686 2021-01-15 11:09:06

:Meer a owl:Class ;
            rdfs:subClassOf :Gew&#228;sser .</pre></body></html></richcontent><font BOLD="true" /></node>
<node TEXT="_" ID="ID_671484745" CREATED="1610643564872" MODIFIED="1610714753120" BACKGROUND_COLOR="#ffffff" STYLE="fork">
<edge COLOR="#cccccc" />
<node TEXT="SOME festlandnah" ID="ID_552209344" CREATED="1610643564872" MODIFIED="1610643681832" BACKGROUND_COLOR="#ffffff" STYLE="fork">
<edge COLOR="#cccccc" />
<richcontent TYPE="NOTE"><html><body><pre codeType="verbose">
# SOME, predicate        ID_552209344 2021-01-14 17:01:21
</pre><pre codeType="restriction">
:SOME_Stellung_im_Gew&#228;ssersystem_IS_festlandnah a owl:Class ;
    owl:equivalentClass [ a owl:Restriction ;
        owl:onProperty :Stellung_im_Gew&#228;ssersystem ;
        owl:someValuesFrom :festlandnah ] .</pre><pre codeType="intersection">
:Gew&#228;sser_AND_SOME_Stellung_im_Gew&#228;ssersystem_IS_festlandnah a owl:Class ;
    rdfs:subClassOf :Gew&#228;sser_Stellung_im_Gew&#228;ssersystem_SOME_festlandnah ;
    owl:equivalentClass [ a owl:Class ;
        owl:intersectionOf ( :Gew&#228;sser :SOME_Stellung_im_Gew&#228;ssersystem_IS_festlandnah ) ] .</pre><pre codeType="punning">
# owl 2 punning
    :festlandnah a owl:Class ;
        rdfs:subClassOf :Stellung_im_Gew&#228;ssersystem .

    :festlandnah rdf:type owl:NamedIndividual ;
        a :festlandnah .</pre></body></html></richcontent><font ITALIC="true" /><font ITALIC="true" /><font ITALIC="true" /><font ITALIC="true" /></node>
<richcontent TYPE="NOTE"><html><body><pre codeType="owl">
# BY, object        ID_671484745 2021-01-15 12:45:53

:Gew&#228;sser_Stellung_im_Gew&#228;ssersystem_SOME_festlandnah a owl:Class ;
            rdfs:subClassOf :Gew&#228;sser .</pre></body></html></richcontent><font BOLD="true" /></node>
<node TEXT="Binnengew&#228;sser" ID="ID_1142058703" CREATED="1610643564872" MODIFIED="1610708948040" BACKGROUND_COLOR="#ffffff" STYLE="fork">
<node TEXT="SOME binnen-artig" ID="ID_1804868277" CREATED="1610643564872" MODIFIED="1610643681831" BACKGROUND_COLOR="#ffffff" STYLE="fork">
<edge COLOR="#cccccc" />
<richcontent TYPE="NOTE"><html><body><pre codeType="verbose">
# SOME, predicate        ID_1804868277 2021-01-14 17:01:21
</pre><pre codeType="restriction">
:SOME_Stellung_im_Gew&#228;ssersystem_IS_binnen-artig a owl:Class ;
    owl:equivalentClass [ a owl:Restriction ;
        owl:onProperty :Stellung_im_Gew&#228;ssersystem ;
        owl:someValuesFrom :binnen-artig ] .</pre><pre codeType="intersection">
:Gew&#228;sser_AND_SOME_Stellung_im_Gew&#228;ssersystem_IS_binnen-artig a owl:Class ;
    rdfs:subClassOf :Binnengew&#228;sser ;
    owl:equivalentClass [ a owl:Class ;
        owl:intersectionOf ( :Gew&#228;sser :SOME_Stellung_im_Gew&#228;ssersystem_IS_binnen-artig ) ] .</pre><pre codeType="punning">
# owl 2 punning
    :binnen-artig a owl:Class ;
        rdfs:subClassOf :Stellung_im_Gew&#228;ssersystem .

    :binnen-artig rdf:type owl:NamedIndividual ;
        a :binnen-artig .</pre></body></html></richcontent><font ITALIC="true" /><font ITALIC="true" /><font ITALIC="true" /><font ITALIC="true" /></node>
<node TEXT="BY Lage des Wasserk&#246;rpers" ID="ID_1308991092" CREATED="1610643564871" MODIFIED="1610708950883" BACKGROUND_COLOR="#ffffff" STYLE="fork">
<node TEXT="_" ID="ID_669827480" CREATED="1610643564872" MODIFIED="1610714753128" BACKGROUND_COLOR="#ffffff" STYLE="fork">
<edge COLOR="#cccccc" />
<node TEXT="SOME &#252;ber der Erde liegend" ID="ID_713188373" CREATED="1610643564872" MODIFIED="1610643681824" BACKGROUND_COLOR="#ffffff" STYLE="fork">
<edge COLOR="#cccccc" />
<richcontent TYPE="NOTE"><html><body><pre codeType="verbose">
# SOME, predicate        ID_713188373 2021-01-14 17:01:21
</pre><pre codeType="restriction">
:SOME_Lage_des_Wasserk&#246;rpers_IS_&#252;ber_der_Erde_liegend a owl:Class ;
    owl:equivalentClass [ a owl:Restriction ;
        owl:onProperty :Lage_des_Wasserk&#246;rpers ;
        owl:someValuesFrom :&#252;ber_der_Erde_liegend ] .</pre><pre codeType="intersection">
:Binnengew&#228;sser_AND_SOME_Lage_des_Wasserk&#246;rpers_IS_&#252;ber_der_Erde_liegend a owl:Class ;
    rdfs:subClassOf :Binnengew&#228;sser_Lage_des_Wasserk&#246;rpers_SOME_&#252;ber_der_Erde_liegend ;
    owl:equivalentClass [ a owl:Class ;
        owl:intersectionOf ( :Binnengew&#228;sser :SOME_Lage_des_Wasserk&#246;rpers_IS_&#252;ber_der_Erde_liegend ) ] .</pre><pre codeType="punning">
# owl 2 punning
    :&#252;ber_der_Erde_liegend a owl:Class ;
        rdfs:subClassOf :Lage_des_Wasserk&#246;rpers .

    :&#252;ber_der_Erde_liegend rdf:type owl:NamedIndividual ;
        a :&#252;ber_der_Erde_liegend .</pre></body></html></richcontent><font ITALIC="true" /><font ITALIC="true" /><font ITALIC="true" /><font ITALIC="true" /></node>
<richcontent TYPE="NOTE"><html><body><pre codeType="owl">
# BY, object        ID_669827480 2021-01-15 12:45:53

:Binnengew&#228;sser_Lage_des_Wasserk&#246;rpers_SOME_&#252;ber_der_Erde_liegend a owl:Class ;
            rdfs:subClassOf :Binnengew&#228;sser .</pre></body></html></richcontent><font BOLD="true" /></node>
<node TEXT="_" ID="ID_1551467368" CREATED="1610643564872" MODIFIED="1610714753128" BACKGROUND_COLOR="#ffffff" STYLE="fork">
<edge COLOR="#cccccc" />
<node TEXT="SOME unterirdisch" ID="ID_1653727242" CREATED="1610643564872" MODIFIED="1610643681828" BACKGROUND_COLOR="#ffffff" STYLE="fork">
<edge COLOR="#cccccc" />
<richcontent TYPE="NOTE"><html><body><pre codeType="verbose">
# SOME, predicate        ID_1653727242 2021-01-14 17:01:21
</pre><pre codeType="restriction">
:SOME_Lage_des_Wasserk&#246;rpers_IS_unterirdisch a owl:Class ;
    owl:equivalentClass [ a owl:Restriction ;
        owl:onProperty :Lage_des_Wasserk&#246;rpers ;
        owl:someValuesFrom :unterirdisch ] .</pre><pre codeType="intersection">
:Binnengew&#228;sser_AND_SOME_Lage_des_Wasserk&#246;rpers_IS_unterirdisch a owl:Class ;
    rdfs:subClassOf :Binnengew&#228;sser_Lage_des_Wasserk&#246;rpers_SOME_unterirdisch ;
    owl:equivalentClass [ a owl:Class ;
        owl:intersectionOf ( :Binnengew&#228;sser :SOME_Lage_des_Wasserk&#246;rpers_IS_unterirdisch ) ] .</pre><pre codeType="punning">
# owl 2 punning
    :unterirdisch a owl:Class ;
        rdfs:subClassOf :Lage_des_Wasserk&#246;rpers .

    :unterirdisch rdf:type owl:NamedIndividual ;
        a :unterirdisch .</pre></body></html></richcontent><font ITALIC="true" /><font ITALIC="true" /><font ITALIC="true" /><font ITALIC="true" /></node>
<richcontent TYPE="NOTE"><html><body><pre codeType="owl">
# BY, object        ID_1551467368 2021-01-15 12:45:53

:Binnengew&#228;sser_Lage_des_Wasserk&#246;rpers_SOME_unterirdisch a owl:Class ;
            rdfs:subClassOf :Binnengew&#228;sser .</pre></body></html></richcontent><font BOLD="true" /></node>
<node TEXT="Quelle" ID="ID_54597809" CREATED="1610643564872" MODIFIED="1610712025834" BACKGROUND_COLOR="#ffffff" STYLE="fork">
<edge COLOR="#cccccc" />
<node TEXT="SOME quellen-artig" ID="ID_1217098574" CREATED="1610643564872" MODIFIED="1610643681829" BACKGROUND_COLOR="#ffffff" STYLE="fork">
<edge COLOR="#cccccc" />
<richcontent TYPE="NOTE"><html><body><pre codeType="verbose">
# SOME, predicate        ID_1217098574 2021-01-14 17:01:21
</pre><pre codeType="restriction">
:SOME_Lage_des_Wasserk&#246;rpers_IS_quellen-artig a owl:Class ;
    owl:equivalentClass [ a owl:Restriction ;
        owl:onProperty :Lage_des_Wasserk&#246;rpers ;
        owl:someValuesFrom :quellen-artig ] .</pre><pre codeType="intersection">
:Binnengew&#228;sser_AND_SOME_Lage_des_Wasserk&#246;rpers_IS_quellen-artig a owl:Class ;
    rdfs:subClassOf :Quelle ;
    owl:equivalentClass [ a owl:Class ;
        owl:intersectionOf ( :Binnengew&#228;sser :SOME_Lage_des_Wasserk&#246;rpers_IS_quellen-artig ) ] .</pre><pre codeType="punning">
# owl 2 punning
    :quellen-artig a owl:Class ;
        rdfs:subClassOf :Lage_des_Wasserk&#246;rpers .

    :quellen-artig rdf:type owl:NamedIndividual ;
        a :quellen-artig .</pre></body></html></richcontent><font ITALIC="true" /><font ITALIC="true" /><font ITALIC="true" /><font ITALIC="true" /></node>
<richcontent TYPE="NOTE"><html><body><pre codeType="owl">
# BY, object        ID_54597809 2021-01-15 12:00:25

:Quelle a owl:Class ;
            rdfs:subClassOf :Binnengew&#228;sser .</pre></body></html></richcontent><font BOLD="true" /></node>
<node TEXT="Schwinde" ID="ID_1368914530" CREATED="1610643564872" MODIFIED="1610712029895" BACKGROUND_COLOR="#ffffff" STYLE="fork">
<edge COLOR="#cccccc" />
<node TEXT="SOME schwinden-artig" ID="ID_1061565200" CREATED="1610643564872" MODIFIED="1610643681830" BACKGROUND_COLOR="#ffffff" STYLE="fork">
<edge COLOR="#cccccc" />
<richcontent TYPE="NOTE"><html><body><pre codeType="verbose">
# SOME, predicate        ID_1061565200 2021-01-14 17:01:21
</pre><pre codeType="restriction">
:SOME_Lage_des_Wasserk&#246;rpers_IS_schwinden-artig a owl:Class ;
    owl:equivalentClass [ a owl:Restriction ;
        owl:onProperty :Lage_des_Wasserk&#246;rpers ;
        owl:someValuesFrom :schwinden-artig ] .</pre><pre codeType="intersection">
:Binnengew&#228;sser_AND_SOME_Lage_des_Wasserk&#246;rpers_IS_schwinden-artig a owl:Class ;
    rdfs:subClassOf :Schwinde ;
    owl:equivalentClass [ a owl:Class ;
        owl:intersectionOf ( :Binnengew&#228;sser :SOME_Lage_des_Wasserk&#246;rpers_IS_schwinden-artig ) ] .</pre><pre codeType="punning">
# owl 2 punning
    :schwinden-artig a owl:Class ;
        rdfs:subClassOf :Lage_des_Wasserk&#246;rpers .

    :schwinden-artig rdf:type owl:NamedIndividual ;
        a :schwinden-artig .</pre></body></html></richcontent><font ITALIC="true" /><font ITALIC="true" /><font ITALIC="true" /><font ITALIC="true" /></node>
<richcontent TYPE="NOTE"><html><body><pre codeType="owl">
# BY, object        ID_1368914530 2021-01-15 12:00:29

:Schwinde a owl:Class ;
            rdfs:subClassOf :Binnengew&#228;sser .</pre></body></html></richcontent><font BOLD="true" /></node>
<richcontent TYPE="NOTE"><html><body><pre codeType="owl">
# BY, predicate        ID_1308991092 2021-01-15 11:09:10

:Lage_des_Wasserk&#246;rpers a owl:ObjectProperty .</pre></body></html></richcontent><font ITALIC="true" /></node>
<node TEXT="BY Str&#246;mungsverhalten" ID="ID_1496671923" CREATED="1610643564872" MODIFIED="1610708957164" BACKGROUND_COLOR="#ffffff" STYLE="fork">
<node TEXT="Flie&#223;gew&#228;sser" ID="ID_1261609446" CREATED="1610643564872" MODIFIED="1610712439537" BACKGROUND_COLOR="#ffffff" STYLE="fork">
<edge COLOR="#cccccc" />
<node TEXT="SOME str&#246;mend" ID="ID_580045709" CREATED="1610643564872" MODIFIED="1610643681835" BACKGROUND_COLOR="#ffffff" STYLE="fork">
<edge COLOR="#cccccc" />
<richcontent TYPE="NOTE"><html><body><pre codeType="verbose">
# SOME, predicate        ID_580045709 2021-01-14 17:01:21
</pre><pre codeType="restriction">
:SOME_Str&#246;mungsverhalten_IS_str&#246;mend a owl:Class ;
    owl:equivalentClass [ a owl:Restriction ;
        owl:onProperty :Str&#246;mungsverhalten ;
        owl:someValuesFrom :str&#246;mend ] .</pre><pre codeType="intersection">
:Binnengew&#228;sser_AND_SOME_Str&#246;mungsverhalten_IS_str&#246;mend a owl:Class ;
    rdfs:subClassOf :Flie&#223;gew&#228;sser ;
    owl:equivalentClass [ a owl:Class ;
        owl:intersectionOf ( :Binnengew&#228;sser :SOME_Str&#246;mungsverhalten_IS_str&#246;mend ) ] .</pre><pre codeType="punning">
# owl 2 punning
    :str&#246;mend a owl:Class ;
        rdfs:subClassOf :Str&#246;mungsverhalten .

    :str&#246;mend rdf:type owl:NamedIndividual ;
        a :str&#246;mend .</pre></body></html></richcontent><font ITALIC="true" /><font ITALIC="true" /><font ITALIC="true" /><font ITALIC="true" /></node>
<richcontent TYPE="NOTE"><html><body><pre codeType="owl">
# BY, object        ID_1261609446 2021-01-15 12:07:19

:Flie&#223;gew&#228;sser a owl:Class ;
            rdfs:subClassOf :Binnengew&#228;sser .</pre></body></html></richcontent><font BOLD="true" /></node>
<node TEXT="Stillgew&#228;sser" ID="ID_14307755" CREATED="1610643564872" MODIFIED="1611067739737" BACKGROUND_COLOR="#ffffff" STYLE="fork">
<edge COLOR="#cccccc" />
<node TEXT="SOME stehend" ID="ID_751149537" CREATED="1610643564872" MODIFIED="1610643681838" BACKGROUND_COLOR="#ffffff" STYLE="fork">
<edge COLOR="#cccccc" />
<richcontent TYPE="NOTE"><html><body><pre codeType="verbose">
# SOME, predicate        ID_751149537 2021-01-14 17:01:21
</pre><pre codeType="restriction">
:SOME_Str&#246;mungsverhalten_IS_stehend a owl:Class ;
    owl:equivalentClass [ a owl:Restriction ;
        owl:onProperty :Str&#246;mungsverhalten ;
        owl:someValuesFrom :stehend ] .</pre><pre codeType="intersection">
:Binnengew&#228;sser_AND_SOME_Str&#246;mungsverhalten_IS_stehend a owl:Class ;
    rdfs:subClassOf :Stillgew&#228;sser ;
    owl:equivalentClass [ a owl:Class ;
        owl:intersectionOf ( :Binnengew&#228;sser :SOME_Str&#246;mungsverhalten_IS_stehend ) ] .</pre><pre codeType="punning">
# owl 2 punning
    :stehend a owl:Class ;
        rdfs:subClassOf :Str&#246;mungsverhalten .

    :stehend rdf:type owl:NamedIndividual ;
        a :stehend .</pre></body></html></richcontent><font ITALIC="true" /><font ITALIC="true" /><font ITALIC="true" /><font ITALIC="true" /></node>
<node TEXT="BY Zirkulationstyp" ID="ID_49860073" CREATED="1610643564875" MODIFIED="1610708966482" BACKGROUND_COLOR="#ffffff" STYLE="fork">
<node TEXT="_" ID="ID_861922265" CREATED="1610643564875" MODIFIED="1610714753128" BACKGROUND_COLOR="#ffffff" STYLE="fork">
<edge COLOR="#cccccc" />
<node TEXT="SOME amiktisch" ID="ID_1136539048" CREATED="1610643564875" MODIFIED="1610643681865" BACKGROUND_COLOR="#ffffff" STYLE="fork">
<edge COLOR="#cccccc" />
<richcontent TYPE="NOTE"><html><body><pre codeType="verbose">
# SOME, predicate        ID_1136539048 2021-01-14 17:01:21
</pre><pre codeType="restriction">
:SOME_Zirkulationstyp_IS_amiktisch a owl:Class ;
    owl:equivalentClass [ a owl:Restriction ;
        owl:onProperty :Zirkulationstyp ;
        owl:someValuesFrom :amiktisch ] .</pre><pre codeType="intersection">
:Stillgew&#228;sser_AND_SOME_Zirkulationstyp_IS_amiktisch a owl:Class ;
    rdfs:subClassOf :Stillgew&#228;sser_Zirkulationstyp_SOME_amiktisch ;
    owl:equivalentClass [ a owl:Class ;
        owl:intersectionOf ( :Stillgew&#228;sser :SOME_Zirkulationstyp_IS_amiktisch ) ] .</pre><pre codeType="punning">
# owl 2 punning
    :amiktisch a owl:Class ;
        rdfs:subClassOf :Zirkulationstyp .

    :amiktisch rdf:type owl:NamedIndividual ;
        a :amiktisch .</pre></body></html></richcontent><font ITALIC="true" /><font ITALIC="true" /><font ITALIC="true" /><font ITALIC="true" /></node>
<node TEXT="AP rdfs:comment" ID="ID_1314493317" CREATED="1608131886217" MODIFIED="1611064481507" COLOR="#000000" BACKGROUND_COLOR="#ffffff" STYLE="fork">
<node TEXT="keine Durchmischung" ID="ID_1042626624" CREATED="1608131886217" MODIFIED="1608131886217" COLOR="#666666" BACKGROUND_COLOR="#ffffff" STYLE="fork"><richcontent TYPE="NOTE"><html><body><pre codeType="owl">
:Stillgew&#228;sser_Zirkulationstyp_SOME_amiktisch rdfs:comment "AP rdfs:comment" .</pre></body></html></richcontent></node>
<richcontent TYPE="NOTE"><html><body><pre codeType="owl">
# AP, predicate        ID_1314493317 2021-01-19 13:54:41

rdfs:comment a owl:AnnotationProperty .</pre></body></html></richcontent><font ITALIC="true" /></node>
<richcontent TYPE="NOTE"><html><body><pre codeType="owl">
# BY, object        ID_861922265 2021-01-15 12:45:53

:Stillgew&#228;sser_Zirkulationstyp_SOME_amiktisch a owl:Class ;
            rdfs:subClassOf :Stillgew&#228;sser .</pre></body></html></richcontent><font BOLD="true" /></node>
<node TEXT="_" ID="ID_1656869749" CREATED="1610643564875" MODIFIED="1610714753128" BACKGROUND_COLOR="#ffffff" STYLE="fork">
<edge COLOR="#cccccc" />
<node TEXT="SOME meromiktisch" ID="ID_387485580" CREATED="1610643564875" MODIFIED="1610643681866" BACKGROUND_COLOR="#ffffff" STYLE="fork">
<edge COLOR="#cccccc" />
<richcontent TYPE="NOTE"><html><body><pre codeType="verbose">
# SOME, predicate        ID_387485580 2021-01-14 17:01:21
</pre><pre codeType="restriction">
:SOME_Zirkulationstyp_IS_meromiktisch a owl:Class ;
    owl:equivalentClass [ a owl:Restriction ;
        owl:onProperty :Zirkulationstyp ;
        owl:someValuesFrom :meromiktisch ] .</pre><pre codeType="intersection">
:Stillgew&#228;sser_AND_SOME_Zirkulationstyp_IS_meromiktisch a owl:Class ;
    rdfs:subClassOf :Stillgew&#228;sser_Zirkulationstyp_SOME_meromiktisch ;
    owl:equivalentClass [ a owl:Class ;
        owl:intersectionOf ( :Stillgew&#228;sser :SOME_Zirkulationstyp_IS_meromiktisch ) ] .</pre><pre codeType="punning">
# owl 2 punning
    :meromiktisch a owl:Class ;
        rdfs:subClassOf :Zirkulationstyp .

    :meromiktisch rdf:type owl:NamedIndividual ;
        a :meromiktisch .</pre></body></html></richcontent><font ITALIC="true" /><font ITALIC="true" /><font ITALIC="true" /><font ITALIC="true" /></node>
<node TEXT="AP rdfs:comment" ID="ID_624649777" CREATED="1608131886217" MODIFIED="1611064481512" COLOR="#000000" BACKGROUND_COLOR="#ffffff" STYLE="fork">
<node TEXT="keine vollst&#228;ndige Durchmischung" ID="ID_285336377" CREATED="1608131886217" MODIFIED="1608131886217" COLOR="#666666" BACKGROUND_COLOR="#ffffff" STYLE="fork"><richcontent TYPE="NOTE"><html><body><pre codeType="owl">
:Stillgew&#228;sser_Zirkulationstyp_SOME_meromiktisch rdfs:comment "AP rdfs:comment" .</pre></body></html></richcontent></node>
<richcontent TYPE="NOTE"><html><body><pre codeType="owl">
# AP, predicate        ID_624649777 2021-01-19 13:54:41

rdfs:comment a owl:AnnotationProperty .</pre></body></html></richcontent><font ITALIC="true" /></node>
<richcontent TYPE="NOTE"><html><body><pre codeType="owl">
# BY, object        ID_1656869749 2021-01-15 12:45:53

:Stillgew&#228;sser_Zirkulationstyp_SOME_meromiktisch a owl:Class ;
            rdfs:subClassOf :Stillgew&#228;sser .</pre></body></html></richcontent><font BOLD="true" /></node>
<node TEXT="_" ID="ID_1918708915" CREATED="1610643564875" MODIFIED="1610714753128" BACKGROUND_COLOR="#ffffff" STYLE="fork">
<edge COLOR="#cccccc" />
<node TEXT="SOME holomiktisch" ID="ID_232527543" CREATED="1610643564875" MODIFIED="1610643681866" BACKGROUND_COLOR="#ffffff" STYLE="fork">
<edge COLOR="#cccccc" />
<richcontent TYPE="NOTE"><html><body><pre codeType="verbose">
# SOME, predicate        ID_232527543 2021-01-14 17:01:21
</pre><pre codeType="restriction">
:SOME_Zirkulationstyp_IS_holomiktisch a owl:Class ;
    owl:equivalentClass [ a owl:Restriction ;
        owl:onProperty :Zirkulationstyp ;
        owl:someValuesFrom :holomiktisch ] .</pre><pre codeType="intersection">
:Stillgew&#228;sser_AND_SOME_Zirkulationstyp_IS_holomiktisch a owl:Class ;
    rdfs:subClassOf :Stillgew&#228;sser_Zirkulationstyp_SOME_holomiktisch ;
    owl:equivalentClass [ a owl:Class ;
        owl:intersectionOf ( :Stillgew&#228;sser :SOME_Zirkulationstyp_IS_holomiktisch ) ] .</pre><pre codeType="punning">
# owl 2 punning
    :holomiktisch a owl:Class ;
        rdfs:subClassOf :Zirkulationstyp .

    :holomiktisch rdf:type owl:NamedIndividual ;
        a :holomiktisch .</pre></body></html></richcontent><font ITALIC="true" /><font ITALIC="true" /><font ITALIC="true" /><font ITALIC="true" /></node>
<node TEXT="AP rdfs:comment" ID="ID_843628553" CREATED="1608131886217" MODIFIED="1611064481515" COLOR="#000000" BACKGROUND_COLOR="#ffffff" STYLE="fork">
<node TEXT="vollst&#228;ndige Durchmischung" ID="ID_1971974936" CREATED="1608131886217" MODIFIED="1608131886217" COLOR="#666666" BACKGROUND_COLOR="#ffffff" STYLE="fork"><richcontent TYPE="NOTE"><html><body><pre codeType="owl">
:Stillgew&#228;sser_Zirkulationstyp_SOME_holomiktisch rdfs:comment "AP rdfs:comment" .</pre></body></html></richcontent></node>
<richcontent TYPE="NOTE"><html><body><pre codeType="owl">
# AP, predicate        ID_843628553 2021-01-19 13:54:41

rdfs:comment a owl:AnnotationProperty .</pre></body></html></richcontent><font ITALIC="true" /></node>
<richcontent TYPE="NOTE"><html><body><pre codeType="owl">
# BY, object        ID_1918708915 2021-01-15 12:45:53

:Stillgew&#228;sser_Zirkulationstyp_SOME_holomiktisch a owl:Class ;
            rdfs:subClassOf :Stillgew&#228;sser .</pre></body></html></richcontent><font BOLD="true" /></node>
<richcontent TYPE="NOTE"><html><body><pre codeType="owl">
# BY, predicate        ID_49860073 2021-01-15 11:09:26

:Zirkulationstyp a owl:ObjectProperty .</pre></body></html></richcontent><font ITALIC="true" /></node>
<richcontent TYPE="NOTE"><html><body><pre codeType="owl">
# BY, object        ID_14307755 2021-01-19 14:48:59

:Stillgew&#228;sser a owl:Class ;
            rdfs:subClassOf :Binnengew&#228;sser .</pre></body></html></richcontent><font BOLD="true" /></node>
<node TEXT="_" ID="ID_1060383414" CREATED="1610643564872" MODIFIED="1610714753129" BACKGROUND_COLOR="#ffffff" STYLE="fork">
<node TEXT="SOME str&#246;mungsfrei" ID="ID_1190941229" CREATED="1610643564872" MODIFIED="1610643681837" BACKGROUND_COLOR="#ffffff" STYLE="fork">
<edge COLOR="#cccccc" />
<richcontent TYPE="NOTE"><html><body><pre codeType="verbose">
# SOME, predicate        ID_1190941229 2021-01-14 17:01:21
</pre><pre codeType="restriction">
:SOME_Str&#246;mungsverhalten_IS_str&#246;mungsfrei a owl:Class ;
    owl:equivalentClass [ a owl:Restriction ;
        owl:onProperty :Str&#246;mungsverhalten ;
        owl:someValuesFrom :str&#246;mungsfrei ] .</pre><pre codeType="intersection">
:Binnengew&#228;sser_AND_SOME_Str&#246;mungsverhalten_IS_str&#246;mungsfrei a owl:Class ;
    rdfs:subClassOf :Binnengew&#228;sser_Str&#246;mungsverhalten_SOME_str&#246;mungsfrei ;
    owl:equivalentClass [ a owl:Class ;
        owl:intersectionOf ( :Binnengew&#228;sser :SOME_Str&#246;mungsverhalten_IS_str&#246;mungsfrei ) ] .</pre><pre codeType="punning">
# owl 2 punning
    :str&#246;mungsfrei a owl:Class ;
        rdfs:subClassOf :Str&#246;mungsverhalten .

    :str&#246;mungsfrei rdf:type owl:NamedIndividual ;
        a :str&#246;mungsfrei .</pre></body></html></richcontent><font ITALIC="true" /><font ITALIC="true" /><font ITALIC="true" /><font ITALIC="true" /></node>
<richcontent TYPE="NOTE"><html><body><pre codeType="owl">
# BY, object        ID_1060383414 2021-01-15 12:45:53

:Binnengew&#228;sser_Str&#246;mungsverhalten_SOME_str&#246;mungsfrei a owl:Class ;
            rdfs:subClassOf :Binnengew&#228;sser .</pre></body></html></richcontent><font BOLD="true" /></node>
<richcontent TYPE="NOTE"><html><body><pre codeType="owl">
# BY, predicate        ID_1496671923 2021-01-15 11:09:17

:Str&#246;mungsverhalten a owl:ObjectProperty .</pre></body></html></richcontent><font ITALIC="true" /></node>
<node TEXT="BY Entstehungstyp" ID="ID_73690593" CREATED="1610643564872" MODIFIED="1610708957159" BACKGROUND_COLOR="#ffffff" STYLE="fork">
<node TEXT="_" ID="ID_973479619" CREATED="1610643564872" MODIFIED="1610714753131" BACKGROUND_COLOR="#ffffff" STYLE="fork">
<edge COLOR="#cccccc" />
<node TEXT="SOME nat&#252;rlich entstanden" ID="ID_1200096263" CREATED="1610643564872" MODIFIED="1610643681834" BACKGROUND_COLOR="#ffffff" STYLE="fork">
<edge COLOR="#cccccc" />
<richcontent TYPE="NOTE"><html><body><pre codeType="verbose">
# SOME, predicate        ID_1200096263 2021-01-14 17:01:21
</pre><pre codeType="restriction">
:SOME_Entstehungstyp_IS_nat&#252;rlich_entstanden a owl:Class ;
    owl:equivalentClass [ a owl:Restriction ;
        owl:onProperty :Entstehungstyp ;
        owl:someValuesFrom :nat&#252;rlich_entstanden ] .</pre><pre codeType="intersection">
:Binnengew&#228;sser_AND_SOME_Entstehungstyp_IS_nat&#252;rlich_entstanden a owl:Class ;
    rdfs:subClassOf :Binnengew&#228;sser_Entstehungstyp_SOME_nat&#252;rlich_entstanden ;
    owl:equivalentClass [ a owl:Class ;
        owl:intersectionOf ( :Binnengew&#228;sser :SOME_Entstehungstyp_IS_nat&#252;rlich_entstanden ) ] .</pre><pre codeType="punning">
# owl 2 punning
    :nat&#252;rlich_entstanden a owl:Class ;
        rdfs:subClassOf :Entstehungstyp .

    :nat&#252;rlich_entstanden rdf:type owl:NamedIndividual ;
        a :nat&#252;rlich_entstanden .</pre></body></html></richcontent><font ITALIC="true" /><font ITALIC="true" /><font ITALIC="true" /><font ITALIC="true" /></node>
<richcontent TYPE="NOTE"><html><body><pre codeType="owl">
# BY, object        ID_973479619 2021-01-15 12:45:53

:Binnengew&#228;sser_Entstehungstyp_SOME_nat&#252;rlich_entstanden a owl:Class ;
            rdfs:subClassOf :Binnengew&#228;sser .</pre></body></html></richcontent><font BOLD="true" /></node>
<node TEXT="_" ID="ID_485165036" CREATED="1610643564872" MODIFIED="1610714753131" BACKGROUND_COLOR="#ffffff" STYLE="fork">
<edge COLOR="#cccccc" />
<node TEXT="SOME k&#252;nstlich" ID="ID_1115876563" CREATED="1610643564872" MODIFIED="1610643681834" BACKGROUND_COLOR="#ffffff" STYLE="fork">
<edge COLOR="#cccccc" />
<richcontent TYPE="NOTE"><html><body><pre codeType="verbose">
# SOME, predicate        ID_1115876563 2021-01-14 17:01:21
</pre><pre codeType="restriction">
:SOME_Entstehungstyp_IS_k&#252;nstlich a owl:Class ;
    owl:equivalentClass [ a owl:Restriction ;
        owl:onProperty :Entstehungstyp ;
        owl:someValuesFrom :k&#252;nstlich ] .</pre><pre codeType="intersection">
:Binnengew&#228;sser_AND_SOME_Entstehungstyp_IS_k&#252;nstlich a owl:Class ;
    rdfs:subClassOf :Binnengew&#228;sser_Entstehungstyp_SOME_k&#252;nstlich ;
    owl:equivalentClass [ a owl:Class ;
        owl:intersectionOf ( :Binnengew&#228;sser :SOME_Entstehungstyp_IS_k&#252;nstlich ) ] .</pre><pre codeType="punning">
# owl 2 punning
    :k&#252;nstlich a owl:Class ;
        rdfs:subClassOf :Entstehungstyp .

    :k&#252;nstlich rdf:type owl:NamedIndividual ;
        a :k&#252;nstlich .</pre></body></html></richcontent><font ITALIC="true" /><font ITALIC="true" /><font ITALIC="true" /><font ITALIC="true" /></node>
<richcontent TYPE="NOTE"><html><body><pre codeType="owl">
# BY, object        ID_485165036 2021-01-15 12:45:53

:Binnengew&#228;sser_Entstehungstyp_SOME_k&#252;nstlich a owl:Class ;
            rdfs:subClassOf :Binnengew&#228;sser .</pre></body></html></richcontent><font BOLD="true" /></node>
<richcontent TYPE="NOTE"><html><body><pre codeType="owl">
# BY, predicate        ID_73690593 2021-01-15 11:09:17

:Entstehungstyp a owl:ObjectProperty .</pre></body></html></richcontent><font ITALIC="true" /></node>
<node TEXT="BY Zug&#228;nglichkeit" ID="ID_1099319032" CREATED="1610643564872" MODIFIED="1610708957169" BACKGROUND_COLOR="#ffffff" STYLE="fork">
<node TEXT="_" ID="ID_211063235" CREATED="1610643564873" MODIFIED="1610714753131" BACKGROUND_COLOR="#ffffff" STYLE="fork">
<edge COLOR="#cccccc" />
<node TEXT="SOME offen" ID="ID_713371512" CREATED="1610643564873" MODIFIED="1610643681840" BACKGROUND_COLOR="#ffffff" STYLE="fork">
<edge COLOR="#cccccc" />
<richcontent TYPE="NOTE"><html><body><pre codeType="verbose">
# SOME, predicate        ID_713371512 2021-01-14 17:01:21
</pre><pre codeType="restriction">
:SOME_Zug&#228;nglichkeit_IS_offen a owl:Class ;
    owl:equivalentClass [ a owl:Restriction ;
        owl:onProperty :Zug&#228;nglichkeit ;
        owl:someValuesFrom :offen ] .</pre><pre codeType="intersection">
:Binnengew&#228;sser_AND_SOME_Zug&#228;nglichkeit_IS_offen a owl:Class ;
    rdfs:subClassOf :Binnengew&#228;sser_Zug&#228;nglichkeit_SOME_offen ;
    owl:equivalentClass [ a owl:Class ;
        owl:intersectionOf ( :Binnengew&#228;sser :SOME_Zug&#228;nglichkeit_IS_offen ) ] .</pre><pre codeType="punning">
# owl 2 punning
    :offen a owl:Class ;
        rdfs:subClassOf :Zug&#228;nglichkeit .

    :offen rdf:type owl:NamedIndividual ;
        a :offen .</pre></body></html></richcontent><font ITALIC="true" /><font ITALIC="true" /><font ITALIC="true" /><font ITALIC="true" /></node>
<richcontent TYPE="NOTE"><html><body><pre codeType="owl">
# BY, object        ID_211063235 2021-01-15 12:45:53

:Binnengew&#228;sser_Zug&#228;nglichkeit_SOME_offen a owl:Class ;
            rdfs:subClassOf :Binnengew&#228;sser .</pre></body></html></richcontent><font BOLD="true" /></node>
<node TEXT="_" ID="ID_406809138" CREATED="1610643564873" MODIFIED="1610714753132" BACKGROUND_COLOR="#ffffff" STYLE="fork">
<edge COLOR="#cccccc" />
<node TEXT="SOME geschlossen" ID="ID_1981409047" CREATED="1610643564873" MODIFIED="1610643681842" BACKGROUND_COLOR="#ffffff" STYLE="fork">
<edge COLOR="#cccccc" />
<richcontent TYPE="NOTE"><html><body><pre codeType="verbose">
# SOME, predicate        ID_1981409047 2021-01-14 17:01:21
</pre><pre codeType="restriction">
:SOME_Zug&#228;nglichkeit_IS_geschlossen a owl:Class ;
    owl:equivalentClass [ a owl:Restriction ;
        owl:onProperty :Zug&#228;nglichkeit ;
        owl:someValuesFrom :geschlossen ] .</pre><pre codeType="intersection">
:Binnengew&#228;sser_AND_SOME_Zug&#228;nglichkeit_IS_geschlossen a owl:Class ;
    rdfs:subClassOf :Binnengew&#228;sser_Zug&#228;nglichkeit_SOME_geschlossen ;
    owl:equivalentClass [ a owl:Class ;
        owl:intersectionOf ( :Binnengew&#228;sser :SOME_Zug&#228;nglichkeit_IS_geschlossen ) ] .</pre><pre codeType="punning">
# owl 2 punning
    :geschlossen a owl:Class ;
        rdfs:subClassOf :Zug&#228;nglichkeit .

    :geschlossen rdf:type owl:NamedIndividual ;
        a :geschlossen .</pre></body></html></richcontent><font ITALIC="true" /><font ITALIC="true" /><font ITALIC="true" /><font ITALIC="true" /></node>
<richcontent TYPE="NOTE"><html><body><pre codeType="owl">
# BY, object        ID_406809138 2021-01-15 12:45:53

:Binnengew&#228;sser_Zug&#228;nglichkeit_SOME_geschlossen a owl:Class ;
            rdfs:subClassOf :Binnengew&#228;sser .</pre></body></html></richcontent><font BOLD="true" /></node>
<richcontent TYPE="NOTE"><html><body><pre codeType="owl">
# BY, predicate        ID_1099319032 2021-01-15 11:09:17

:Zug&#228;nglichkeit a owl:ObjectProperty .</pre></body></html></richcontent><font ITALIC="true" /></node>
<node TEXT="BY Entw&#228;sserung" ID="ID_920935240" CREATED="1610643564874" MODIFIED="1610708966476" BACKGROUND_COLOR="#ffffff" STYLE="fork">
<node TEXT="_" ID="ID_1063366294" CREATED="1610643564875" MODIFIED="1610714753132" BACKGROUND_COLOR="#ffffff" STYLE="fork">
<edge COLOR="#cccccc" />
<node TEXT="SOME exorheisch" ID="ID_794463359" CREATED="1610643564875" MODIFIED="1610643681862" BACKGROUND_COLOR="#ffffff" STYLE="fork">
<edge COLOR="#cccccc" />
<richcontent TYPE="NOTE"><html><body><pre codeType="verbose">
# SOME, predicate        ID_794463359 2021-01-14 17:01:21
</pre><pre codeType="restriction">
:SOME_Entw&#228;sserung_IS_exorheisch a owl:Class ;
    owl:equivalentClass [ a owl:Restriction ;
        owl:onProperty :Entw&#228;sserung ;
        owl:someValuesFrom :exorheisch ] .</pre><pre codeType="intersection">
:Binnengew&#228;sser_AND_SOME_Entw&#228;sserung_IS_exorheisch a owl:Class ;
    rdfs:subClassOf :Binnengew&#228;sser_Entw&#228;sserung_SOME_exorheisch ;
    owl:equivalentClass [ a owl:Class ;
        owl:intersectionOf ( :Binnengew&#228;sser :SOME_Entw&#228;sserung_IS_exorheisch ) ] .</pre><pre codeType="punning">
# owl 2 punning
    :exorheisch a owl:Class ;
        rdfs:subClassOf :Entw&#228;sserung .

    :exorheisch rdf:type owl:NamedIndividual ;
        a :exorheisch .</pre></body></html></richcontent><font ITALIC="true" /><font ITALIC="true" /><font ITALIC="true" /><font ITALIC="true" /></node>
<richcontent TYPE="NOTE"><html><body><pre codeType="owl">
# BY, object        ID_1063366294 2021-01-15 12:45:53

:Binnengew&#228;sser_Entw&#228;sserung_SOME_exorheisch a owl:Class ;
            rdfs:subClassOf :Binnengew&#228;sser .</pre></body></html></richcontent><font BOLD="true" /></node>
<node TEXT="_" ID="ID_753060196" CREATED="1610643564875" MODIFIED="1610714753132" BACKGROUND_COLOR="#ffffff" STYLE="fork">
<edge COLOR="#cccccc" />
<node TEXT="SOME endorheisch" ID="ID_58409747" CREATED="1610643564875" MODIFIED="1610643681863" BACKGROUND_COLOR="#ffffff" STYLE="fork">
<edge COLOR="#cccccc" />
<richcontent TYPE="NOTE"><html><body><pre codeType="verbose">
# SOME, predicate        ID_58409747 2021-01-14 17:01:21
</pre><pre codeType="restriction">
:SOME_Entw&#228;sserung_IS_endorheisch a owl:Class ;
    owl:equivalentClass [ a owl:Restriction ;
        owl:onProperty :Entw&#228;sserung ;
        owl:someValuesFrom :endorheisch ] .</pre><pre codeType="intersection">
:Binnengew&#228;sser_AND_SOME_Entw&#228;sserung_IS_endorheisch a owl:Class ;
    rdfs:subClassOf :Binnengew&#228;sser_Entw&#228;sserung_SOME_endorheisch ;
    owl:equivalentClass [ a owl:Class ;
        owl:intersectionOf ( :Binnengew&#228;sser :SOME_Entw&#228;sserung_IS_endorheisch ) ] .</pre><pre codeType="punning">
# owl 2 punning
    :endorheisch a owl:Class ;
        rdfs:subClassOf :Entw&#228;sserung .

    :endorheisch rdf:type owl:NamedIndividual ;
        a :endorheisch .</pre></body></html></richcontent><font ITALIC="true" /><font ITALIC="true" /><font ITALIC="true" /><font ITALIC="true" /></node>
<richcontent TYPE="NOTE"><html><body><pre codeType="owl">
# BY, object        ID_753060196 2021-01-15 12:45:53

:Binnengew&#228;sser_Entw&#228;sserung_SOME_endorheisch a owl:Class ;
            rdfs:subClassOf :Binnengew&#228;sser .</pre></body></html></richcontent><font BOLD="true" /></node>
<richcontent TYPE="NOTE"><html><body><pre codeType="owl">
# BY, predicate        ID_920935240 2021-01-15 11:09:26

:Entw&#228;sserung a owl:ObjectProperty .</pre></body></html></richcontent><font ITALIC="true" /></node>
<node TEXT="BY Wasserf&#252;hrung im Zeitverlauf" ID="ID_894905855" CREATED="1610643564875" MODIFIED="1610708971077" BACKGROUND_COLOR="#ffffff" STYLE="fork">
<node TEXT="_" ID="ID_160014632" CREATED="1610643564876" MODIFIED="1610714753132" BACKGROUND_COLOR="#ffffff" STYLE="fork">
<edge COLOR="#cccccc" />
<node TEXT="SOME perennierend" ID="ID_831441045" CREATED="1610643564876" MODIFIED="1610643681868" BACKGROUND_COLOR="#ffffff" STYLE="fork">
<edge COLOR="#cccccc" />
<richcontent TYPE="NOTE"><html><body><pre codeType="verbose">
# SOME, predicate        ID_831441045 2021-01-14 17:01:21
</pre><pre codeType="restriction">
:SOME_Wasserf&#252;hrung_im_Zeitverlauf_IS_perennierend a owl:Class ;
    owl:equivalentClass [ a owl:Restriction ;
        owl:onProperty :Wasserf&#252;hrung_im_Zeitverlauf ;
        owl:someValuesFrom :perennierend ] .</pre><pre codeType="intersection">
:Binnengew&#228;sser_AND_SOME_Wasserf&#252;hrung_im_Zeitverlauf_IS_perennierend a owl:Class ;
    rdfs:subClassOf :Binnengew&#228;sser_Wasserf&#252;hrung_im_Zeitverlauf_SOME_perennierend ;
    owl:equivalentClass [ a owl:Class ;
        owl:intersectionOf ( :Binnengew&#228;sser :SOME_Wasserf&#252;hrung_im_Zeitverlauf_IS_perennierend ) ] .</pre><pre codeType="punning">
# owl 2 punning
    :perennierend a owl:Class ;
        rdfs:subClassOf :Wasserf&#252;hrung_im_Zeitverlauf .

    :perennierend rdf:type owl:NamedIndividual ;
        a :perennierend .</pre></body></html></richcontent><font ITALIC="true" /><font ITALIC="true" /><font ITALIC="true" /><font ITALIC="true" /></node>
<richcontent TYPE="NOTE"><html><body><pre codeType="owl">
# BY, object        ID_160014632 2021-01-15 12:45:53

:Binnengew&#228;sser_Wasserf&#252;hrung_im_Zeitverlauf_SOME_perennierend a owl:Class ;
            rdfs:subClassOf :Binnengew&#228;sser .</pre></body></html></richcontent><font BOLD="true" /></node>
<node TEXT="_" ID="ID_675547391" CREATED="1610643564876" MODIFIED="1610714753132" BACKGROUND_COLOR="#ffffff" STYLE="fork">
<edge COLOR="#cccccc" />
<node TEXT="SOME intermittierend" ID="ID_194233139" CREATED="1610643564876" MODIFIED="1610643681869" BACKGROUND_COLOR="#ffffff" STYLE="fork">
<edge COLOR="#cccccc" />
<richcontent TYPE="NOTE"><html><body><pre codeType="verbose">
# SOME, predicate        ID_194233139 2021-01-14 17:01:21
</pre><pre codeType="restriction">
:SOME_Wasserf&#252;hrung_im_Zeitverlauf_IS_intermittierend a owl:Class ;
    owl:equivalentClass [ a owl:Restriction ;
        owl:onProperty :Wasserf&#252;hrung_im_Zeitverlauf ;
        owl:someValuesFrom :intermittierend ] .</pre><pre codeType="intersection">
:Binnengew&#228;sser_AND_SOME_Wasserf&#252;hrung_im_Zeitverlauf_IS_intermittierend a owl:Class ;
    rdfs:subClassOf :Binnengew&#228;sser_Wasserf&#252;hrung_im_Zeitverlauf_SOME_intermittierend ;
    owl:equivalentClass [ a owl:Class ;
        owl:intersectionOf ( :Binnengew&#228;sser :SOME_Wasserf&#252;hrung_im_Zeitverlauf_IS_intermittierend ) ] .</pre><pre codeType="punning">
# owl 2 punning
    :intermittierend a owl:Class ;
        rdfs:subClassOf :Wasserf&#252;hrung_im_Zeitverlauf .

    :intermittierend rdf:type owl:NamedIndividual ;
        a :intermittierend .</pre></body></html></richcontent><font ITALIC="true" /><font ITALIC="true" /><font ITALIC="true" /><font ITALIC="true" /></node>
<richcontent TYPE="NOTE"><html><body><pre codeType="owl">
# BY, object        ID_675547391 2021-01-15 12:45:53

:Binnengew&#228;sser_Wasserf&#252;hrung_im_Zeitverlauf_SOME_intermittierend a owl:Class ;
            rdfs:subClassOf :Binnengew&#228;sser .</pre></body></html></richcontent><font BOLD="true" /></node>
<node TEXT="_" ID="ID_1189579234" CREATED="1610643564876" MODIFIED="1610714753132" BACKGROUND_COLOR="#ffffff" STYLE="fork">
<edge COLOR="#cccccc" />
<node TEXT="SOME periodisch" ID="ID_1118786963" CREATED="1610643564876" MODIFIED="1610643681870" BACKGROUND_COLOR="#ffffff" STYLE="fork">
<edge COLOR="#cccccc" />
<richcontent TYPE="NOTE"><html><body><pre codeType="verbose">
# SOME, predicate        ID_1118786963 2021-01-14 17:01:21
</pre><pre codeType="restriction">
:SOME_Wasserf&#252;hrung_im_Zeitverlauf_IS_periodisch a owl:Class ;
    owl:equivalentClass [ a owl:Restriction ;
        owl:onProperty :Wasserf&#252;hrung_im_Zeitverlauf ;
        owl:someValuesFrom :periodisch ] .</pre><pre codeType="intersection">
:Binnengew&#228;sser_AND_SOME_Wasserf&#252;hrung_im_Zeitverlauf_IS_periodisch a owl:Class ;
    rdfs:subClassOf :Binnengew&#228;sser_Wasserf&#252;hrung_im_Zeitverlauf_SOME_periodisch ;
    owl:equivalentClass [ a owl:Class ;
        owl:intersectionOf ( :Binnengew&#228;sser :SOME_Wasserf&#252;hrung_im_Zeitverlauf_IS_periodisch ) ] .</pre><pre codeType="punning">
# owl 2 punning
    :periodisch a owl:Class ;
        rdfs:subClassOf :Wasserf&#252;hrung_im_Zeitverlauf .

    :periodisch rdf:type owl:NamedIndividual ;
        a :periodisch .</pre></body></html></richcontent><font ITALIC="true" /><font ITALIC="true" /><font ITALIC="true" /><font ITALIC="true" /></node>
<richcontent TYPE="NOTE"><html><body><pre codeType="owl">
# BY, object        ID_1189579234 2021-01-15 12:45:53

:Binnengew&#228;sser_Wasserf&#252;hrung_im_Zeitverlauf_SOME_periodisch a owl:Class ;
            rdfs:subClassOf :Binnengew&#228;sser .</pre></body></html></richcontent><font BOLD="true" /></node>
<node TEXT="_" ID="ID_1300386613" CREATED="1610643564876" MODIFIED="1610714753132" BACKGROUND_COLOR="#ffffff" STYLE="fork">
<edge COLOR="#cccccc" />
<node TEXT="SOME episodisch" ID="ID_1691170788" CREATED="1610643564876" MODIFIED="1610643681872" BACKGROUND_COLOR="#ffffff" STYLE="fork">
<edge COLOR="#cccccc" />
<richcontent TYPE="NOTE"><html><body><pre codeType="verbose">
# SOME, predicate        ID_1691170788 2021-01-14 17:01:21
</pre><pre codeType="restriction">
:SOME_Wasserf&#252;hrung_im_Zeitverlauf_IS_episodisch a owl:Class ;
    owl:equivalentClass [ a owl:Restriction ;
        owl:onProperty :Wasserf&#252;hrung_im_Zeitverlauf ;
        owl:someValuesFrom :episodisch ] .</pre><pre codeType="intersection">
:Binnengew&#228;sser_AND_SOME_Wasserf&#252;hrung_im_Zeitverlauf_IS_episodisch a owl:Class ;
    rdfs:subClassOf :Binnengew&#228;sser_Wasserf&#252;hrung_im_Zeitverlauf_SOME_episodisch ;
    owl:equivalentClass [ a owl:Class ;
        owl:intersectionOf ( :Binnengew&#228;sser :SOME_Wasserf&#252;hrung_im_Zeitverlauf_IS_episodisch ) ] .</pre><pre codeType="punning">
# owl 2 punning
    :episodisch a owl:Class ;
        rdfs:subClassOf :Wasserf&#252;hrung_im_Zeitverlauf .

    :episodisch rdf:type owl:NamedIndividual ;
        a :episodisch .</pre></body></html></richcontent><font ITALIC="true" /><font ITALIC="true" /><font ITALIC="true" /><font ITALIC="true" /></node>
<richcontent TYPE="NOTE"><html><body><pre codeType="owl">
# BY, object        ID_1300386613 2021-01-15 12:45:53

:Binnengew&#228;sser_Wasserf&#252;hrung_im_Zeitverlauf_SOME_episodisch a owl:Class ;
            rdfs:subClassOf :Binnengew&#228;sser .</pre></body></html></richcontent><font BOLD="true" /></node>
<node TEXT="_" ID="ID_105758235" CREATED="1610643564876" MODIFIED="1610714753132" BACKGROUND_COLOR="#ffffff" STYLE="fork">
<edge COLOR="#cccccc" />
<node TEXT="SOME ephemer" ID="ID_222571109" CREATED="1610643564876" MODIFIED="1610643681873" BACKGROUND_COLOR="#ffffff" STYLE="fork">
<edge COLOR="#cccccc" />
<richcontent TYPE="NOTE"><html><body><pre codeType="verbose">
# SOME, predicate        ID_222571109 2021-01-14 17:01:21
</pre><pre codeType="restriction">
:SOME_Wasserf&#252;hrung_im_Zeitverlauf_IS_ephemer a owl:Class ;
    owl:equivalentClass [ a owl:Restriction ;
        owl:onProperty :Wasserf&#252;hrung_im_Zeitverlauf ;
        owl:someValuesFrom :ephemer ] .</pre><pre codeType="intersection">
:Binnengew&#228;sser_AND_SOME_Wasserf&#252;hrung_im_Zeitverlauf_IS_ephemer a owl:Class ;
    rdfs:subClassOf :Binnengew&#228;sser_Wasserf&#252;hrung_im_Zeitverlauf_SOME_ephemer ;
    owl:equivalentClass [ a owl:Class ;
        owl:intersectionOf ( :Binnengew&#228;sser :SOME_Wasserf&#252;hrung_im_Zeitverlauf_IS_ephemer ) ] .</pre><pre codeType="punning">
# owl 2 punning
    :ephemer a owl:Class ;
        rdfs:subClassOf :Wasserf&#252;hrung_im_Zeitverlauf .

    :ephemer rdf:type owl:NamedIndividual ;
        a :ephemer .</pre></body></html></richcontent><font ITALIC="true" /><font ITALIC="true" /><font ITALIC="true" /><font ITALIC="true" /></node>
<richcontent TYPE="NOTE"><html><body><pre codeType="owl">
# BY, object        ID_105758235 2021-01-15 12:45:53

:Binnengew&#228;sser_Wasserf&#252;hrung_im_Zeitverlauf_SOME_ephemer a owl:Class ;
            rdfs:subClassOf :Binnengew&#228;sser .</pre></body></html></richcontent><font BOLD="true" /></node>
<richcontent TYPE="NOTE"><html><body><pre codeType="owl">
# BY, predicate        ID_894905855 2021-01-15 11:09:31

:Wasserf&#252;hrung_im_Zeitverlauf a owl:ObjectProperty .</pre></body></html></richcontent><font ITALIC="true" /></node>
<node TEXT="BY Gew&#228;sserfarbe" ID="ID_1615616572" CREATED="1610643564878" MODIFIED="1610708982336" BACKGROUND_COLOR="#ffffff" STYLE="fork">
<node TEXT="_" ID="ID_1892135924" CREATED="1610643564879" MODIFIED="1610714753132" BACKGROUND_COLOR="#ffffff" STYLE="fork">
<edge COLOR="#cccccc" />
<node TEXT="SOME dunkeltr&#252;b" ID="ID_1394896133" CREATED="1610643564879" MODIFIED="1610643681888" BACKGROUND_COLOR="#ffffff" STYLE="fork">
<edge COLOR="#cccccc" />
<richcontent TYPE="NOTE"><html><body><pre codeType="verbose">
# SOME, predicate        ID_1394896133 2021-01-14 17:01:21
</pre><pre codeType="restriction">
:SOME_Gew&#228;sserfarbe_IS_dunkeltr&#252;b a owl:Class ;
    owl:equivalentClass [ a owl:Restriction ;
        owl:onProperty :Gew&#228;sserfarbe ;
        owl:someValuesFrom :dunkeltr&#252;b ] .</pre><pre codeType="intersection">
:Binnengew&#228;sser_AND_SOME_Gew&#228;sserfarbe_IS_dunkeltr&#252;b a owl:Class ;
    rdfs:subClassOf :Binnengew&#228;sser_Gew&#228;sserfarbe_SOME_dunkeltr&#252;b ;
    owl:equivalentClass [ a owl:Class ;
        owl:intersectionOf ( :Binnengew&#228;sser :SOME_Gew&#228;sserfarbe_IS_dunkeltr&#252;b ) ] .</pre><pre codeType="punning">
# owl 2 punning
    :dunkeltr&#252;b a owl:Class ;
        rdfs:subClassOf :Gew&#228;sserfarbe .

    :dunkeltr&#252;b rdf:type owl:NamedIndividual ;
        a :dunkeltr&#252;b .</pre></body></html></richcontent><font ITALIC="true" /><font ITALIC="true" /><font ITALIC="true" /><font ITALIC="true" /></node>
<richcontent TYPE="NOTE"><html><body><pre codeType="owl">
# BY, object        ID_1892135924 2021-01-15 12:45:53

:Binnengew&#228;sser_Gew&#228;sserfarbe_SOME_dunkeltr&#252;b a owl:Class ;
            rdfs:subClassOf :Binnengew&#228;sser .</pre></body></html></richcontent><font BOLD="true" /></node>
<node TEXT="_" ID="ID_1505657181" CREATED="1610643564879" MODIFIED="1610714753133" BACKGROUND_COLOR="#ffffff" STYLE="fork">
<edge COLOR="#cccccc" />
<node TEXT="SOME helltr&#252;b" ID="ID_1562230078" CREATED="1610643564879" MODIFIED="1610643681890" BACKGROUND_COLOR="#ffffff" STYLE="fork">
<edge COLOR="#cccccc" />
<richcontent TYPE="NOTE"><html><body><pre codeType="verbose">
# SOME, predicate        ID_1562230078 2021-01-14 17:01:21
</pre><pre codeType="restriction">
:SOME_Gew&#228;sserfarbe_IS_helltr&#252;b a owl:Class ;
    owl:equivalentClass [ a owl:Restriction ;
        owl:onProperty :Gew&#228;sserfarbe ;
        owl:someValuesFrom :helltr&#252;b ] .</pre><pre codeType="intersection">
:Binnengew&#228;sser_AND_SOME_Gew&#228;sserfarbe_IS_helltr&#252;b a owl:Class ;
    rdfs:subClassOf :Binnengew&#228;sser_Gew&#228;sserfarbe_SOME_helltr&#252;b ;
    owl:equivalentClass [ a owl:Class ;
        owl:intersectionOf ( :Binnengew&#228;sser :SOME_Gew&#228;sserfarbe_IS_helltr&#252;b ) ] .</pre><pre codeType="punning">
# owl 2 punning
    :helltr&#252;b a owl:Class ;
        rdfs:subClassOf :Gew&#228;sserfarbe .

    :helltr&#252;b rdf:type owl:NamedIndividual ;
        a :helltr&#252;b .</pre></body></html></richcontent><font ITALIC="true" /><font ITALIC="true" /><font ITALIC="true" /><font ITALIC="true" /></node>
<richcontent TYPE="NOTE"><html><body><pre codeType="owl">
# BY, object        ID_1505657181 2021-01-15 12:45:53

:Binnengew&#228;sser_Gew&#228;sserfarbe_SOME_helltr&#252;b a owl:Class ;
            rdfs:subClassOf :Binnengew&#228;sser .</pre></body></html></richcontent><font BOLD="true" /></node>
<node TEXT="_" ID="ID_1485251535" CREATED="1610643564879" MODIFIED="1610714753133" BACKGROUND_COLOR="#ffffff" STYLE="fork">
<edge COLOR="#cccccc" />
<node TEXT="SOME klar" ID="ID_1465625780" CREATED="1610643564879" MODIFIED="1610643681891" BACKGROUND_COLOR="#ffffff" STYLE="fork">
<edge COLOR="#cccccc" />
<richcontent TYPE="NOTE"><html><body><pre codeType="verbose">
# SOME, predicate        ID_1465625780 2021-01-14 17:01:21
</pre><pre codeType="restriction">
:SOME_Gew&#228;sserfarbe_IS_klar a owl:Class ;
    owl:equivalentClass [ a owl:Restriction ;
        owl:onProperty :Gew&#228;sserfarbe ;
        owl:someValuesFrom :klar ] .</pre><pre codeType="intersection">
:Binnengew&#228;sser_AND_SOME_Gew&#228;sserfarbe_IS_klar a owl:Class ;
    rdfs:subClassOf :Binnengew&#228;sser_Gew&#228;sserfarbe_SOME_klar ;
    owl:equivalentClass [ a owl:Class ;
        owl:intersectionOf ( :Binnengew&#228;sser :SOME_Gew&#228;sserfarbe_IS_klar ) ] .</pre><pre codeType="punning">
# owl 2 punning
    :klar a owl:Class ;
        rdfs:subClassOf :Gew&#228;sserfarbe .

    :klar rdf:type owl:NamedIndividual ;
        a :klar .</pre></body></html></richcontent><font ITALIC="true" /><font ITALIC="true" /><font ITALIC="true" /><font ITALIC="true" /></node>
<richcontent TYPE="NOTE"><html><body><pre codeType="owl">
# BY, object        ID_1485251535 2021-01-15 12:45:53

:Binnengew&#228;sser_Gew&#228;sserfarbe_SOME_klar a owl:Class ;
            rdfs:subClassOf :Binnengew&#228;sser .</pre></body></html></richcontent><font BOLD="true" /></node>
<richcontent TYPE="NOTE"><html><body><pre codeType="owl">
# BY, predicate        ID_1615616572 2021-01-15 11:09:42

:Gew&#228;sserfarbe a owl:ObjectProperty .</pre></body></html></richcontent><font ITALIC="true" /></node>
<richcontent TYPE="NOTE"><html><body><pre codeType="owl">
# BY, object        ID_1142058703 2021-01-15 11:09:08

:Binnengew&#228;sser a owl:Class ;
            rdfs:subClassOf :Gew&#228;sser .</pre></body></html></richcontent><font BOLD="true" /></node>
<richcontent TYPE="NOTE"><html><body><pre codeType="owl">
# BY, predicate        ID_442938628 2021-01-14 17:01:21

:Stellung_im_Gew&#228;ssersystem a owl:ObjectProperty .</pre></body></html></richcontent><font ITALIC="true" /></node>
<node TEXT="BY Trennung vom Meer" ID="ID_1441797657" CREATED="1610643564880" MODIFIED="1610708993940" BACKGROUND_COLOR="#ffffff" STYLE="fork">
<node TEXT="_" ID="ID_519344887" CREATED="1610643564881" MODIFIED="1610714753133" BACKGROUND_COLOR="#ffffff" STYLE="fork">
<edge COLOR="#cccccc" />
<node TEXT="SOME Inselkette" ID="ID_1032892243" CREATED="1610643564881" MODIFIED="1610643681894" BACKGROUND_COLOR="#ffffff" STYLE="fork">
<edge COLOR="#cccccc" />
<richcontent TYPE="NOTE"><html><body><pre codeType="verbose">
# SOME, predicate        ID_1032892243 2021-01-14 17:01:21
</pre><pre codeType="restriction">
:SOME_Trennung_vom_Meer_IS_Inselkette a owl:Class ;
    owl:equivalentClass [ a owl:Restriction ;
        owl:onProperty :Trennung_vom_Meer ;
        owl:someValuesFrom :Inselkette ] .</pre><pre codeType="intersection">
:Gew&#228;sser_AND_SOME_Trennung_vom_Meer_IS_Inselkette a owl:Class ;
    rdfs:subClassOf :Gew&#228;sser_Trennung_vom_Meer_SOME_Inselkette ;
    owl:equivalentClass [ a owl:Class ;
        owl:intersectionOf ( :Gew&#228;sser :SOME_Trennung_vom_Meer_IS_Inselkette ) ] .</pre><pre codeType="punning">
# owl 2 punning
    :Inselkette a owl:Class ;
        rdfs:subClassOf :Trennung_vom_Meer .

    :Inselkette rdf:type owl:NamedIndividual ;
        a :Inselkette .</pre></body></html></richcontent><font ITALIC="true" /><font ITALIC="true" /><font ITALIC="true" /><font ITALIC="true" /></node>
<richcontent TYPE="NOTE"><html><body><pre codeType="owl">
# BY, object        ID_519344887 2021-01-15 12:45:53

:Gew&#228;sser_Trennung_vom_Meer_SOME_Inselkette a owl:Class ;
            rdfs:subClassOf :Gew&#228;sser .</pre></body></html></richcontent><font BOLD="true" /></node>
<node TEXT="_" ID="ID_1551063691" CREATED="1610643564881" MODIFIED="1610714753133" BACKGROUND_COLOR="#ffffff" STYLE="fork">
<edge COLOR="#cccccc" />
<node TEXT="SOME Festland" ID="ID_615412304" CREATED="1610643564881" MODIFIED="1610643681895" BACKGROUND_COLOR="#ffffff" STYLE="fork">
<edge COLOR="#cccccc" />
<richcontent TYPE="NOTE"><html><body><pre codeType="verbose">
# SOME, predicate        ID_615412304 2021-01-14 17:01:21
</pre><pre codeType="restriction">
:SOME_Trennung_vom_Meer_IS_Festland a owl:Class ;
    owl:equivalentClass [ a owl:Restriction ;
        owl:onProperty :Trennung_vom_Meer ;
        owl:someValuesFrom :Festland ] .</pre><pre codeType="intersection">
:Gew&#228;sser_AND_SOME_Trennung_vom_Meer_IS_Festland a owl:Class ;
    rdfs:subClassOf :Gew&#228;sser_Trennung_vom_Meer_SOME_Festland ;
    owl:equivalentClass [ a owl:Class ;
        owl:intersectionOf ( :Gew&#228;sser :SOME_Trennung_vom_Meer_IS_Festland ) ] .</pre><pre codeType="punning">
# owl 2 punning
    :Festland a owl:Class ;
        rdfs:subClassOf :Trennung_vom_Meer .

    :Festland rdf:type owl:NamedIndividual ;
        a :Festland .</pre></body></html></richcontent><font ITALIC="true" /><font ITALIC="true" /><font ITALIC="true" /><font ITALIC="true" /></node>
<richcontent TYPE="NOTE"><html><body><pre codeType="owl">
# BY, object        ID_1551063691 2021-01-15 12:45:53

:Gew&#228;sser_Trennung_vom_Meer_SOME_Festland a owl:Class ;
            rdfs:subClassOf :Gew&#228;sser .</pre></body></html></richcontent><font BOLD="true" /></node>
<node TEXT="_" ID="ID_1425072278" CREATED="1610643564881" MODIFIED="1610714753133" BACKGROUND_COLOR="#ffffff" STYLE="fork">
<edge COLOR="#cccccc" />
<node TEXT="SOME Meeresschwelle" ID="ID_1799155439" CREATED="1610643564881" MODIFIED="1610643681896" BACKGROUND_COLOR="#ffffff" STYLE="fork">
<edge COLOR="#cccccc" />
<richcontent TYPE="NOTE"><html><body><pre codeType="verbose">
# SOME, predicate        ID_1799155439 2021-01-14 17:01:21
</pre><pre codeType="restriction">
:SOME_Trennung_vom_Meer_IS_Meeresschwelle a owl:Class ;
    owl:equivalentClass [ a owl:Restriction ;
        owl:onProperty :Trennung_vom_Meer ;
        owl:someValuesFrom :Meeresschwelle ] .</pre><pre codeType="intersection">
:Gew&#228;sser_AND_SOME_Trennung_vom_Meer_IS_Meeresschwelle a owl:Class ;
    rdfs:subClassOf :Gew&#228;sser_Trennung_vom_Meer_SOME_Meeresschwelle ;
    owl:equivalentClass [ a owl:Class ;
        owl:intersectionOf ( :Gew&#228;sser :SOME_Trennung_vom_Meer_IS_Meeresschwelle ) ] .</pre><pre codeType="punning">
# owl 2 punning
    :Meeresschwelle a owl:Class ;
        rdfs:subClassOf :Trennung_vom_Meer .

    :Meeresschwelle rdf:type owl:NamedIndividual ;
        a :Meeresschwelle .</pre></body></html></richcontent><font ITALIC="true" /><font ITALIC="true" /><font ITALIC="true" /><font ITALIC="true" /></node>
<richcontent TYPE="NOTE"><html><body><pre codeType="owl">
# BY, object        ID_1425072278 2021-01-15 12:45:53

:Gew&#228;sser_Trennung_vom_Meer_SOME_Meeresschwelle a owl:Class ;
            rdfs:subClassOf :Gew&#228;sser .</pre></body></html></richcontent><font BOLD="true" /></node>
<node TEXT="_" ID="ID_1217435053" CREATED="1610643564881" MODIFIED="1610714753133" BACKGROUND_COLOR="#ffffff" STYLE="fork">
<edge COLOR="#cccccc" />
<node TEXT="SOME Meerenge" ID="ID_687836719" CREATED="1610643564881" MODIFIED="1610643681897" BACKGROUND_COLOR="#ffffff" STYLE="fork">
<edge COLOR="#cccccc" />
<richcontent TYPE="NOTE"><html><body><pre codeType="verbose">
# SOME, predicate        ID_687836719 2021-01-14 17:01:21
</pre><pre codeType="restriction">
:SOME_Trennung_vom_Meer_IS_Meerenge a owl:Class ;
    owl:equivalentClass [ a owl:Restriction ;
        owl:onProperty :Trennung_vom_Meer ;
        owl:someValuesFrom :Meerenge ] .</pre><pre codeType="intersection">
:Gew&#228;sser_AND_SOME_Trennung_vom_Meer_IS_Meerenge a owl:Class ;
    rdfs:subClassOf :Gew&#228;sser_Trennung_vom_Meer_SOME_Meerenge ;
    owl:equivalentClass [ a owl:Class ;
        owl:intersectionOf ( :Gew&#228;sser :SOME_Trennung_vom_Meer_IS_Meerenge ) ] .</pre><pre codeType="punning">
# owl 2 punning
    :Meerenge a owl:Class ;
        rdfs:subClassOf :Trennung_vom_Meer .

    :Meerenge rdf:type owl:NamedIndividual ;
        a :Meerenge .</pre></body></html></richcontent><font ITALIC="true" /><font ITALIC="true" /><font ITALIC="true" /><font ITALIC="true" /></node>
<richcontent TYPE="NOTE"><html><body><pre codeType="owl">
# BY, object        ID_1217435053 2021-01-15 12:45:53

:Gew&#228;sser_Trennung_vom_Meer_SOME_Meerenge a owl:Class ;
            rdfs:subClassOf :Gew&#228;sser .</pre></body></html></richcontent><font BOLD="true" /></node>
<richcontent TYPE="NOTE"><html><body><pre codeType="owl">
# BY, predicate        ID_1441797657 2021-01-15 11:09:53

:Trennung_vom_Meer a owl:ObjectProperty .</pre></body></html></richcontent><font ITALIC="true" /></node>
<node TEXT="BY Gr&#246;&#223;e" ID="ID_857781736" CREATED="1610643564873" MODIFIED="1610643681842" BACKGROUND_COLOR="#ffffff" STYLE="fork">
<edge COLOR="#cccccc" />
<node TEXT="_" ID="ID_140977439" CREATED="1610643564874" MODIFIED="1610714753133" BACKGROUND_COLOR="#ffffff" STYLE="fork">
<edge COLOR="#cccccc" />
<node TEXT="SOME sehr gro&#223;" ID="ID_1296867438" CREATED="1610643564874" MODIFIED="1610643681844" BACKGROUND_COLOR="#ffffff" STYLE="fork">
<edge COLOR="#cccccc" />
<richcontent TYPE="NOTE"><html><body><pre codeType="verbose">
# SOME, predicate        ID_1296867438 2021-01-14 17:01:21
</pre><pre codeType="restriction">
:SOME_Gr&#246;&#223;e_IS_sehr_gro&#223; a owl:Class ;
    owl:equivalentClass [ a owl:Restriction ;
        owl:onProperty :Gr&#246;&#223;e ;
        owl:someValuesFrom :sehr_gro&#223; ] .</pre><pre codeType="intersection">
:Gew&#228;sser_AND_SOME_Gr&#246;&#223;e_IS_sehr_gro&#223; a owl:Class ;
    rdfs:subClassOf :Gew&#228;sser_Gr&#246;&#223;e_SOME_sehr_gro&#223; ;
    owl:equivalentClass [ a owl:Class ;
        owl:intersectionOf ( :Gew&#228;sser :SOME_Gr&#246;&#223;e_IS_sehr_gro&#223; ) ] .</pre><pre codeType="punning">
# owl 2 punning
    :sehr_gro&#223; a owl:Class ;
        rdfs:subClassOf :Gr&#246;&#223;e .

    :sehr_gro&#223; rdf:type owl:NamedIndividual ;
        a :sehr_gro&#223; .</pre></body></html></richcontent><font ITALIC="true" /><font ITALIC="true" /><font ITALIC="true" /><font ITALIC="true" /></node>
<richcontent TYPE="NOTE"><html><body><pre codeType="owl">
# BY, object        ID_140977439 2021-01-15 12:45:53

:Gew&#228;sser_Gr&#246;&#223;e_SOME_sehr_gro&#223; a owl:Class ;
            rdfs:subClassOf :Gew&#228;sser .</pre></body></html></richcontent><font BOLD="true" /></node>
<node TEXT="_" ID="ID_1005344841" CREATED="1610643564874" MODIFIED="1610714753134" BACKGROUND_COLOR="#ffffff" STYLE="fork">
<edge COLOR="#cccccc" />
<node TEXT="SOME gro&#223;" ID="ID_590939326" CREATED="1610643564874" MODIFIED="1610643681846" BACKGROUND_COLOR="#ffffff" STYLE="fork">
<edge COLOR="#cccccc" />
<richcontent TYPE="NOTE"><html><body><pre codeType="verbose">
# SOME, predicate        ID_590939326 2021-01-14 17:01:21
</pre><pre codeType="restriction">
:SOME_Gr&#246;&#223;e_IS_gro&#223; a owl:Class ;
    owl:equivalentClass [ a owl:Restriction ;
        owl:onProperty :Gr&#246;&#223;e ;
        owl:someValuesFrom :gro&#223; ] .</pre><pre codeType="intersection">
:Gew&#228;sser_AND_SOME_Gr&#246;&#223;e_IS_gro&#223; a owl:Class ;
    rdfs:subClassOf :Gew&#228;sser_Gr&#246;&#223;e_SOME_gro&#223; ;
    owl:equivalentClass [ a owl:Class ;
        owl:intersectionOf ( :Gew&#228;sser :SOME_Gr&#246;&#223;e_IS_gro&#223; ) ] .</pre><pre codeType="punning">
# owl 2 punning
    :gro&#223; a owl:Class ;
        rdfs:subClassOf :Gr&#246;&#223;e .

    :gro&#223; rdf:type owl:NamedIndividual ;
        a :gro&#223; .</pre></body></html></richcontent><font ITALIC="true" /><font ITALIC="true" /><font ITALIC="true" /><font ITALIC="true" /></node>
<richcontent TYPE="NOTE"><html><body><pre codeType="owl">
# BY, object        ID_1005344841 2021-01-15 12:45:53

:Gew&#228;sser_Gr&#246;&#223;e_SOME_gro&#223; a owl:Class ;
            rdfs:subClassOf :Gew&#228;sser .</pre></body></html></richcontent><font BOLD="true" /></node>
<node TEXT="_" ID="ID_238117282" CREATED="1610643564874" MODIFIED="1610714753134" BACKGROUND_COLOR="#ffffff" STYLE="fork">
<edge COLOR="#cccccc" />
<node TEXT="SOME klein" ID="ID_1835414424" CREATED="1610643564874" MODIFIED="1610643681847" BACKGROUND_COLOR="#ffffff" STYLE="fork">
<edge COLOR="#cccccc" />
<richcontent TYPE="NOTE"><html><body><pre codeType="verbose">
# SOME, predicate        ID_1835414424 2021-01-14 17:01:21
</pre><pre codeType="restriction">
:SOME_Gr&#246;&#223;e_IS_klein a owl:Class ;
    owl:equivalentClass [ a owl:Restriction ;
        owl:onProperty :Gr&#246;&#223;e ;
        owl:someValuesFrom :klein ] .</pre><pre codeType="intersection">
:Gew&#228;sser_AND_SOME_Gr&#246;&#223;e_IS_klein a owl:Class ;
    rdfs:subClassOf :Gew&#228;sser_Gr&#246;&#223;e_SOME_klein ;
    owl:equivalentClass [ a owl:Class ;
        owl:intersectionOf ( :Gew&#228;sser :SOME_Gr&#246;&#223;e_IS_klein ) ] .</pre><pre codeType="punning">
# owl 2 punning
    :klein a owl:Class ;
        rdfs:subClassOf :Gr&#246;&#223;e .

    :klein rdf:type owl:NamedIndividual ;
        a :klein .</pre></body></html></richcontent><font ITALIC="true" /><font ITALIC="true" /><font ITALIC="true" /><font ITALIC="true" /></node>
<richcontent TYPE="NOTE"><html><body><pre codeType="owl">
# BY, object        ID_238117282 2021-01-15 12:45:53

:Gew&#228;sser_Gr&#246;&#223;e_SOME_klein a owl:Class ;
            rdfs:subClassOf :Gew&#228;sser .</pre></body></html></richcontent><font BOLD="true" /></node>
<richcontent TYPE="NOTE"><html><body><pre codeType="owl">
# BY, predicate        ID_857781736 2021-01-14 17:01:21

:Gr&#246;&#223;e a owl:ObjectProperty .</pre></body></html></richcontent><font ITALIC="true" /></node>
<node TEXT="BY Tiefe" ID="ID_355458390" CREATED="1610643564874" MODIFIED="1610643681848" BACKGROUND_COLOR="#ffffff" STYLE="fork">
<edge COLOR="#cccccc" />
<node TEXT="_" ID="ID_1409184999" CREATED="1610643564874" MODIFIED="1610714753134" BACKGROUND_COLOR="#ffffff" STYLE="fork">
<edge COLOR="#cccccc" />
<node TEXT="SOME tief" ID="ID_1381472202" CREATED="1610643564874" MODIFIED="1610643681852" BACKGROUND_COLOR="#ffffff" STYLE="fork">
<edge COLOR="#cccccc" />
<richcontent TYPE="NOTE"><html><body><pre codeType="verbose">
# SOME, predicate        ID_1381472202 2021-01-14 17:01:21
</pre><pre codeType="restriction">
:SOME_Tiefe_IS_tief a owl:Class ;
    owl:equivalentClass [ a owl:Restriction ;
        owl:onProperty :Tiefe ;
        owl:someValuesFrom :tief ] .</pre><pre codeType="intersection">
:Gew&#228;sser_AND_SOME_Tiefe_IS_tief a owl:Class ;
    rdfs:subClassOf :Gew&#228;sser_Tiefe_SOME_tief ;
    owl:equivalentClass [ a owl:Class ;
        owl:intersectionOf ( :Gew&#228;sser :SOME_Tiefe_IS_tief ) ] .</pre><pre codeType="punning">
# owl 2 punning
    :tief a owl:Class ;
        rdfs:subClassOf :Tiefe .

    :tief rdf:type owl:NamedIndividual ;
        a :tief .</pre></body></html></richcontent><font ITALIC="true" /><font ITALIC="true" /><font ITALIC="true" /><font ITALIC="true" /></node>
<richcontent TYPE="NOTE"><html><body><pre codeType="owl">
# BY, object        ID_1409184999 2021-01-15 12:45:53

:Gew&#228;sser_Tiefe_SOME_tief a owl:Class ;
            rdfs:subClassOf :Gew&#228;sser .</pre></body></html></richcontent><font BOLD="true" /></node>
<node TEXT="_" ID="ID_153167727" CREATED="1610643564874" MODIFIED="1610714753134" BACKGROUND_COLOR="#ffffff" STYLE="fork">
<edge COLOR="#cccccc" />
<node TEXT="SOME m&#228;&#223;ig tief" ID="ID_1790682027" CREATED="1610643564874" MODIFIED="1610643681859" BACKGROUND_COLOR="#ffffff" STYLE="fork">
<edge COLOR="#cccccc" />
<richcontent TYPE="NOTE"><html><body><pre codeType="verbose">
# SOME, predicate        ID_1790682027 2021-01-14 17:01:21
</pre><pre codeType="restriction">
:SOME_Tiefe_IS_m&#228;&#223;ig_tief a owl:Class ;
    owl:equivalentClass [ a owl:Restriction ;
        owl:onProperty :Tiefe ;
        owl:someValuesFrom :m&#228;&#223;ig_tief ] .</pre><pre codeType="intersection">
:Gew&#228;sser_AND_SOME_Tiefe_IS_m&#228;&#223;ig_tief a owl:Class ;
    rdfs:subClassOf :Gew&#228;sser_Tiefe_SOME_m&#228;&#223;ig_tief ;
    owl:equivalentClass [ a owl:Class ;
        owl:intersectionOf ( :Gew&#228;sser :SOME_Tiefe_IS_m&#228;&#223;ig_tief ) ] .</pre><pre codeType="punning">
# owl 2 punning
    :m&#228;&#223;ig_tief a owl:Class ;
        rdfs:subClassOf :Tiefe .

    :m&#228;&#223;ig_tief rdf:type owl:NamedIndividual ;
        a :m&#228;&#223;ig_tief .</pre></body></html></richcontent><font ITALIC="true" /><font ITALIC="true" /><font ITALIC="true" /><font ITALIC="true" /></node>
<richcontent TYPE="NOTE"><html><body><pre codeType="owl">
# BY, object        ID_153167727 2021-01-15 12:45:53

:Gew&#228;sser_Tiefe_SOME_m&#228;&#223;ig_tief a owl:Class ;
            rdfs:subClassOf :Gew&#228;sser .</pre></body></html></richcontent><font BOLD="true" /></node>
<node TEXT="_" ID="ID_194038908" CREATED="1610643564874" MODIFIED="1610714753134" BACKGROUND_COLOR="#ffffff" STYLE="fork">
<edge COLOR="#cccccc" />
<node TEXT="SOME flach" ID="ID_878180997" CREATED="1610643564874" MODIFIED="1610643681860" BACKGROUND_COLOR="#ffffff" STYLE="fork">
<edge COLOR="#cccccc" />
<richcontent TYPE="NOTE"><html><body><pre codeType="verbose">
# SOME, predicate        ID_878180997 2021-01-14 17:01:21
</pre><pre codeType="restriction">
:SOME_Tiefe_IS_flach a owl:Class ;
    owl:equivalentClass [ a owl:Restriction ;
        owl:onProperty :Tiefe ;
        owl:someValuesFrom :flach ] .</pre><pre codeType="intersection">
:Gew&#228;sser_AND_SOME_Tiefe_IS_flach a owl:Class ;
    rdfs:subClassOf :Gew&#228;sser_Tiefe_SOME_flach ;
    owl:equivalentClass [ a owl:Class ;
        owl:intersectionOf ( :Gew&#228;sser :SOME_Tiefe_IS_flach ) ] .</pre><pre codeType="punning">
# owl 2 punning
    :flach a owl:Class ;
        rdfs:subClassOf :Tiefe .

    :flach rdf:type owl:NamedIndividual ;
        a :flach .</pre></body></html></richcontent><font ITALIC="true" /><font ITALIC="true" /><font ITALIC="true" /><font ITALIC="true" /></node>
<richcontent TYPE="NOTE"><html><body><pre codeType="owl">
# BY, object        ID_194038908 2021-01-15 12:45:53

:Gew&#228;sser_Tiefe_SOME_flach a owl:Class ;
            rdfs:subClassOf :Gew&#228;sser .</pre></body></html></richcontent><font BOLD="true" /></node>
<richcontent TYPE="NOTE"><html><body><pre codeType="owl">
# BY, predicate        ID_355458390 2021-01-14 17:01:21

:Tiefe a owl:ObjectProperty .</pre></body></html></richcontent><font ITALIC="true" /></node>
<node TEXT="BY Trophiestufe" ID="ID_1449600205" CREATED="1610643564876" MODIFIED="1610643681875" BACKGROUND_COLOR="#ffffff" STYLE="fork">
<edge COLOR="#cccccc" />
<node TEXT="_" ID="ID_1260890827" CREATED="1610643564877" MODIFIED="1610714753134" BACKGROUND_COLOR="#ffffff" STYLE="fork">
<edge COLOR="#cccccc" />
<node TEXT="SOME  oligotroph" ID="ID_1974595102" CREATED="1610643564877" MODIFIED="1610643681877" BACKGROUND_COLOR="#ffffff" STYLE="fork">
<edge COLOR="#cccccc" />
<richcontent TYPE="NOTE"><html><body><pre codeType="verbose">
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
        a :oligotroph .</pre></body></html></richcontent><font ITALIC="true" /><font ITALIC="true" /><font ITALIC="true" /><font ITALIC="true" /></node>
<richcontent TYPE="NOTE"><html><body><pre codeType="owl">
# BY, object        ID_1260890827 2021-01-15 12:45:53

:Gew&#228;sser_Trophiestufe_SOME_oligotroph a owl:Class ;
            rdfs:subClassOf :Gew&#228;sser .</pre></body></html></richcontent><font BOLD="true" /></node>
<node TEXT="_" ID="ID_440590526" CREATED="1610643564877" MODIFIED="1610714753134" BACKGROUND_COLOR="#ffffff" STYLE="fork">
<edge COLOR="#cccccc" />
<node TEXT="SOME mesotroph" ID="ID_825688094" CREATED="1610643564877" MODIFIED="1610643681878" BACKGROUND_COLOR="#ffffff" STYLE="fork">
<edge COLOR="#cccccc" />
<richcontent TYPE="NOTE"><html><body><pre codeType="verbose">
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
        a :mesotroph .</pre></body></html></richcontent><font ITALIC="true" /><font ITALIC="true" /><font ITALIC="true" /><font ITALIC="true" /></node>
<richcontent TYPE="NOTE"><html><body><pre codeType="owl">
# BY, object        ID_440590526 2021-01-15 12:45:53

:Gew&#228;sser_Trophiestufe_SOME_mesotroph a owl:Class ;
            rdfs:subClassOf :Gew&#228;sser .</pre></body></html></richcontent><font BOLD="true" /></node>
<node TEXT="_" ID="ID_340097028" CREATED="1610643564877" MODIFIED="1610714753135" BACKGROUND_COLOR="#ffffff" STYLE="fork">
<edge COLOR="#cccccc" />
<node TEXT="SOME eutroph" ID="ID_1417244006" CREATED="1610643564877" MODIFIED="1610643681879" BACKGROUND_COLOR="#ffffff" STYLE="fork">
<edge COLOR="#cccccc" />
<richcontent TYPE="NOTE"><html><body><pre codeType="verbose">
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
        a :eutroph .</pre></body></html></richcontent><font ITALIC="true" /><font ITALIC="true" /><font ITALIC="true" /><font ITALIC="true" /></node>
<richcontent TYPE="NOTE"><html><body><pre codeType="owl">
# BY, object        ID_340097028 2021-01-15 12:45:53

:Gew&#228;sser_Trophiestufe_SOME_eutroph a owl:Class ;
            rdfs:subClassOf :Gew&#228;sser .</pre></body></html></richcontent><font BOLD="true" /></node>
<node TEXT="_" ID="ID_1784703466" CREATED="1610643564877" MODIFIED="1610714753135" BACKGROUND_COLOR="#ffffff" STYLE="fork">
<edge COLOR="#cccccc" />
<node TEXT="SOME hypertroph" ID="ID_399418016" CREATED="1610643564877" MODIFIED="1610643681880" BACKGROUND_COLOR="#ffffff" STYLE="fork">
<edge COLOR="#cccccc" />
<richcontent TYPE="NOTE"><html><body><pre codeType="verbose">
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
        a :hypertroph .</pre></body></html></richcontent><font ITALIC="true" /><font ITALIC="true" /><font ITALIC="true" /><font ITALIC="true" /></node>
<richcontent TYPE="NOTE"><html><body><pre codeType="owl">
# BY, object        ID_1784703466 2021-01-15 12:45:53

:Gew&#228;sser_Trophiestufe_SOME_hypertroph a owl:Class ;
            rdfs:subClassOf :Gew&#228;sser .</pre></body></html></richcontent><font BOLD="true" /></node>
<richcontent TYPE="NOTE"><html><body><pre codeType="owl">
# BY, predicate        ID_1449600205 2021-01-14 17:01:21

:Trophiestufe a owl:ObjectProperty .</pre></body></html></richcontent><font ITALIC="true" /></node>
<node TEXT="BY &#246;kologischer Zustand" ID="ID_1677746201" CREATED="1610643564877" MODIFIED="1610643681880" BACKGROUND_COLOR="#ffffff" STYLE="fork">
<edge COLOR="#cccccc" />
<node TEXT="_" ID="ID_1235941310" CREATED="1610643564878" MODIFIED="1610714753135" BACKGROUND_COLOR="#ffffff" STYLE="fork">
<edge COLOR="#cccccc" />
<node TEXT="SOME &#246;kologischer Zustand sehr gut" ID="ID_394087743" CREATED="1610643564878" MODIFIED="1610706095191" BACKGROUND_COLOR="#ffffff" STYLE="fork">
<edge COLOR="#cccccc" />
<richcontent TYPE="NOTE"><html><body><pre codeType="verbose">
# SOME, predicate        ID_394087743 2021-01-15 10:21:35
</pre><pre codeType="restriction">
:SOME_&#246;kologischer_Zustand_IS_&#246;kologischer_Zustand_sehr_gut a owl:Class ;
    owl:equivalentClass [ a owl:Restriction ;
        owl:onProperty :&#246;kologischer_Zustand ;
        owl:someValuesFrom :&#246;kologischer_Zustand_sehr_gut ] .</pre><pre codeType="intersection">
:Gew&#228;sser_AND_SOME_&#246;kologischer_Zustand_IS_&#246;kologischer_Zustand_sehr_gut a owl:Class ;
    rdfs:subClassOf :Gew&#228;sser_&#246;kologischer_Zustand_SOME_&#246;kologischer_Zustand_sehr_gut ;
    owl:equivalentClass [ a owl:Class ;
        owl:intersectionOf ( :Gew&#228;sser :SOME_&#246;kologischer_Zustand_IS_&#246;kologischer_Zustand_sehr_gut ) ] .</pre><pre codeType="punning">
# owl 2 punning
    :&#246;kologischer_Zustand_sehr_gut a owl:Class ;
        rdfs:subClassOf :&#246;kologischer_Zustand .

    :&#246;kologischer_Zustand_sehr_gut rdf:type owl:NamedIndividual ;
        a :&#246;kologischer_Zustand_sehr_gut .</pre></body></html></richcontent><font ITALIC="true" /><font ITALIC="true" /><font ITALIC="true" /><font ITALIC="true" /></node>
<richcontent TYPE="NOTE"><html><body><pre codeType="owl">
# BY, object        ID_1235941310 2021-01-15 12:45:53

:Gew&#228;sser_&#246;kologischer_Zustand_SOME_&#246;kologischer_Zustand_sehr_gut a owl:Class ;
            rdfs:subClassOf :Gew&#228;sser .</pre></body></html></richcontent><font BOLD="true" /></node>
<node TEXT="_" ID="ID_660935940" CREATED="1610643564878" MODIFIED="1610714753135" BACKGROUND_COLOR="#ffffff" STYLE="fork">
<edge COLOR="#cccccc" />
<node TEXT="SOME &#246;kologischer Zustand gut" ID="ID_1113083660" CREATED="1610643564878" MODIFIED="1610706098755" BACKGROUND_COLOR="#ffffff" STYLE="fork">
<edge COLOR="#cccccc" />
<richcontent TYPE="NOTE"><html><body><pre codeType="verbose">
# SOME, predicate        ID_1113083660 2021-01-15 10:21:38
</pre><pre codeType="restriction">
:SOME_&#246;kologischer_Zustand_IS_&#246;kologischer_Zustand_gut a owl:Class ;
    owl:equivalentClass [ a owl:Restriction ;
        owl:onProperty :&#246;kologischer_Zustand ;
        owl:someValuesFrom :&#246;kologischer_Zustand_gut ] .</pre><pre codeType="intersection">
:Gew&#228;sser_AND_SOME_&#246;kologischer_Zustand_IS_&#246;kologischer_Zustand_gut a owl:Class ;
    rdfs:subClassOf :Gew&#228;sser_&#246;kologischer_Zustand_SOME_&#246;kologischer_Zustand_gut ;
    owl:equivalentClass [ a owl:Class ;
        owl:intersectionOf ( :Gew&#228;sser :SOME_&#246;kologischer_Zustand_IS_&#246;kologischer_Zustand_gut ) ] .</pre><pre codeType="punning">
# owl 2 punning
    :&#246;kologischer_Zustand_gut a owl:Class ;
        rdfs:subClassOf :&#246;kologischer_Zustand .

    :&#246;kologischer_Zustand_gut rdf:type owl:NamedIndividual ;
        a :&#246;kologischer_Zustand_gut .</pre></body></html></richcontent><font ITALIC="true" /><font ITALIC="true" /><font ITALIC="true" /><font ITALIC="true" /></node>
<richcontent TYPE="NOTE"><html><body><pre codeType="owl">
# BY, object        ID_660935940 2021-01-15 12:45:53

:Gew&#228;sser_&#246;kologischer_Zustand_SOME_&#246;kologischer_Zustand_gut a owl:Class ;
            rdfs:subClassOf :Gew&#228;sser .</pre></body></html></richcontent><font BOLD="true" /></node>
<node TEXT="_" ID="ID_68653163" CREATED="1610643564878" MODIFIED="1610714753135" BACKGROUND_COLOR="#ffffff" STYLE="fork">
<edge COLOR="#cccccc" />
<node TEXT="SOME &#246;kologischer Zustand m&#228;&#223;ig" ID="ID_857607730" CREATED="1610643564878" MODIFIED="1610706102227" BACKGROUND_COLOR="#ffffff" STYLE="fork">
<edge COLOR="#cccccc" />
<richcontent TYPE="NOTE"><html><body><pre codeType="verbose">
# SOME, predicate        ID_857607730 2021-01-15 10:21:42
</pre><pre codeType="restriction">
:SOME_&#246;kologischer_Zustand_IS_&#246;kologischer_Zustand_m&#228;&#223;ig a owl:Class ;
    owl:equivalentClass [ a owl:Restriction ;
        owl:onProperty :&#246;kologischer_Zustand ;
        owl:someValuesFrom :&#246;kologischer_Zustand_m&#228;&#223;ig ] .</pre><pre codeType="intersection">
:Gew&#228;sser_AND_SOME_&#246;kologischer_Zustand_IS_&#246;kologischer_Zustand_m&#228;&#223;ig a owl:Class ;
    rdfs:subClassOf :Gew&#228;sser_&#246;kologischer_Zustand_SOME_&#246;kologischer_Zustand_m&#228;&#223;ig ;
    owl:equivalentClass [ a owl:Class ;
        owl:intersectionOf ( :Gew&#228;sser :SOME_&#246;kologischer_Zustand_IS_&#246;kologischer_Zustand_m&#228;&#223;ig ) ] .</pre><pre codeType="punning">
# owl 2 punning
    :&#246;kologischer_Zustand_m&#228;&#223;ig a owl:Class ;
        rdfs:subClassOf :&#246;kologischer_Zustand .

    :&#246;kologischer_Zustand_m&#228;&#223;ig rdf:type owl:NamedIndividual ;
        a :&#246;kologischer_Zustand_m&#228;&#223;ig .</pre></body></html></richcontent><font ITALIC="true" /><font ITALIC="true" /><font ITALIC="true" /><font ITALIC="true" /></node>
<richcontent TYPE="NOTE"><html><body><pre codeType="owl">
# BY, object        ID_68653163 2021-01-15 12:45:53

:Gew&#228;sser_&#246;kologischer_Zustand_SOME_&#246;kologischer_Zustand_m&#228;&#223;ig a owl:Class ;
            rdfs:subClassOf :Gew&#228;sser .</pre></body></html></richcontent><font BOLD="true" /></node>
<node TEXT="_" ID="ID_1083485239" CREATED="1610643564878" MODIFIED="1610714753135" BACKGROUND_COLOR="#ffffff" STYLE="fork">
<edge COLOR="#cccccc" />
<node TEXT="SOME &#246;kologischer Zustand unbefriedigend" ID="ID_1538188459" CREATED="1610643564878" MODIFIED="1610706106231" BACKGROUND_COLOR="#ffffff" STYLE="fork">
<edge COLOR="#cccccc" />
<richcontent TYPE="NOTE"><html><body><pre codeType="verbose">
# SOME, predicate        ID_1538188459 2021-01-15 10:21:46
</pre><pre codeType="restriction">
:SOME_&#246;kologischer_Zustand_IS_&#246;kologischer_Zustand_unbefriedigend a owl:Class ;
    owl:equivalentClass [ a owl:Restriction ;
        owl:onProperty :&#246;kologischer_Zustand ;
        owl:someValuesFrom :&#246;kologischer_Zustand_unbefriedigend ] .</pre><pre codeType="intersection">
:Gew&#228;sser_AND_SOME_&#246;kologischer_Zustand_IS_&#246;kologischer_Zustand_unbefriedigend a owl:Class ;
    rdfs:subClassOf :Gew&#228;sser_&#246;kologischer_Zustand_SOME_&#246;kologischer_Zustand_unbefriedigend ;
    owl:equivalentClass [ a owl:Class ;
        owl:intersectionOf ( :Gew&#228;sser :SOME_&#246;kologischer_Zustand_IS_&#246;kologischer_Zustand_unbefriedigend ) ] .</pre><pre codeType="punning">
# owl 2 punning
    :&#246;kologischer_Zustand_unbefriedigend a owl:Class ;
        rdfs:subClassOf :&#246;kologischer_Zustand .

    :&#246;kologischer_Zustand_unbefriedigend rdf:type owl:NamedIndividual ;
        a :&#246;kologischer_Zustand_unbefriedigend .</pre></body></html></richcontent><font ITALIC="true" /><font ITALIC="true" /><font ITALIC="true" /><font ITALIC="true" /></node>
<richcontent TYPE="NOTE"><html><body><pre codeType="owl">
# BY, object        ID_1083485239 2021-01-15 12:45:53

:Gew&#228;sser_&#246;kologischer_Zustand_SOME_&#246;kologischer_Zustand_unbefriedigend a owl:Class ;
            rdfs:subClassOf :Gew&#228;sser .</pre></body></html></richcontent><font BOLD="true" /></node>
<node TEXT="_" ID="ID_911250002" CREATED="1610643564878" MODIFIED="1610714753136" BACKGROUND_COLOR="#ffffff" STYLE="fork">
<edge COLOR="#cccccc" />
<node TEXT="SOME &#246;kologischer Zustand schlecht" ID="ID_602464237" CREATED="1610643564878" MODIFIED="1610706110577" BACKGROUND_COLOR="#ffffff" STYLE="fork">
<edge COLOR="#cccccc" />
<richcontent TYPE="NOTE"><html><body><pre codeType="verbose">
# SOME, predicate        ID_602464237 2021-01-15 10:21:50
</pre><pre codeType="restriction">
:SOME_&#246;kologischer_Zustand_IS_&#246;kologischer_Zustand_schlecht a owl:Class ;
    owl:equivalentClass [ a owl:Restriction ;
        owl:onProperty :&#246;kologischer_Zustand ;
        owl:someValuesFrom :&#246;kologischer_Zustand_schlecht ] .</pre><pre codeType="intersection">
:Gew&#228;sser_AND_SOME_&#246;kologischer_Zustand_IS_&#246;kologischer_Zustand_schlecht a owl:Class ;
    rdfs:subClassOf :Gew&#228;sser_&#246;kologischer_Zustand_SOME_&#246;kologischer_Zustand_schlecht ;
    owl:equivalentClass [ a owl:Class ;
        owl:intersectionOf ( :Gew&#228;sser :SOME_&#246;kologischer_Zustand_IS_&#246;kologischer_Zustand_schlecht ) ] .</pre><pre codeType="punning">
# owl 2 punning
    :&#246;kologischer_Zustand_schlecht a owl:Class ;
        rdfs:subClassOf :&#246;kologischer_Zustand .

    :&#246;kologischer_Zustand_schlecht rdf:type owl:NamedIndividual ;
        a :&#246;kologischer_Zustand_schlecht .</pre></body></html></richcontent><font ITALIC="true" /><font ITALIC="true" /><font ITALIC="true" /><font ITALIC="true" /></node>
<richcontent TYPE="NOTE"><html><body><pre codeType="owl">
# BY, object        ID_911250002 2021-01-15 12:45:53

:Gew&#228;sser_&#246;kologischer_Zustand_SOME_&#246;kologischer_Zustand_schlecht a owl:Class ;
            rdfs:subClassOf :Gew&#228;sser .</pre></body></html></richcontent><font BOLD="true" /></node>
<richcontent TYPE="NOTE"><html><body><pre codeType="owl">
# BY, predicate        ID_1677746201 2021-01-14 17:01:21

:&#246;kologischer_Zustand a owl:ObjectProperty .</pre></body></html></richcontent><font ITALIC="true" /></node>
<node TEXT="BY S&#228;ttigung mit Wasser" ID="ID_1604888519" CREATED="1610643564879" MODIFIED="1610643681891" BACKGROUND_COLOR="#ffffff" STYLE="fork">
<edge COLOR="#cccccc" />
<node TEXT="_" ID="ID_1388604032" CREATED="1610643564880" MODIFIED="1610714753137" BACKGROUND_COLOR="#ffffff" STYLE="fork">
<edge COLOR="#cccccc" />
<node TEXT="SOME phreatisch" ID="ID_575931966" CREATED="1610643564880" MODIFIED="1610643681892" BACKGROUND_COLOR="#ffffff" STYLE="fork">
<edge COLOR="#cccccc" />
<richcontent TYPE="NOTE"><html><body><pre codeType="verbose">
# SOME, predicate        ID_575931966 2021-01-14 17:01:21
</pre><pre codeType="restriction">
:SOME_S&#228;ttigung_mit_Wasser_IS_phreatisch a owl:Class ;
    owl:equivalentClass [ a owl:Restriction ;
        owl:onProperty :S&#228;ttigung_mit_Wasser ;
        owl:someValuesFrom :phreatisch ] .</pre><pre codeType="intersection">
:Gew&#228;sser_AND_SOME_S&#228;ttigung_mit_Wasser_IS_phreatisch a owl:Class ;
    rdfs:subClassOf :Gew&#228;sser_S&#228;ttigung_mit_Wasser_SOME_phreatisch ;
    owl:equivalentClass [ a owl:Class ;
        owl:intersectionOf ( :Gew&#228;sser :SOME_S&#228;ttigung_mit_Wasser_IS_phreatisch ) ] .</pre><pre codeType="punning">
# owl 2 punning
    :phreatisch a owl:Class ;
        rdfs:subClassOf :S&#228;ttigung_mit_Wasser .

    :phreatisch rdf:type owl:NamedIndividual ;
        a :phreatisch .</pre></body></html></richcontent><font ITALIC="true" /><font ITALIC="true" /><font ITALIC="true" /><font ITALIC="true" /></node>
<richcontent TYPE="NOTE"><html><body><pre codeType="owl">
# BY, object        ID_1388604032 2021-01-15 12:45:53

:Gew&#228;sser_S&#228;ttigung_mit_Wasser_SOME_phreatisch a owl:Class ;
            rdfs:subClassOf :Gew&#228;sser .</pre></body></html></richcontent><font BOLD="true" /></node>
<richcontent TYPE="NOTE"><html><body><pre codeType="owl">
# BY, predicate        ID_1604888519 2021-01-14 17:01:21

:S&#228;ttigung_mit_Wasser a owl:ObjectProperty .</pre></body></html></richcontent><font ITALIC="true" /></node>
<richcontent TYPE="NOTE"><html><body><pre codeType="owl">
# ONTOLOGY, object        ID_1936719561 2021-01-19 13:44:50

:Gew&#228;sser a owl:Class.</pre></body></html></richcontent><font BOLD="true" /></node>
<richcontent TYPE="NOTE"><html><body><pre codeType="owl">
# ONTOLOGY, predicate        ID_1456425654 2021-01-19 13:45:02

@prefix : &lt;http://jbusse.de/ontologies/gewaesser#&gt; .
    @base &lt;http://jbusse.de/ontologies/gewaesser#&gt; .
    &lt;http://jbusse.de/ontologies/gewaesser#&gt; rdf:type owl:Ontology .
    </pre></body></html></richcontent><font ITALIC="true" /></node>
<richcontent TYPE="NOTE"><html><body /></html></richcontent></node>
<richcontent TYPE="NOTE"><html><body /></html></richcontent></map>