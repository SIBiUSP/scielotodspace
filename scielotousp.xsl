<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

	<xsl:output method="xml" indent="yes" version="1.0" encoding="UTF-8" />

	<xsl:template match="/">
		<dublin_core schema="usp">
			<dcvalue element="description" qualifier="volume" language="pt_BR">
				<xsl:value-of select="/article/front/article-meta/volume"/>
			</dcvalue>
			<dcvalue element="description" qualifier="issue" language="pt_BR">
				<xsl:value-of select="/article/front/article-meta/numero"/>
			</dcvalue>
			<dcvalue element="description" qualifier="initialpage" language="pt_BR">
				<xsl:value-of select="/article/front/article-meta/fpage"/>
			</dcvalue>
			<dcvalue element="description" qualifier="lastpage" language="pt_BR">
				<xsl:value-of select="/article/front/article-meta/lpage"/>
			</dcvalue>
			<xsl:for-each select="/article/front/article-meta/aff">
				<dcvalue element="cruesp" qualifier="none" language="pt_BR">
					<xsl:value-of select="institution"/><xsl:if test="addr-line='true'"> :c <xsl:value-of select="addr-line"/></xsl:if><xsl:if test="addr-line='true'"> :p <xsl:value-of select="country"/></xsl:if>
				</dcvalue>
			</xsl:for-each>
			<dcvalue element="origem" qualifier="id" language="pt_BR">
				<xsl:value-of select="/article/front/article-meta/article-id"/>
			</dcvalue>
			<dcvalue element="origem" qualifier="none" language="pt_BR">Scielo</dcvalue>
			<dcvalue element="internacionalizacao" qualifier="none" language="pt_BR">Nacional</dcvalue>
			<dcvalue element="publisher" qualifier="pais" language="pt_BR">Brasil</dcvalue>
		</dublin_core>
	</xsl:template>

</xsl:stylesheet>
