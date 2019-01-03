<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/">
<html>	
	<body>
		<table border="1">
				<tr>
				<th>#</th>
					<th>Название</th>
					<th>Автор</th>
					<th>Цена</th>
					<th>Количество</th>
				</tr>
					<xsl:for-each select="books/book">
					<xsl:sort select="@id"/>
						<tr>
							<td>
								<xsl:value-of select="@id"/>
							</td>
							<td>
								<xsl:value-of select="title"/>
							</td>
							<td>	
								<xsl:value-of select="author"/>
							</td>
							<td>
								<xsl:value-of select="price"/>
							</td>
							<td>
								<xsl:value-of select="count"/>
							</td>
						</tr>
					</xsl:for-each>
				</table>
			</body>
		</html>
	</xsl:template>
</xsl:stylesheet>