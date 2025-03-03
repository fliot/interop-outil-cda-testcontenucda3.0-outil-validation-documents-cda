<?xml version="1.0" encoding="UTF-8"?>
<!-- 
    JDV_specimenType.sch
    
    Contenu :
        Règles de contrôle de la nature de l'échantillon (nullFlavor autorisé)
     
    Historique :
        11/10/2021 : Création
-->
<pattern xmlns="http://purl.oclc.org/dsdl/schematron" id="JDV_specimenType" is-a="dansJeuDeValeurs">
    <p>Conformité de la nature de l'échantillon</p>
    <param name="path_jdv" value="$jdv_specimenType"/>
    <param name="vue_elt" value="'procedure/participant/participantRole/playingEntity/code'"/>
    <param name="xpath_elt" value="//cda:procedure[cda:templateId/@root='1.2.250.1.213.1.1.3.77']/cda:participant/cda:participantRole/cda:playingEntity/cda:code"/>
    <param name="nullFlavor" value="1"/>
</pattern>   
