<?xml version="1.0" encoding="ISO-8859-1"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="text"/>
    <xsl:template match="/">
        <xsl:for-each select="root/record">
- <xsl:value-of select="id"/>, <xsl:value-of select="title"/>, "<xsl:value-of select="date/year"/>-<xsl:value-of select="date/month"/>-<xsl:value-of select="date/day"/>".
        </xsl:for-each>
    </xsl:template>
</xsl:stylesheet>
