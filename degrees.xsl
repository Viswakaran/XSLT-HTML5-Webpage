<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet version="1.0"
                xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

  <xsl:output method="html"
              doctype-system="about:legacy-compat"
              encoding="UTF-8"
              indent="yes" />

  <xsl:template match="/">
    <html>
      <head>
        <title>List of degrees.</title>

        <link rel="stylesheet" href="degrees.css" />
      </head>
      <body>
        <table class="degrees">
          <thead>
            <tr>
              <th>bp</th>
              <th>dp</th>
              <th>id</th>
              <th>letter</th>
              <th>link</th>
              <th>mp</th>
              <th>name</th>
              <th>school</th>
            </tr>
          </thead>
          <tbody>
            <xsl:for-each select="degrees/degree">
            <xsl:sort select="rank"/>
            <tr>
              <td><xsl:value-of select="bp"/></td>
              <td><xsl:value-of select="dp"/></td>
              <td><xsl:value-of select="id"/></td>
              <td><xsl:value-of select="letter"/></td>
              <td><xsl:value-of select="link"/></td>
              <td><xsl:value-of select="mp"/></td>
              <td><xsl:value-of select="name"/></td>
              <td><xsl:value-of select="school"/></td>
            </tr>
            </xsl:for-each>
          </tbody>
        </table>
      </body>
    </html>
  </xsl:template>

</xsl:stylesheet>