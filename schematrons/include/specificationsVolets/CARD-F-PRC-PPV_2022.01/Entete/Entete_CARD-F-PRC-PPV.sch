<?xml version="1.0" encoding="UTF-8"?>

<!--                  
    Entete_CARD-F-PRC-PPV.sch
    Teste la conformité de l'entete de CARD-F-PRC-PPV au CI-SIS
    
    Historique :
    02/01/2023: Création    
-->

<pattern xmlns="http://purl.oclc.org/dsdl/schematron" id="Entete_CARD-F-PRC-PPV">
    
    <!-- Contrôles spécifiques à l'en tête -->
    <rule context="cda:ClinicalDocument">
        <assert test="cda:templateId[@root='1.2.250.1.213.1.1.1.2.1.5']"> 
            [Entete_CARD-F-PRC-PPV] Erreur de conformité au modèle : Le templateId "1.2.250.1.213.1.1.1.2.1.5" doit être présent.
        </assert>
        <assert test="./cda:code[@code='34133-9' and @codeSystem='2.16.840.1.113883.6.1']"> 
            [Entete_CARD-F-PRC-PPV] Erreur de conformité au modèle : L'élément "code" doit avoir les attributs @code="77436-4" et @codeSystem="2.16.840.1.113883.6.1". 
        </assert>
        <assert test="cda:participant[@typeCode='INF'] and cda:participant/cda:functionCode[@code='PCP']"> 
            [Entete_CARD-F-PRC-AVK] Erreur de conformité au modèle : L'élément "participant" avec l'attribut @typeCode='INF' doit avoir l'élément "participant/functionCode" avec l'attribut @code='PCP' pour le médecin traitant
        </assert>
        <assert test="cda:participant[@typeCode='PRF'] and cda:participant/cda:functionCode[@code='ATTPHYS']"> 
            [Entete_CARD-F-PRC-AVK] Erreur de conformité au modèle : L'élément "participant" avec l'attribut @typeCode='PRF' doit avoir l'élément "participant/functionCode" avec l'attribut @code='ATTPHYS' pour le Cardiologue traitant
        </assert>
    </rule>
    
    
</pattern>