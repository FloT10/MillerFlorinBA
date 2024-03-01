<!-- transform.xslt -->

<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="html" indent="yes"/>
    
    <!-- Match the root element -->
    <xsl:template match="/">
        <html>
            <body>
                <!-- Apply templates to formblatt_6_2 element -->
                <xsl:apply-templates select="formblatt_6_2"/>
            </body>
        </html>
    </xsl:template>

    <!-- Match the formblatt_6_2 element -->
    <xsl:template match="formblatt_6_2">
        <h1><xsl:value-of select="tabelle_kopf/ueberschrift"/></h1>
        
        <!-- Apply templates to child elements of tabelle_kopf -->
        <xsl:apply-templates select="tabelle_kopf/spalten | tabelle_kopf/daten"/>
        
        <!-- Apply templates to child elements of tabelle_angaben_anlage -->
        <xsl:apply-templates select="tabelle_angaben_anlage"/>
        
        <!-- Apply templates to child elements of tabelle_angaben_stoffe -->
        <xsl:apply-templates select="tabelle_angaben_stoffe"/>
        
        <!-- Add more sections as needed -->
    </xsl:template>

    <!-- Match spalten and daten elements -->
    <xsl:template match="tabelle_kopf/spalten | tabelle_kopf/daten">
        <ul>
            <xsl:for-each select="*">
                <li><xsl:value-of select="."/></li>
            </xsl:for-each>
        </ul>
    </xsl:template>

    <!-- Match tabelle_angaben_anlage element -->
    <xsl:template match="tabelle_angaben_anlage">
        <h2><xsl:value-of select="ueberschrift"/></h2>
        <!-- Apply templates to child elements of tabelle_angaben_anlage -->
        <xsl:apply-templates select="spalten | daten"/>
    </xsl:template>

    <!-- Match tabelle_angaben_stoffe element -->
    <xsl:template match="tabelle_angaben_stoffe">
        <h2><xsl:value-of select="ueberschrift"/></h2>
        <!-- Apply templates to child elements of tabelle_angaben_stoffe -->
        <xsl:apply-templates select="spalten | daten"/>
    </xsl:template>

    <!-- Add more templates for other sections as needed -->
</xsl:stylesheet>
