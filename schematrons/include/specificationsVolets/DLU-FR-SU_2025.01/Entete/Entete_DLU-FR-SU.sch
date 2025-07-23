<?xml version="1.0" encoding="UTF-8"?>

<!--                  
    Entete_DLU-FR-SU.sch
    Teste la conformité de l'entete du document DLU-FR-SU au CI-SIS
    
    Historique :
    23/07/2025 : Création
    
-->


<pattern xmlns="http://purl.oclc.org/dsdl/schematron" id="Entete_DLU-FR-SU">
    
    <rule context='cda:ClinicalDocument'>
        
        <assert test="cda:templateId[@root='1.2.250.1.213.1.1.1.62']"> 
            [Entete_DLU-FR-SU] Le templateId "1.2.250.1.213.1.1.1.62" (Conformité au modèle DLU-FR-SU du CI-SIS) doit être présent.
        </assert>
        <assert test="./cda:code[@code='60280-5' and @codeSystem='2.16.840.1.113883.6.1']"> 
            [Entete_DLU-FR-SU] L'élément code doit avoir @code ="60280-5" et @codeSystem = "2.16.840.1.113883.6.1"/>. 
        </assert>
        
        
        <assert test="cda:recordTarget/cda:patientRole/cda:patient/cda:birthTime">
            [Entete_DLU-FR-SU] La date de naissance du patient est obligatoirement présente
        </assert>
        
        <assert test="cda:documentationOf/cda:serviceEvent/cda:code[@code='107724000']">
            [Entete_DLU-FR-SU] L’attribut code de l’élément documentationOf/serviceEvent/code prend la valeur '107724000'
        </assert>
        
    </rule>
</pattern>