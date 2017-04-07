<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:output method="html"/>
  <xsl:template match="/">
    <html>
      <head>
	    <style>
          body {
            font-family: "Lato",sans-serif;
            font-size: 14px;
            font-weight: 300;
            color: #373d42;
            max-width: 1024px;
            margin: 20px auto;
			padding: 15px;
          }
		  img {
		    float: right;
			height: 40px;
			margin: 12px 0;
		  }
		  a {
		    color: #4a66b9;
			text-decoration: none;
		  }
		</style>
      </head>
      <body>
        <xsl:element name="img">
          <xsl:attribute name="src">
            <xsl:value-of select="//channel/image/url"/>
          </xsl:attribute>
        </xsl:element>
		<h1><xsl:value-of select="//channel/title"/></h1>
		<span>Last Updated: <xsl:value-of select="//channel/pubDate"/></span>
		<hr/>
        <xsl:apply-templates select="//item"/>
	  </body>
	</html>
  </xsl:template>

  <xsl:template match="item">
    <content-item>
      <h2><a href="{link}"><xsl:value-of select="title"/></a></h2>
      <p><xsl:value-of select="description"/></p>
    </content-item>
  </xsl:template>
</xsl:stylesheet>
