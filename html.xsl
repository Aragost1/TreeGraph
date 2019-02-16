<?xml version="1.0"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:output method="html" indent="no"/>
<!--
  <xsl:strip-space elements="n"/>
-->

<xsl:template match="/tree">
<html>
<head>
<META content="text/html; charset=windows-1251" http-equiv="Content-Type"/>
<link type="text/css" rel="stylesheet" href="view.css"/>
<SCRIPT SRC="view.js">
</SCRIPT>
<META content="Aragost.TreeGraph.xml2www.xsl" name="GENERATOR"/>
</head>
<body>
<xsl:apply-templates/>
</body>
</html>
</xsl:template>

</xsl:stylesheet>