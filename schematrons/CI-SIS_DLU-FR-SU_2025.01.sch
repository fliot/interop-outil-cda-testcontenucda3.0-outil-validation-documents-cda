<?xml version="1.0" encoding="UTF-8" standalone="no"?>
<!-- 
   Schématron CI-SIS_DLU-FR-SU_2025.01.sch
   Vérification de la conformité au modèle du document DLU-FR-SU_2025.01.01 (Fiche de retour du service des urgences)
   ......................................................................................................................................................    
   Auteur : ANS
   ......................................................................................................................................................    
   Historique :t
       23/07/2025 : Création
       
   ...................................................................................................................................................... 
       -->

<schema xmlns="http://purl.oclc.org/dsdl/schematron" 
        xmlns:cda="urn:hl7-org:v3" 
        xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" 
        queryBinding="xslt2" schemaVersion="CI-SIS_DLU-FR-SU_2025.01.sch">
    
        <title>Rapport de conformité du document aux spécifications du volet DLU-FR-SU_2025.01</title>
        <ns prefix="cda" uri="urn:hl7-org:v3"/>
        <ns prefix="xsi" uri="http://www.w3.org/2001/XMLSchema-instance"/>
        <ns prefix="jdv" uri="http://esante.gouv.fr"/>
        <ns prefix="svs" uri="urn:ihe:iti:svs:2008"/>
    
        <!-- Abstract patterns -->        
        <include href="abstract/dansJeuDeValeurs.sch"/>
        <include href="abstract/IVL_TS.sch"/>   
        
        <!-- Schématrons JDV spécifiques au DLU-FR-SU -->
        <include href="include/jeuxDeValeurs/DLU-FR-SU_2025.01/JDV_ProtheseObjetPersonnel-CISIS.sch"/>
        
        <!-- Schématron Entete spécifique au DLU-FR-SU -->        
        <include href="include/specificationsVolets/DLU-FR-SU_2025.01/Entete/Entete_DLU-FR-SU.sch"/>
        
        <!-- Schématron Section spécifique au DLU-FR-SU -->
        <include href="include/specificationsVolets/DLU-FR-SU_2025.01/Sections/S_PersonnesStructuresInformees_DLU-FR-SU.sch"/>
        <include href="include/specificationsVolets/DLU-FR-SU_2025.01/Sections/S_ResultatsEvenements_DLU-FR-SU.sch"/>
        
        <phase id="CI-SIS_DLU-FR-SU_2025.01">
                <active pattern="variables"/>
                <active pattern="JDV_ProtheseObjetPersonnel-CISIS"/>
                <active pattern="Entete_DLU-FR-SU"/>
                <active pattern="S_PersonnesStructuresInformees_DLU-FR-SU"/>
                <active pattern="S_ResultatsEvenements_DLU-FR-SU"/>
        </phase>
        
        <pattern id="variables">
                <let name="JDV_ProtheseObjetPersonnel-CISIS" value ="'../jeuxDeValeurs/jdv-prothese-objet-personnel-cisis.xml'"/>
                <rule context="cda:ClinicalDocument">
                        
                        <assert test="count(cda:component/cda:structuredBody/cda:component/cda:section/cda:templateId[@root='1.2.250.1.213.1.1.2.251'])=1"> 
                                [CI-SIS_DLU-FR-SU_2025.01] La section "FR-Personnes-Structures-informees" doit être présente une fois. Cardinalité [1..1].
                        </assert>
                        <assert test="count(cda:component/cda:structuredBody/cda:component/cda:section/cda:templateId[@root='1.2.250.1.213.1.1.2.163'])=1"> 
                                [CI-SIS_DLU-FR-SU_2025.01] La section "FR-Resultats-evenements" doit être présente une fois. Cardinalité [1..1].
                        </assert>
                        <assert test="count(cda:component/cda:structuredBody/cda:component/cda:section/cda:templateId[@root='1.2.250.1.213.1.1.2.5' or @root='1.2.250.1.213.1.1.2.133'])=1"> 
                                [CI-SIS_DLU-FR-SU_2025.01] La section "FR-Diagnostic-de-sortie-non-code" ou "FR-Diagnostic-de-sortie-episode-de-soins" doit être présente une fois. Cardinalité [1..1].
                        </assert>
                        <assert test="count(cda:component/cda:structuredBody/cda:component/cda:section/cda:templateId[@root='1.2.250.1.213.1.1.2.154'])=1"> 
                                [CI-SIS_DLU-FR-SU_2025.01] La section "FR-Plan-de-soins-non-code" doit être présente une fois. Cardinalité [1..1].
                        </assert>
                        <assert test="count(cda:component/cda:structuredBody/cda:component/cda:section/cda:templateId[@root='1.2.250.1.213.1.1.2.73'])&lt; 2"> 
                                [CI-SIS_DLU-FR-SU_2025.01] La section "FR-Commentaire-non-code" ne peut être présente qu'une fois. Cardinalité [0..1].
                        </assert>
                        <assert test="count(cda:component/cda:structuredBody/cda:component/cda:section/cda:templateId[@root='1.2.250.1.213.1.1.2.53'])=1"> 
                                [CI-SIS_DLU-FR-SU_2025.01] La section "FR-Protheses-et-objets-personnels" doit être présente une fois. Cardinalité [1..1].
                        </assert>
                        
                        <assert test="count(cda:component/cda:structuredBody/cda:component/cda:section/cda:templateId[@root='1.2.250.1.213.1.1.2.253'])=1"> 
                                [CI-SIS_DLU-FR-SU_2025.01] La section "FR-Documents-remis-au-patient" doit être présente une fois. Cardinalité [1..1].
                        </assert>
                        
                        
                                                
                </rule>
        </pattern>
</schema>
