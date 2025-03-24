<?xml version="1.0" encoding="UTF-8"?>

<!-- 
    CI-SIS_AVC-PAVC-PAVC_2022.01.sch
    ANS
   
    ......................................................................................................................................................    
    Historique :
       05/10/17 : Création
       14/03/18 : MAJ du pattern variables
       10/09/2021 :  Modification du nom du schematron
       28/08/2023 : Migration des terminologies et JDV
                            
 -->
<schema xmlns="http://purl.oclc.org/dsdl/schematron" defaultPhase="CI-SIS_AVC-PAVC_2022.01"
    xmlns:cda="urn:hl7-org:v3" queryBinding="xslt2"
    xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" schemaVersion="CI-SIS_AVC-PAVC_2022.01.sch">
    <title>Vérification de la conformité au modèle AVC-PAVC</title>
    <ns prefix="cda" uri="urn:hl7-org:v3"/>
    <ns prefix="xsi" uri="http://www.w3.org/2001/XMLSchema-instance"/>
    <ns prefix="jdv" uri="http://esante.gouv.fr"/>
    <ns prefix="svs" uri="urn:ihe:iti:svs:2008"/>
     
    <!--=<<o#%@O[ Abstract patterns ]O@%#o>>=-->
    
    <include href="abstract/dansJeuDeValeurs.sch"/>
    <include href="abstract/IVL_TS.sch"/>   
    
    
    <!--=<<o#%@O[ JDV ]O@%#o>>=-->
    <include href="include/jeuxDeValeurs/AVC-PAVC_2022.01/JDV_Appareillage_AVC.sch"/>
    <include href="include/jeuxDeValeurs/AVC-PAVC_2022.01/JDV_Activite_AVC.sch"/>
    <include href="include/jeuxDeValeurs/AVC-PAVC_2022.01/JDV_GIR_AVC.sch"/>
    <include href="include/jeuxDeValeurs/AVC-PAVC_2022.01/JDV_TraitementPreventif_AVC.sch"/>
    <include href="include/jeuxDeValeurs/AVC-PAVC_2022.01/JDV_TraitementSuivi_AVC.sch"/>
    <include href="include/jeuxDeValeurs/AVC-PAVC_2022.01/JDV_Juridique_AVC.sch"/>
    <include href="include/jeuxDeValeurs/AVC-PAVC_2022.01/JDV_SeverityObservation_AVC.sch"/>
    <include href="include/jeuxDeValeurs/AVC-PAVC_2022.01/JDV_DeficiencePhysique-CISIS.sch"/>
    <include href="include/jeuxDeValeurs/AVC-PAVC_2022.01/JDV_EvaluationNeurocognitives-CISIS.sch"/>
    <include href="include/jeuxDeValeurs/AVC-PAVC_2022.01/JDV_RealisationActivites-CISIS.sch"/>
    <include href="include/jeuxDeValeurs/AVC-PAVC_2022.01/JDV_AvisMedicalComplementaire-CISIS.sch"/>
    <include href="include/jeuxDeValeurs/AVC-PAVC_2022.01/JDV_RepriseProfessionnelle-CISIS.sch"/>
    <include href="include/jeuxDeValeurs/AVC-PAVC_2022.01/JDV_MesuresProtectionConduiteAutomobile-CISIS.sch"/>
    <include href="include/jeuxDeValeurs/AVC-PAVC_2022.01/JDV_LieudeVie-CISIS.sch"/>
    <include href="include/jeuxDeValeurs/AVC-PAVC_2022.01/JDV_TypeDossier-CISIS.sch"/>
    <include href="include/jeuxDeValeurs/AVC-PAVC_2022.01/JDV_DestinationTransfert-CISIS.sch"/>
    <include href="include/jeuxDeValeurs/AVC-PAVC_2022.01/JDV_Readaptation-CISIS.sch"/>
    <include href="include/jeuxDeValeurs/AVC-PAVC_2022.01/JDV_Taille-CISIS.sch"/>
    <include href="include/jeuxDeValeurs/AVC-PAVC_2022.01/JDV-TypePriseEnCharge-CISIS.sch"/>
    
    <!--Entete-->
    <include href="include/specificationsVolets/AVC-PAVC_2.2_2022.01/Entete/Entete_AVC-PAVC.sch"/>
    
    
    <phase id="CI-SIS_AVC-PAVC_2022.01">
        <active pattern="variables"/>
        <active pattern="JDV_Appareillage_AVC"/>
        <active pattern="JDV_Activite_AVC"/>
        <active pattern="JDV_GIR_AVC"/>
        <active pattern="JDV_Juridique_AVC"/>
        <active pattern="JDV_TraitementSuivi_AVC"/>
        <active pattern="JDV_TraitementPreventif_AVC"/>
        <active pattern="JDV_SeverityObservation_AVC"/>
        <active pattern="JDV_DeficiencePhysique-CISIS"/>
        <active pattern="JDV_EvaluationNeurocognitives-CISIS"/>
        <active pattern="JDV_RealisationActivites-CISIS"/>
        <active pattern="JDV_AvisMedicalComplementaire-CISIS"/>
        <active pattern="JDV_RepriseProfessionnelle-CISIS"/>
        <active pattern="JDV_MesuresProtectionConduiteAutomobile-CISIS"/>
        <active pattern="JDV_LieudeVie-CISIS"/>
        <active pattern="JDV_TypeDossier-CISIS"/>
        <active pattern="JDV_DestinationTransfert-CISIS"/>
        <active pattern="JDV_Readaptation-CISIS"/>
        <active pattern="JDV_Taille-CISIS"/>
        <active pattern="JDV-TypePriseEnCharge-CISIS"/>
        
        <active pattern="Entete_AVC-PAVC"/>
    </phase>
     
    <pattern id="variables">
        <let name="jdv_AVC_Appareillage" value="'../jeuxDeValeurs/jdv-taille-cisis.xml'"/>
        <let name="jdv_Taille-CISIS" value="'../jeuxDeValeurs/jdv-taille-cisis.xml'"/>
        <let name="jdv_AVC_Activite" value="'../jeuxDeValeurs/jdv-activite-cisis.xml'"/> 
        <let name="jdv_AVC_GIR" value="'../jeuxDeValeurs/jdv-gir-cisis.xml'"/> 
        <let name="jdv_AVC_Juridique" value="'../jeuxDeValeurs/jdv-juridique-cisis.xml'"/> 
        <let name="jdv_AVC_TraitementPreventif" value="'../jeuxDeValeurs/jdv-traitement-preventif-cisis.xml'"/> 
        <let name="jdv_AVC_TraitementSuivi" value="'../jeuxDeValeurs/jdv-traitement-suivi-cisis.xml'"/> 
        <let name="jdv_AVC_Severite" value="'../jeuxDeValeurs/jdv-severite-observation-cisis.xml'"/>
        <let name="jDV_DeficiencePhysique-CISIS" value="'../jeuxDeValeurs/jdv-deficience-physique-cisis.xml'"/>
        <let name="jdv_EvaluationNeurocognitives-CISIS" value="'../jeuxDeValeurs/jdv-evaluation-neurocognitive-cisis.xml'"/>
        <let name="jdv_RealisationActivites-CISIS" value="'../jeuxDeValeurs/jdv-realisation-activite-cisis.xml'"/>
        <let name="jdv_AvisMedicalComplementaire-CISIS" value="'../jeuxDeValeurs/jdv-avis-medical-complementaire-cisis.xml'"/>
        <let name="jdv_RepriseProfessionnelle-CISIS" value="'../jeuxDeValeurs/jdv-reprise-professionnelle-cisis.xml'"/>
        <let name="jdv_MesuresProtectionConduiteAutomobile-CISIS" value="'../jeuxDeValeurs/jdv-mesure-protection-conduite-automobile-cisis.xml'"/>
        <let name="jdv_LieudeVie-CISIS" value="'../jeuxDeValeurs/jdv-lieu-de-vie-cisis.xml'"/>
        <let name="jdv_TypeDossier-CISIS" value="'../jeuxDeValeurs/jdv-type-dossier-cisis.xml'"/>
        <let name="jdv_DestinationTransfert-CISIS" value="'../jeuxDeValeurs/jdv-destination-transfert-cisis.xml'"/>
        <let name="jdv_Readaptation-CISIS" value="'../jeuxDeValeurs/jdv-readaptation-cisis.xml'"/>
        <let name="jdv-TypePriseEnCharge-CISIS" value="'../jeuxDeValeurs/jdv-type-prise-en-charge-cisis.xml'"/>
        
       
   </pattern>      
     
    
</schema>

