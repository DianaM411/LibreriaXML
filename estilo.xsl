<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" 
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/">
  <html>
  <body>
  <h1>Libreria</h1>
  <table border="1">
    <tr bgcolor="#A26EA3">
      <th>Codigo</th>
      <th>Titulo</th>
      <th>Autor</th>
      <th>Fecha</th>
      <th>Precio</th>
    </tr>

      <xsl:for-each select="libreria/libro[precio  15]">
      <xsl:sort select="titulo"/>
          <tr>
            <td><xsl:value-of select="libreria/libro/codigo"/></td>
            <td><xsl:value-of select="libreria/libro/titulo"/></td>
            <td><xsl:value-of select="libreria/libro/autor"/></td>
            
            <td><xsl:value-of select="libreria/libro/precio"/></td>
          </tr>

          <xsl:if test="fecha &lt; 2022-01-02">
        <tr>
          <td><xsl:value-of select="libreria/libro/fecha"/></td>
        </tr>
      </xsl:if>
      </xsl:for-each>
      
  </table>

  <ol>
    <xsl:for-each select="libreria/cliente">
    <xsl:choose>
        <xsl:when test="nivel = 'VIP'">
          <li bgcolor="#ff00ff">
          <xsl:value-of select="libreria/cliente/nombre"/> VIP</li>
        </xsl:when>
        <xsl:otherwise>
          <li bgcolor="#0179F2"><xsl:value-of select="libreria/cliente/nombre"/>Basic</li>
        </xsl:otherwise>
      </xsl:choose>
    </xsl:for-each>
  </ol>

  </body>
  </html>
</xsl:template>

</xsl:stylesheet>