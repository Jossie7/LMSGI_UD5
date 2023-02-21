<?xml version="1.0" encoding="ISO-8859-1"?>
<xsl:stylesheet version="1.0" 
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/">
    <html>
    <body>
    <h1> Mi lista musical </h1>
        <table>
        <tr bgcolor="#897186">
                <th>Titulo de Album</th>
                <th>Artista</th>
                <th>Titulo de Cancion</th>
                <th>Sello discografico</th>
                <th>Anho publicacion</th>
                
        </tr>
        <xsl:for-each select="CDs/CD">
        <tr>
            <td><xsl:value-of select ="tituloAlbum"/></td>
            <td><xsl:value-of select ="artista"/></td>
            <td><xsl:for-each select ="tituloCancion">
                <xsl:value-of select ="."/><br/>
            </xsl:for-each></td>
            <td><xsl:value-of select ="selloDiscografico"/></td>
            <td><xsl:value-of select ="anhoPublicacion"/></td>
        </tr>
        </xsl:for-each>
    </table>
    </body>
    </html>
</xsl:template>
</xsl:stylesheet>
