<?xml version="1.0"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">

    <xsl:template match="/">
        <html>
            <head>
                <style>
                    .image-box {
                        display: flex;
                        justify-content:center;
                    }
                </style>
            </head>
            <body>
                <h1>ABC Financial Startup</h1>
                <div class="image-box">
                    <img src="financialstartup.jpg"/>
                </div>
                <p>We are a very young financial manager company and we are proud of our clients</p>
                <p>We have started with 1 client a bit more than 10 years ago and we now have
                    <xsl:value-of select="count(//Client)"/> clients!
                </p>
                <p>These are our clients:
                    <xsl:for-each select="//Client/Name">
                        <xsl:choose>
                            <xsl:when test="//Client[position() != last()]">
                                <xsl:value-of select="First"/><xsl:text> </xsl:text> <xsl:value-of select="Last"/>,
                            </xsl:when>
                            <xsl:otherwise>
                                <p>, and <xsl:value-of select="First"/> <xsl:value-of select="Last"/> </p>
                            </xsl:otherwise>
                        </xsl:choose>
                    </xsl:for-each>
                </p>
                <p>
                    <xsl:value-of select="count(//Client/Years[number(node()) >= 7])"/> of our clients have been with us for more than 7 years!
                </p>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>