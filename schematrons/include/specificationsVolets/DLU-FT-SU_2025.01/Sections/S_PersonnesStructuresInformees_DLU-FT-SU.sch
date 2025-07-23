<?xml version="1.0" encoding="UTF-8"?>
<!-- 
   ......................................................................................................................................................    
  S_PersonnesStructuresInformees_DLU-FT-SU.sch
   Schématron de vérification de la conformité au modèle du CI-SIS de la section FR-Personnes-Structures-informees (1.2.250.1.213.1.1.2.251) dans le document DLU-FT-SU 
   Section FR-Personnes-Structures-informees 
   DLU-FT-SU : Fiche de liaison d'urgence
   auteur : ANS
   ......................................................................................................................................................    
    Historique :
    23/07/2025 : Création
   ......................................................................................................................................................    
-->

<pattern xmlns="http://purl.oclc.org/dsdl/schematron" id="S_PersonnesStructuresInformees_DLU-FT-SU">
    <title>CI-SIS DLU-FT-SU Section Personnes-Structures-informees</title>
    
    <rule context='cda:section[cda:templateId/@root="1.2.250.1.213.1.1.2.251"]'>
        
        <!-- Vérifier le code de l'entrée 'FR-Simple observation' pour le centre 15 -->
        <assert test='cda:entry/cda:observation[cda:templateId/@root="1.3.6.1.4.1.19376.1.5.3.1.4.13"]/cda:code/@code="ORG-214"'>
            [S_PersonnesStructuresInformees_DLU-FT-SU] Erreur de conformité : l'entrée FR-Simple observation doit avoir le code 'ORG-214' pour le centre 15.
        </assert>
        <!-- Vérifier le code de l'entrée 'FR-Simple observation' pour le service des urgences -->
        <assert test='cda:entry/cda:observation[cda:templateId/@root="1.3.6.1.4.1.19376.1.5.3.1.4.13"]/cda:code/@code="225728007"'>
            [S_PersonnesStructuresInformees_DLU-FT-SU] Erreur de conformité : l'entrée FR-Simple observation doit avoir le code '225728007' pour le service des urgences.
        </assert>
        <!-- Vérifier le code de l'entrée 'FR-Simple observation' pour le médecin traitant -->
        <assert test='cda:entry/cda:observation[cda:templateId/@root="1.3.6.1.4.1.19376.1.5.3.1.4.13"]/cda:code/@code="PCP"'>
            [S_PersonnesStructuresInformees_DLU-FT-SU] Erreur de conformité : l'entrée FR-Simple observation doit avoir le code 'PCP' pour le médecin traitant.
        </assert>
        <!-- Vérifier le code de l'entrée 'FR-Simple observation' pour l'entourage du patient -->
        <assert test='cda:entry/cda:observation[cda:templateId/@root="1.3.6.1.4.1.19376.1.5.3.1.4.13"]/cda:code/@code="ORG-223"'>
            [S_PersonnesStructuresInformees_DLU-FT-SU] Erreur de conformité : l'entrée FR-Simple observation doit avoir le code 'ORG-223' pour l'entourage du patient.
        </assert>
    </rule>
    
</pattern>

