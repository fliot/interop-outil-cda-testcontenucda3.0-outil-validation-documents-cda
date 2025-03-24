<?xml version="1.0" encoding="UTF-8"?>
<!-- 
    CI-SIS_AVC-EUNV_2.2_2022.01.sch
    ANS
    ......................................................................................................................................................    
    Historique :
       29/10/2013 : Création
       19/06/2015 : Maj des include telecom20110728.sch -> telecom20150317.sch
       14/03/2018 : MAJ du pattern variables
       10/09/2021 : Modification du nom du schematron
       28/08/2023 : Migration des terminologies et JDV
-->
<schema xmlns="http://purl.oclc.org/dsdl/schematron"
    xmlns:cda="urn:hl7-org:v3" queryBinding="xslt2"
    xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" schemaVersion="CI-SIS_AVC-EUNV_2.2_2022.01.sch">
    <title>Vérification de la conformité au modèle AVC-EUNV_2.2_2023.04</title>
    <ns prefix="cda" uri="urn:hl7-org:v3"/>
    <ns prefix="xsi" uri="http://www.w3.org/2001/XMLSchema-instance"/>
    <ns prefix="jdv" uri="http://esante.gouv.fr"/>
    <ns prefix="svs" uri="urn:ihe:iti:svs:2008"/>
    
    <!--=<<o#%@O[ Abstract patterns ]O@%#o>>=-->
    <include href="abstract/dansJeuDeValeurs.sch"/>
    <include href="abstract/IVL_TS.sch"/>
    
    <!--JDV-->
    <include href="include/jeuxDeValeurs/AVC-EUNV_2022.01/JDV_ComplicationNeurologique-CISIS.sch"/>
    <include href="include/jeuxDeValeurs/AVC-EUNV_2022.01/JDV_Complication-CISIS.sch"/>
    <include href="include/jeuxDeValeurs/AVC-EUNV_2022.01/JDV_InvestigationsRealiseesEUNV-CISIS.sch"/>
    <include href="include/jeuxDeValeurs/AVC-EUNV_2022.01/JDV_ExamenHematologieEUVN-CISIS.sch"/>
    <include href="include/jeuxDeValeurs/AVC-EUNV_2022.01/JDV_ExamenHemostaseEUNV-CISIS.sch"/>
    <include href="include/jeuxDeValeurs/AVC-EUNV_2022.01/JDV_ExamenBiochimieEUNV-CISIS.sch"/>
    <include href="include/jeuxDeValeurs/AVC-EUNV_2022.01/JDV_TypeActeEUVN-CISIS.sch"/>
    <include href="include/jeuxDeValeurs/AVC-EUNV_2022.01/JDV_ComplicationDigestive-CISIS.sch"/>
    <include href="include/jeuxDeValeurs/AVC-EUNV_2022.01/JDV_Complicationneuropsychiatriques-CISIS.sch"/>
    <include href="include/jeuxDeValeurs/AVC-EUNV_2022.01/JDV_ComplicationThromboembolique-CISIS.sch"/>
    <include href="include/jeuxDeValeurs/AVC-EUNV_2022.01/JDV_ComplicationUrinaire-CISIS.sch"/>
    <include href="include/jeuxDeValeurs/AVC-EUNV_2022.01/JDV_ComplicationPulmonaire-CISIS.sch"/>
    
    <!--Entete-->
    <include href="include/specificationsVolets/AVC-EUNV_2.2_2022.01/Entete/Entete_AVC-EUNV.sch"/>
    
    <phase id="CI-SIS_AVC-EUNV_2.2_2022.01">
        <active pattern="variables"/>
        <active pattern="JDV_ComplicationNeurologique-CISIS"/>
        <active pattern="JDV_Complication-CISIS"/>
        <active pattern="JDV_InvestigationsRealiseesEUNV-CISIS"/>
        <active pattern="JDV_ExamenHematologieEUVN-CISIS"/>
        <active pattern="JDV_ExamenHemostaseEUNV-CISIS"/>
        <active pattern="JDV_ExamenBiochimieEUNV-CISIS"/>
        <active pattern="JDV_TypeActeEUVN-CISIS"/>
        <active pattern="Entete_AVC-EUNV"/>
        <active pattern="JDV_ComplicationPulmonaire-CISIS"/>
        <active pattern="JDV_Complicationneuropsychiatriques-CISIS"/>
        <active pattern="JDV_ComplicationUrinaire-CISIS"/>
        <active pattern="JDV_ComplicationThromboembolique-CISIS"/>
        <active pattern="JDV_ComplicationDigestive-CISIS"/>
    </phase>
    
    <!-- Variables globales -->
    <pattern id="variables">

        <!-- chemins relatifs des fichiers jeux de valeurs -->
        <let name="JDV_ComplicationNeurologique-CISIS" value="'../jeuxDeValeurs/jdv-complication-neurologique-cisis.xml'"/>
        <let name="JDV_Complication-CISIS" value="'../jeuxDeValeurs/jdv-complication-cisis.xml'"/>
        <let name="JDV_InvestigationsRealiseesEUNV-CISIS" value="'../jeuxDeValeurs/jdv-investigation-realisee-eunv-cisis.xml'"/>
        <let name="JDV_ExamenHematologieEUVN-CISIS" value="'../jeuxDeValeurs/jdv-examen-hematologie-eunv-cisis.xml'"/>
        <let name="JDV_ExamenHemostaseEUNV-CISIS" value="'../jeuxDeValeurs/jdv-examen-hemostase-eunv-cisis.xml'"/>
        <let name="JDV_ExamenBiochimieEUNV-CISIS" value="'../jeuxDeValeurs/jdv-examen-biochimie-eunv-cisis.xml'"/>
        <let name="JDV_TypeActeEUVN-CISIS" value="'../jeuxDeValeurs/jdv-type-acte-eunv-cisis.xml'"/>
        <let name="JDV_ComplicationPulmonaire-CISIS" value="'../jeuxDeValeurs/jdv-complication-pulmonaire-cisis.xml'"/>
        <let name="JDV_Complicationneuropsychiatriques-CISIS" value="'../jeuxDeValeurs/jdv-complication-neuropsychiatrique-cisis.xml'"/>
        <let name="JDV_ComplicationUrinaire-CISIS" value="'../jeuxDeValeurs/jdv-complication-urinaire-cisis.xml'"/>
        <let name="JDV_ComplicationThromboembolique-CISIS" value="'../jeuxDeValeurs/jdv-complication-thromboembolique-cisis.xml'"/>
        <let name="JDV_ComplicationDigestive-CISIS" value="'../jeuxDeValeurs/jdv-complication-digestive-cisis.xml'"/>
    </pattern>
</schema>
