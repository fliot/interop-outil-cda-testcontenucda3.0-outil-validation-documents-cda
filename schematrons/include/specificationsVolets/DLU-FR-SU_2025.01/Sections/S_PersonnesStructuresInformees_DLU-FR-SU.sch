<?xml version="1.0" encoding="UTF-8"?>
<!-- 
   ......................................................................................................................................................    
  S_PersonnesStructuresInformees_DLU-FR-SU.sch
   Schématron de vérification de la conformité au modèle du CI-SIS de la section FR-Personnes-Structures-informees (1.2.250.1.213.1.1.2.251) dans le document DLU-FR-SU 
   Section FR-Personnes-Structures-informees 
   DLU-FR-SU : Fiche de liaison d'urgence
   auteur : ANS
   ......................................................................................................................................................    
    Historique :
    23/07/2025 : Création
   ......................................................................................................................................................    
-->

<pattern xmlns="http://purl.oclc.org/dsdl/schematron" id="S_PersonnesStructuresInformees_DLU-FR-SU">
    <title>CI-SIS DLU-FR-SU Section Personnes-Structures-informees</title>
    
    <rule context='cda:section[cda:templateId/@root="1.2.250.1.213.1.1.2.251"]'>
        
        <!-- Vérifier le code de l'entrée 'FR-Simple observation' pour l'établissement d'origine -->
        <assert test='cda:entry/cda:observation[cda:templateId/@root="1.3.6.1.4.1.19376.1.5.3.1.4.13"]/cda:code/@code="ORG-222"'>
            [S_PersonnesStructuresInformees_DLU-FR-SU] Erreur de conformité : l'entrée FR-Simple observation doit avoir le code 'ORG-222' pour l'établissement d'origine.
        </assert>
        <!-- Vérifier le code de l'entrée 'FR-Simple observation' pour le médecin traitant -->
        <assert test='cda:entry/cda:observation[cda:templateId/@root="1.3.6.1.4.1.19376.1.5.3.1.4.13"]/cda:code/@code="PCP"'>
            [S_PersonnesStructuresInformees_DLU-FR-SU] Erreur de conformité : l'entrée FR-Simple observation doit avoir le code 'PCP' pour le médecin traitant.
        </assert>
        <!-- Vérifier le code de l'entrée 'FR-Simple observation' pour l'entourage du patient -->
        <assert test='cda:entry/cda:observation[cda:templateId/@root="1.3.6.1.4.1.19376.1.5.3.1.4.13"]/cda:code/@code="ORG-223"'>
            [S_PersonnesStructuresInformees_DLU-FR-SU] Erreur de conformité : l'entrée FR-Simple observation doit avoir le code 'ORG-223' pour l'entourage du patient.
        </assert>
    </rule>
    
</pattern>

