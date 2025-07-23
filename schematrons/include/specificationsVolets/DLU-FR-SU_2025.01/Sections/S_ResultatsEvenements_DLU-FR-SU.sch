<?xml version="1.0" encoding="UTF-8"?>
<!-- 
   ......................................................................................................................................................    
  S_ResultatsEvenements_DLU-FR-SU.sch
   Schématron de vérification de la conformité au modèle du CI-SIS de la section FR-Resultats-evenements (1.2.250.1.213.1.1.2.163) dans le document DLU-FR-SU 
   Section FR-Resultats-evenements
   DLU-FR-SU : Fiche de liaison d'urgence
   auteur : ANS
   ......................................................................................................................................................    
    Historique :
    23/07/2025 : Création
   ......................................................................................................................................................    
-->

<pattern xmlns="http://purl.oclc.org/dsdl/schematron" id="S_ResultatsEvenements_DLU-FR-SU">
    <title>CI-SIS DLU-FR-SU Section Resultats évenements</title>
    
    <rule context='cda:section[cda:templateId/@root="1.2.250.1.213.1.1.2.163"]'>
        
        <!-- Vérifier le code de l'entrée 'FR-Simple observation' pour le retour vers l'EHPAD/au domicile ou un transfert vers une structure plus adaptée -->
        <assert test='cda:entry/cda:observation[cda:templateId/@root="1.3.6.1.4.1.19376.1.5.3.1.4.13"]/cda:code[@code="ORG-216" or @code="160849004" or @code="19712007"]'>
            [S_ResultatsEvenements_DLU-FR-SU] Erreur de conformité : l'entrée FR-Simple observation doit avoir le code 'ORG-216' ou '160849004' ou '19712007' pour le retour vers l'EHPAD/au domicile ou un transfert vers une structure plus adaptée.
        </assert>
        <!-- Vérifier le code de l'entrée 'FR-Simple observation' pour indiquer la destination du transfert -->
        <assert test='cda:entry/cda:act[cda:templateId/@root="1.2.250.1.213.1.1.3.28"]/cda:code/@code="80413-8"'>
            [S_ResultatsEvenements_DLU-FR-SU] Erreur de conformité : l'entrée FR-Transfert-du-patient doit avoir le code '80413-8' pour indiquer la destination du transfert.
        </assert>
    </rule>
    
</pattern>

