<?xml version="1.0" encoding="UTF-8"?>
<!-- 
   ......................................................................................................................................................    
  S_FonctionsPhysiques_DLU-FT-SU.sch
   Schématron de vérification de la conformité au modèle du CI-SIS de la section FR-Fonctions-physiques (1.2.250.1.213.1.1.2.251) dans le document DLU-FT-SU 
   Section FR-Fonctions-physiques 
   DLU-FT-SU : Fiche de liaison d'urgence
   auteur : ANS
   ......................................................................................................................................................    
    Historique :
    23/07/2025 : Création
   ......................................................................................................................................................    
-->

<pattern xmlns="http://purl.oclc.org/dsdl/schematron" id="S_FonctionsPhysiques_DLU-FT-SU">
    <title>CI-SIS DLU-FT-SU Section Fonctions physiques</title>
    
    <rule context='cda:section[cda:templateId/@root="1.2.250.1.213.1.1.2.115"]'>
        
        <!-- Vérifier le code de l'entrée 'FR-Simple observation' pour l'état de conscience du patient -->
        <assert test='cda:entry/cda:observation[cda:templateId/@root="1.3.6.1.4.1.19376.1.5.3.1.4.13"]/cda:code[@code="MED-1301" or @code="MED-1302" or @code="MED-1303"]'>
            [S_FonctionsPhysiques_DLU-FT-SU] Erreur de conformité : l'entrée FR-Simple observation doit avoir le code 'MED-1301' ou 'MED-1302' ou 'MED-1303' pour l'état de conscience du patient.
        </assert>
        <!-- Vérifier le code de l'entrée 'FR-Simple observation' pour la date et heure de la dernière prise du traitement habituel -->
        <assert test='cda:entry/cda:observation[cda:templateId/@root="1.3.6.1.4.1.19376.1.5.3.1.4.13"]/cda:code/@code="GEN-370"'>
            [S_FonctionsPhysiques_DLU-FT-SU] Erreur de conformité : l'entrée FR-Simple observation doit avoir le code 'GEN-370' pour la date et heure de la dernière prise du traitement habituel.
        </assert>
        <!-- Vérifier le code de l'entrée 'FR-Simple observation' pour la date et heure du dernier repas -->
        <assert test='cda:entry/cda:observation[cda:templateId/@root="1.3.6.1.4.1.19376.1.5.3.1.4.13"]/cda:code/@code="GEN-244"'>
            [S_FonctionsPhysiques_DLU-FT-SU] Erreur de conformité : l'entrée FR-Simple observation doit avoir le code 'GEN-244' pour la date et heure du dernier repas.
        </assert>
    </rule>
    
</pattern>

