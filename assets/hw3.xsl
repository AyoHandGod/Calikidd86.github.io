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
                            <xsl:when test="Account_Total &lt;= 80000">
                                <td style="font-weight:bold; color:red; align=right;"><xsl:value-of select="Account_Total"/></td>
                            </xsl:when>
                            <xsl:otherwise>
                                <td><xsl:value-of select="Account_Total"/></td>
                            </xsl:otherwise>
                        </xsl:choose>
                    </tr>
                    </xsl:for-each>
                </table>
            </body>
        </html>

    </xsl:template>
</xsl:stylesheet>