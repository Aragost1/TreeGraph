<?xml version="1.0"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:output method="html" indent="no"/>
<!--
  <xsl:strip-space elements="n"/>
-->

<xsl:template match="n[n]">
<DIV id="{generate-id(.)}" class="e"><DIV class="c" nowrap="true">
		<A class="b" onclick="ch('{generate-id(.)}')">[+]</A>
<xsl:choose>
	<xsl:when test="@h">
		<A class="t" target="article" href="{@h}" onclick="cl2(event)"><xsl:value-of select="@b"/></A>
	</xsl:when>
	<xsl:otherwise>
		<A class="t" onclick="cl2t(event,'{@s}')"><xsl:value-of select="@b"/></A>
	</xsl:otherwise>
</xsl:choose>
</DIV>
<DIV style="display:none">
<xsl:apply-templates/>
</DIV></DIV>
</xsl:template>

<xsl:template match="n">
<DIV class="e" nowrap="true">
<xsl:choose>
  	<xsl:when test='@x'>
		<A class="b" onclick="cl2t(event,'{@s}')" target="tree" href="{@x}">[X]</A>
<xsl:choose>
  	<xsl:when test='@h'>
		<A class="t" target="article" href="{@h}" onclick="cl2(event)"><xsl:value-of select="@b"/></A>
	</xsl:when>
	<xsl:otherwise>
		<A class="t" onclick="cl2t(event,'{@s}')"><xsl:value-of select="@b"/></A>
	</xsl:otherwise>
</xsl:choose> 
	</xsl:when>
	<xsl:when test="@h">
		<A class="b">. :</A>
		<xsl:if test="not(@t)">
			<A class="t" target="article" href="{@h}" onclick="cl2(event)"><xsl:value-of select="@b"/></A>
		</xsl:if>
		<xsl:if test="contains(@t, ' wn ')">
			<A class="t" target="_new" href="{@h}" onclick="cl2(event)"><xsl:value-of select="@b"/></A>
		</xsl:if>
	</xsl:when>
	<xsl:otherwise>
		<A class="b">. :</A>
		<A class="t" onclick="cl2t(event,'{@s}')"><xsl:value-of select="@b"/></A>
	</xsl:otherwise>
</xsl:choose> 
</DIV>
</xsl:template>

</xsl:stylesheet>