<!-- transform.xslt -->

<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/">
        <pdf>
            <!-- Deine PDF-Generierung hier -->
            <xsl:apply-templates select="formblatt_6_2"/>
        </pdf>
    </xsl:template>

    <xsl:template match="formblatt_6_2">
        <!-- Hier könntest du die Struktur deines XMLs in PDF-Elemente transformieren -->
        <!-- Zum Beispiel, könnte dies eine einfache Tabelle für jede Tabelle in deinem XML erstellen -->
        <table>
            <xsl:for-each select="*">
                <row>
                    <xsl:for-each select="*">
                        <cell><xsl:value-of select="."/></cell>
                    </xsl:for-each>
                </row>
            </xsl:for-each>
        </table>
    </xsl:template>
</xsl:stylesheet>
