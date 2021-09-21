<?xml version="1.0"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">

    <xsl:template match="/">
      <html>
          <head>

          </head>
          <body>
              <h1>ABC Financial Startup</h1>
              <img src="financialstartup.jpg"/>
              <p>We are a very young financial manager company and we are proud of our clients</p>
              <p>We have started with 1 client a bit more than 10 years ago and we now have
              <xsl:value-of select="count(//Client)"/> clients! </p>
              <p>These are our clients:
                  <xsl:for-each select="//Client/Name">
                  <xsl:value-of select="First"/> <xsl:value-of select="Last"/>,
                  </xsl:for-each>
              </p>


          </body>
      </html>
    </xsl:template>
</xsl:stylesheet>