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
            <th>Tiempo</th>           
        </tr>
        
        <xsl:for-each select = "listamusica/cd">
        <xsl:variable name="tituloalbum"><xsl:value-of select ="tituloalbum"/> </xsl:variable> 
        <xsl:variable name="artista"><xsl:value-of select ="artista"/> </xsl:variable> 
        <xsl:variable name="sellodiscografico"><xsl:value-of select ="sellodiscografico"/> </xsl:variable> 
        <xsl:variable name="añopublicacion"><xsl:value-of select ="añopublicacion"/> </xsl:variable>
        <xsl:for-each select ="cancion">
        <xsl:if test="@tiempo &lt; 200"> 

        <tr>
            <td><xsl:value-of select ="$tituloalbum"/></td>
            <td><xsl:value-of select ="$artista"/></td>
            <td><xsl:value-of select ="$sellodiscografico"/></td>
            <td><xsl:value-of select ="$añopublicacion"/></td>
            <td><xsl:value-of select ="."/></td>  
            <td><xsl:value-of select ="@tiempo"/></td>
        </tr>
        </xsl:if>
        </xsl:for-each>
        </xsl:for-each>
        </table>
    </body>
    </html>
</xsl:template>
</xsl:stylesheet>