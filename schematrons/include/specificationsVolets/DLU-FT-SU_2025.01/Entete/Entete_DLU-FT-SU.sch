<?xml version="1.0" encoding="UTF-8"?>

<!--                  
    Entete_DLU-FT-SU.sch
    Teste la conformité de l'entete du documents DLU-FT-SU au CI-SIS
    
    Historique :
    07/02/2018 : Création
    31/07/2020 : Suppression du contrôle sur informant    
    22/02/2021 : Renomage schématron
-->

<pattern xmlns="http://purl.oclc.org/dsdl/schematron" id="Entete_DLU-FT-SU">
    
    <rule context='cda:ClinicalDocument'>
        
        <assert test="cda:templateId[@root='1.2.250.1.213.1.1.1.61']"> 
            [Entete_DLU-FT-SU] Le templateId "1.2.250.1.213.1.1.1.61" (Conformité au modèle DLU-FLUDT du CI-SIS) doit être présent.
        </assert>
        <assert test="./cda:code[@code='78341-5' and @codeSystem='2.16.840.1.113883.6.1']"> 
            [Entete_DLU-FT-SU] L'élément code doit avoir @code ="78341-5" et @codeSystem = "2.16.840.1.113883.6.1"/>. 
        </assert>
        <assert test="cda:documentationOf/cda:serviceEvent/cda:code[@code='306104004']">
            [Entete_DLU-FT-SU] L’attribut code de l’élément documentationOf/serviceEvent/code prend la valeur '306104004'
        </assert>
        <assert test="cda:componentOf/cda:encompassingEncounter/cda:code[@code='EMER'] or not(cda:componentOf/cda:encompassingEncounter/cda:code)">
            [Entete_DLU-FT-SU] L’attribut code de l’élément componentOf/encompassingEncounter/code prend la valeur 'EMER'
        </assert>
        
    </rule>
</pattern>