<?xml version="1.0"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:template match="/">
        <html>
            <head>
                <title>Homework 3</title>
            </head>

            <body>
                <h1>List of Clients</h1>
                <table border="1" bordercolor="#9acd32">
                    <tr>
                        <th>Name</th>
                        <th>Phone</th>
                        <th>Email</th>
                        <th>Account Total</th>
                    </tr>
                    <xsl:for-each select="Accounts/Client">
                    <tr>
                        <td>
                            <xsl:value-of select="Name"/>
                        </td>
                        <td>
                            <xsl:value-of select="Phone"/>
                        </td>
                        <td>
                            <xsl:value-of select="E-mail"/>
                        </td>
                        <xsl:choose>
                            <xsl:when test="Account_total &lt; 80000">
                                <td style="font-weight:bold; color:red; "><xsl:value-of select="Account_total"/></td>
                            </xsl:when>
                            <xsl:otherwise>
                                <td><xsl:value-of select="Account_total"/></td>
                            </xsl:otherwise>
                        </xsl:choose>

                        <!--
                        <xsl:choose>
                            <xsl:when test="Account_total &lt; 80000"/>
                                <xsl:value-of select="Account_total"/>
                            <xsl:otherwise/>
                                <xsl:value-of select="Account_total"/>
                        </xsl:choose>-->
                    </tr>
                </table>
            </body>
        </html>

    </xsl:template>
</xsl:stylesheet>