<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/booklist">
<html>
	<head>
 	<link rel="stylesheet" type="text/css" href="book.css" />	</head>
<body>
	<table>
			<tr>
				<th>Title</th>
				<th>Author</th>
				<th>Editor(s)</th>
				<th>Picture</th>
				<th>Publication Date</th>
				<th>Genre</th>
			</tr>
			<xsl:for-each select="book">
			<tr>
				<td class="title"><xsl:value-of select="title" /></td>
				<td><xsl:for-each select="author">
				<xsl:value-of select="last" />,
				<xsl:value-of select="first" />
				</xsl:for-each></td>

				<td><xsl:for-each select="editor">
					<xsl:for-each select="last">
						<xsl:value-of select="." />,
					</xsl:for-each>
					<xsl:for-each select="first">
						<xsl:value-of select="." />
					</xsl:for-each>;
					<xsl:for-each select="last2">
						<xsl:value-of select="." />,
					</xsl:for-each>
					<xsl:for-each select="first2">
						<xsl:value-of select="." />
					</xsl:for-each>
				
				<xsl:for-each select="last3">
						;<xsl:value-of select="." />,
					</xsl:for-each>
					<xsl:for-each select="first3">
						<xsl:value-of select="." />
					</xsl:for-each></xsl:for-each></td>

				<xsl:for-each select="picture">
				<td><a href="http://www.amazon.com"><img src="{image/@source}.jpg" /></a>
				</td>
			</xsl:for-each>
				<td><xsl:value-of select="year" /></td>
				<td><xsl:value-of select="genre" /></td>
			</tr>

		</xsl:for-each>
	</table>
</body>
</html>
</xsl:template>
</xsl:stylesheet>	