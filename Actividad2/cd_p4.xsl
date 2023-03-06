<?xml version="1.0" encoding="ISO-8859-1"?>
<xsl:stylesheet version="1.0" 
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/">
    <html>
    <body>
    <h1> Mi lista musical: duracion mayor a 800 segundos</h1>
        <table>
        <tr bgcolor="#897186">
                <th>Titulo de Album</th>
                <th>Artista</th>
                <th>Sello discografico</th>
                <th>Anho publicacion</th>
                <th>Titulo de cancion</th>
                <th>Duracion</th>
               
        </tr>
        <xsl:for-each select="CDs/CD">      
            <xsl:variable name="tituloAlbum">
                <xsl:value-of select="tituloAlbum"/>
            </xsl:variable>
            <xsl:variable name="artista">
                <xsl:value-of select="artista"/>
            </xsl:variable>
            <xsl:variable name="selloDiscografico">
                <xsl:value-of select="selloDiscografico"/>
            </xsl:variable>
            <xsl:variable name="anhoPublicacion">
                <xsl:value-of select="anhoPublicacion"/>
            </xsl:variable>
            <xsl:for-each select="tituloCancion">
                <xsl:if test="@duracion &gt; 800">
                    <tr>                                    
                        <td>
                            <xsl:value-of select="$tituloAlbum"/>
                        </td>
                        <td>
                            <xsl:value-of select="$artista"/>
                        </td>
                        <td>
                            <xsl:value-of select="$selloDiscografico"/>
                        </td>
                        <td>
                            <xsl:value-of select="$anhoPublicacion"/>
                        </td>
                        <td>
                            <xsl:value-of select="."/>
                        <br/>
                        </td>
                        <td>
                            <xsl:value-of select="@duracion"/>
                        </td>                             
                    </tr>
                </xsl:if>
            </xsl:for-each>
        </xsl:for-each>
    </table>
    </body>
    </html>
</xsl:template>
</xsl:stylesheet>
