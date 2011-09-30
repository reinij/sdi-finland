<?xml version="1.0" encoding="ISO-8859-1"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:fo="http://www.w3.org/1999/XSL/Format" xmlns:csw="http://www.opengis.net/cat/csw/2.0.2" xmlns:gmd="http://www.isotc211.org/2005/gmd" xmlns:gco="http://www.isotc211.org/2005/gco">
<xsl:template match="/">
  <html>
  <head>
	<title>Metadata</title>
	<meta http-equiv="Content-Type" content="text/html;charset=ISO-8859-1" />
  </head>
  <body>
  <h2>Metadata suoraan XML:stä ja muunnos lennossa HTML:ksi</h2>
  <table border="1">
    <tr bgcolor="#9acd32">
      <th>Otsikko</th>
      <th>Sisältö</th>
    </tr>
    <tr>
      <td>Nimi</td>
      <td><xsl:value-of select="/csw:GetRecordByIdResponse/gmd:MD_Metadata/gmd:identificationInfo/gmd:MD_DataIdentification/gmd:citation/gmd:CI_Citation/gmd:title/gco:CharacterString"/></td>
    </tr>
    <tr>
      <td>Tiivistelmä</td>
      <td><xsl:value-of select="/csw:GetRecordByIdResponse/gmd:MD_Metadata/gmd:identificationInfo/gmd:MD_DataIdentification/gmd:abstract/gco:CharacterString"/></td>
    </tr>
     <tr>
      <td>Yhteystiedot</td>
      <td><xsl:value-of select="/csw:GetRecordByIdResponse/gmd:MD_Metadata/gmd:identificationInfo/gmd:MD_DataIdentification/gmd:pointOfContact/gmd:CI_ResponsibleParty/gmd:contactInfo/gmd:CI_Contact/gmd:address/gmd:CI_Address/gmd:electronicMailAddress/gco:CharacterString"/></td>
    </tr>
  </table>
  </body>
  </html>
</xsl:template>

</xsl:stylesheet>
