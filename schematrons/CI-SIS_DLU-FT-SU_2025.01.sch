<?xml version="1.0" encoding="UTF-8" standalone="no"?>
<!-- 
   Schématron : CI-SIS_DLU-FT-SU_2025.01.sch
   Vérification de la conformité au modèle du document DLU-FT-SU (Fiche de transfert vers le service des urgences)
   ...................................................................................................................................................... 
   auteur : ANS
   ......................................................................................................................................................     
    Historique :
       22/07/2025 : Création
   ......................................................................................................................................................
       -->

<schema xmlns="http://purl.oclc.org/dsdl/schematron" 
        xmlns:cda="urn:hl7-org:v3" 
        xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" queryBinding="xslt2" schemaVersion="CI-SIS_DLU-FT-SU_2025.01.sch">
    
        <title>Rapport de conformité au modèle DLU-FT-SU</title>
        <ns prefix="cda" uri="urn:hl7-org:v3"/>
        <ns prefix="xsi" uri="http://www.w3.org/2001/XMLSchema-instance"/>
        <ns prefix="jdv" uri="http://esante.gouv.fr"/>
        <ns prefix="svs" uri="urn:ihe:iti:svs:2008"/>
    
        <!-- Abstract patterns -->
        <include href="abstract/dansJeuDeValeurs.sch"/>
        <include href="abstract/IVL_TS.sch"/>   
        
        <!-- Schématrons JDV spécifiques au DLU-FLUDT -->
        <include href="include/jeuxDeValeurs/DLU-FT-SU_2025.01/JDV_ProtheseObjetPersonnel.sch"/>
        
        <!-- Schématron Entete spécifiques au DLU-FLUDT -->
        <include href="include/specificationsVolets/DLU-FT-SU_2025.01/Entete/Entete_DLU-FT-SU.sch"/>
        
        <!-- Schématron Section spécifique au DLU-FR-SU -->
        <include href="include/specificationsVolets/DLU-FT-SU_2025.01/Sections/S_PersonnesStructuresInformees_DLU-FT-SU.sch"/>
        <include href="include/specificationsVolets/DLU-FT-SU_2025.01/Sections/S_FonctionsPhysiques_DLU-FT-SU.sch"/>
        
        <phase id="DLU-FT-SU_2025.01">
           <active pattern="variables"/>
           <active pattern="Entete_DLU-FT-SU"/>
           <active pattern="JDV_ProtheseObjetPersonnel"/>
           <active pattern="S_PersonnesStructuresInformees_DLU-FT-SU"/>
           <active pattern="S_FonctionsPhysiques_DLU-FT-SU"/>
        </phase>
        
        <pattern id="variables">
                <let name="JDV_ProtheseObjetPersonnel" value = "'../jeuxDeValeurs/jdv-prothese-objet-personnel-cisis.xml'"/>
                <rule context="cda:ClinicalDocument">
                        
                        <assert test="count(cda:component/cda:structuredBody/cda:component/cda:section/cda:templateId[@root='1.2.250.1.213.1.1.2.251'])=1"> 
                                [CI-SIS_DLU-FT-SU_2025.01] La section "FR-Personnes-Structures-informees" doit être présente une fois. Cardinalité [1..1].
                        </assert>
                        <assert test="count(cda:component/cda:structuredBody/cda:component/cda:section/cda:templateId[@root='1.2.250.1.213.1.1.2.127'])=1"> 
                                [CI-SIS_DLU-FT-SU_2025.01] La section "FR-Raison-de-la-recommandation-non-code" doit être présente une fois. Cardinalité [1..1].
                        </assert>
                        <assert test="count(cda:component/cda:structuredBody/cda:component/cda:section/cda:templateId[@root='1.2.250.1.213.1.1.2.115'])=1"> 
                                [CI-SIS_DLU-FT-SU_2025.01] La section "FR-Fonctions-physiques" doit être présente une fois. Cardinalité [1..1].
                        </assert>
                        <assert test="count(cda:component/cda:structuredBody/cda:component/cda:section/cda:templateId[@root='1.2.250.1.213.1.1.2.75'])=1"> 
                                [CI-SIS_DLU-FT-SU_2025.01] La section "FR-Signes-vitaux" doit être présente une fois. Cardinalité [1..1].
                        </assert>
                        <assert test="count(cda:component/cda:structuredBody/cda:component/cda:section/cda:templateId[@root='1.2.250.1.213.1.1.2.53'])=1"> 
                                [CI-SIS_DLU-FT-SU_2025.01] La section "FR-Protheses-et-objets-personnels" doit être présente une fois. Cardinalité [1..1].
                        </assert>
                        <assert test="count(cda:component/cda:structuredBody/cda:component/cda:section/cda:templateId[@root='1.2.250.1.213.1.1.2.245'])&lt; 2"> 
                                [[CI-SIS_DLU-FT-SU_2025.01] La section "FR-Points-de-vigilances-non-code" ne peut être présente qu'une fois. Cardinalité [0..1].
                        </assert>
                        
                        <assert test="count(cda:component/cda:structuredBody/cda:component/cda:section/cda:templateId[@root='1.2.250.1.213.1.1.2.73'])&lt; 2"> 
                                [CI-SIS_DLU-FT-SU_2025.01] La section "FR-Commentaire-non-code" ne peut être présente qu'une fois. Cardinalité [0..1].
                        </assert>
                                                
                </rule>
        </pattern>
        
</schema>
