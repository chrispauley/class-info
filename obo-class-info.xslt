<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet version="1.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:owl="http://www.w3.org/2002/07/owl#"
    xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#"
    xmlns:rdfs="http://www.w3.org/2000/01/rdf-schema#"
    xmlns:xsd="http://www.w3.org/2001/XMLSchema"
    xmlns:obo="http://purl.obolibrary.org/obo/"
    exclude-result-prefixes="owl rdf rdfs xsd"
    >

    <xsl:output method="text" omit-xml-declaration="yes" />
    
    <xsl:template match="/">
        <xsl:text>IRI</xsl:text>
        <xsl:text>&#x9;</xsl:text>
        <xsl:text>rdfs:label</xsl:text>
        <xsl:text>&#x9;</xsl:text>
        <xsl:text>obo:definition</xsl:text>
        <xsl:text>&#10;</xsl:text>
        <xsl:apply-templates select="rdf:RDF"/>    
    </xsl:template>
    
    <xsl:template match="rdf:RDF">
        <xsl:apply-templates select="owl:Class"/>    
    </xsl:template>

    <xsl:template match="owl:Class">
        <xsl:value-of select="@rdf:about"/>    
        <xsl:text>&#x9;</xsl:text>
        <xsl:value-of select="rdfs:label"/> 
        <xsl:text>&#x9;</xsl:text>
        <xsl:value-of select="obo:IAO_0000115"/>
        <xsl:text>&#10;</xsl:text>
    </xsl:template>
</xsl:stylesheet>