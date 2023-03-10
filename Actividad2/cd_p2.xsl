<?xml version="1.0" encoding="ISO-8859-1"?>
<xsl:stylesheet version="1.0" 
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/">
    <html>
    <body>
    <h1> Mi lista musical: Karol G </h1>
        <table>
        <tr bgcolor="#897186">
                <th>Artista</th>
                <th>Titulo de Cancion</th>
                <th>Duracion</th>
        
                
        </tr>
        <xsl:for-each select="CDs/CD[artista='Karol G']">
        <tr>
            <td><xsl:value-of select ="artista"/></td>
            <td><xsl:for-each select ="tituloCancion">
                <xsl:value-of select ="."/><br/>
            </xsl:for-each></td>
            <td><xsl:for-each select ="tituloCancion/@tiempo">
                <xsl:value-of select ="."/><br/>
            </xsl:for-each></td>
        </tr>
        </xsl:for-each>
    </table>
    </body>
    </html>
</xsl:template>
</xsl:stylesheet>
