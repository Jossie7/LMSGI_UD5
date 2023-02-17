<?xml version="1.0" encoding="ISO-8859-1"?>
<xsl:stylesheet version="1.0" 
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/">
    <html>
    <body>
    <h1> Mi biblioteca personal </h1>
    <xsl:apply-templates/>
    </body></html>
    </xsl:template>
    <xsl:template match="libreria">
        <table>
        <tr bgcolor="#897186">
                <th> ISBN </th>
                <th> Titulo </th>
                <th> Autor </th>
                <th> Precio </th>
                <th> numPaginas </th>
        </tr>
        <xsl:apply-templates select="libro"/>
    </table>
    </xsl:template>
        <xsl:template match="libro">
        <tr>
            <td><xsl:apply-templates select ="ISBN"/></td>
            <td><xsl:apply-templates select ="titulo"/></td>
            <td><xsl:apply-templates select ="autor"/></td>
            <td><xsl:apply-templates select ="precio"/></td>
            <xsl:choose>
                <xsl:when test="numPaginas &gt;150">
                    <td bgcolor="red">
                        <xsl:value-of select="numPaginas"/>
                    </td>
                </xsl:when>
                <xsl:otherwise>
                    <td bgcolor="white">
                        <xsl:value-of select="numPaginas"/>
                    </td>
                </xsl:otherwise>
            </xsl:choose>
        </tr>
        </xsl:template>
    <xsl:template match="numPaginas">
        <td bgcolor="white">
            <xsl:value-of select="."/>
        </td>
    </xsl:template>
</xsl:stylesheet>