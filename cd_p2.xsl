<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/">
    <html>
    <body>
    <h1>Mis CDs de musica</h1>
        <table>
        <tr bgcolor="#19EC34">
            <th>Titulo Album</th>
            <th>Artista</th>
            <th>Sello Discografico</th>
            <th>Año Publicacion</th>   
            <th>Titulo Cancion</th>
                    
        </tr>
        <xsl:for-each select = "listamusica/cd[artista='Pedro Gonzalez']">
        <xsl:sort select = "añopublicacion"/>
        <tr>
            <td><xsl:value-of select ="tituloalbum"/></td>
            <td><xsl:value-of select ="artista"/></td>
            <td><xsl:value-of select ="sellodiscografico"/></td>
            <td><xsl:value-of select ="añopublicacion"/></td>
            <td>
                <xsl:for-each select ="cancion">

                    <xsl:value-of select="."/>
                    <br/>

                </xsl:for-each>
            </td>
            
        </tr>
        </xsl:for-each>
    </table>
    </body>
    </html>
</xsl:template>
</xsl:stylesheet>