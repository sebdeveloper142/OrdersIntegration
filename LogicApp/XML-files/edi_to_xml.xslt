<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt" xmlns:var="http://schemas.microsoft.com/BizTalk/2003/var" xmlns:ns0="http://tempuri.org/XMLSchema.xsd" xmlns:s0="http://schemas.microsoft.com/BizTalk/EDI/X12/2006" exclude-result-prefixes="msxsl var s0" version="1.0">
	<xsl:output omit-xml-declaration="yes" method="xml" version="1.0"/>
	<xsl:template match="/">
		<xsl:apply-templates select="/s0:X12_00401_850"/>
	</xsl:template>
	<xsl:template match="/s0:X12_00401_850">
		<ns0:Orders>
			<ns0:Order>
				<ns0:Header>
					<ns0:PONumber>
						<xsl:value-of select="s0:BEG/BEG03/text()"/>
					</ns0:PONumber>
					<ns0:PODate>
						<xsl:value-of select="s0:BEG/BEG05/text()"/>
					</ns0:PODate>
				</ns0:Header>
				<xsl:for-each select="s0:PO1Loop1">
					<ns0:LineItems>
						<xsl:if test="s0:PO1/PO101">
							<ns0:ItemId>
								<xsl:value-of select="s0:PO1/PO101/text()"/>
							</ns0:ItemId>
						</xsl:if>
						<xsl:if test="s0:PO1/PO102">
							<ns0:Quantity>
								<xsl:value-of select="s0:PO1/PO102/text()"/>
							</ns0:Quantity>
						</xsl:if>
						<xsl:if test="s0:PO1/PO103">
							<ns0:UnitPrice>
								<xsl:value-of select="s0:PO1/PO103/text()"/>
							</ns0:UnitPrice>
						</xsl:if>
						<xsl:if test="s0:PO1/PO104">
							<ns0:ItemDescription>
								<xsl:value-of select="s0:PO1/PO104/text()"/>
							</ns0:ItemDescription>
						</xsl:if>
					</ns0:LineItems>
				</xsl:for-each>
			</ns0:Order>
		</ns0:Orders>
	</xsl:template>
</xsl:stylesheet>