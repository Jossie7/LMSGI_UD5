<?xml version="1.0" encoding="ISO-8859-1"?>
<xsl:stylesheet version="1.0" 
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/">
    <html>
    <body>
    <h1> Mi lista musical: sello discografico</h1>
        <table>
        <tr bgcolor="#897186">
                <th>Titulo de Cancion</th>
                <th>Sello discografico</th>
        </tr>
        <xsl:for-each select="CDs/CD[selloDiscografico='Ovy on the Drums']">
        <tr>
            <td><xsl:value-of select ="tituloCancion"/></td>
            <td><xsl:value-of select ="selloDiscografico"/></td>
        </tr>
        </xsl:for-each>
    </table>
    </body>
    </html>
</xsl:template>
</xsl:stylesheet>