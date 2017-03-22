<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
	<!-- Identity transform -->
	<xsl:template match="node()">
		<xsl:copy>
			<xsl:apply-templates select="@* | node()"/>
		</xsl:copy>
		<xsl:comment>
			<xsl:value-of select="
			string-length(normalize-space(preceding::* | ancestor::*))
			"/>
		</xsl:comment>
   </xsl:template>
	<xsl:template match="@*">
		<xsl:copy>
			<xsl:apply-templates select="@* | node()"/>
		</xsl:copy>
   </xsl:template>

</xsl:stylesheet>
