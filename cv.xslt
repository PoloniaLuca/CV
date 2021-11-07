<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/">
<html> 
<head>
				<title><xsl:value-of select="//cv/me/name"/></title>
        		<link rel="stylesheet" href="style.css"></link>
</head>
	<body>
	  <table>
	  <tr>
	  	<td><img src="europass.jpeg" class="europass"></img></td>
	  	<td> <img src="foto.jpeg" class="io"></img></td>
	  </tr>s
	  </table>
	  <h2>Curriculum Vitae Europass - Aggiornato a Ottobre 2021</h2>
	  <h3>Informazioni Personali</h3>
	  <!-- Tabella informazione personali -->
	  <table>
		<tr>
		  <td>Nome / Cognome</td>
		  <td>| <b><xsl:value-of select="cv/me/nome"/></b></td>
		</tr>
		<tr>
		  <td>Indirizzo</td>
		  <td>| <xsl:value-of select="cv/me/indirizzo"/></td>
		</tr>
		<tr>
		  <td>Cellulare</td>
		  <td>| <xsl:value-of select="cv/me/cellulare"/></td>
		</tr>
		<tr>
		  <td>Email</td>
		  <td>| <xsl:value-of select="cv/me/email"/></td>
		</tr>
		<tr>
		  <td>Linkedin</td>
		  <td>| <xsl:value-of select="cv/me/linkedin"/></td>
		</tr>
		<tr>
		  <td>Cittadinanza</td>
		  <td>| <xsl:value-of select="cv/me/cittadinanza"/></td>
		</tr>
		<tr>
		  <td>Data di Nascita</td>
		  <td>| <xsl:value-of select="cv/me/dataNascita"/></td>
		</tr>
		<tr>
		  <td>Sesso</td>
		  <td>| <xsl:value-of select="cv/me/sesso"/></td>
		</tr>
	  </table>
	  <h3>Istruzione e formazione</h3>
	  <!-- Tabella Educazione Scolastica -->
	  <table>
		<tr>
		  <td>Scuola</td>
		  <td>| <xsl:value-of select="cv/education/qualification/stabile"/></td>
		</tr>
		<tr>
		  <td>Tipo</td>
		  <td>| <xsl:value-of select="cv/education/qualification/tipoScuola"/></td>
		</tr>
		<tr>
		  <td>Da</td>
		  <td>| <xsl:value-of select="cv/education/qualification/da"/></td>
		</tr>
		<tr>
		  <td>A</td>
		  <td>| <xsl:value-of select="cv/education/qualification/a"/></td>
		</tr>
	  </table>
	  <!-- Lingue Parlate -->
	  <table class="languages">
		<tr>
		  <td>Madrelingua</td>
		  <td>| <b><xsl:value-of select="cv/education/languages/madrelingua"/></b></td>
		</tr>
		<tr>
		  <td>Altre Lingue</td>
		  <td>| <b><xsl:value-of select="cv/education/languages/altrLingue"/></b></td>
		</tr>
	  </table>
	  <!-- Capacità e competenze Informatiche -->
	  <h3>Capacità e competenze informatiche</h3>
	  <table border="1" class="info">
	  <tr>
		  <td><b>Area</b></td>
		  <td><b>Skill</b></td>
		</tr>
	  <xsl:for-each select="cv/education/computerSkill">
		<tr>
		  <td><xsl:value-of select="area"/></td>
		  <td><xsl:value-of select="skill"/></td>
		</tr>
	   </xsl:for-each>
	   </table>
	  <!-- Patente -->
		Patente<xsl:value-of select="cv/education/patente"/><pre>
		</pre>
	  <!-- Autorizzazione Trattamento Dati -->
		<div class="autorizzazione">
			<xsl:value-of select="cv/authorisation"/> <pre>
			</pre>
		</div>
	  <!-- Firma -->
		<div class="firma">
			Firma <i>"Luca Polonia"</i><pre>
			</pre>
		</div>
			<pre>
		(firma autografa sostituita a mezzo stampa ai sensi dell’art. 3 c. 2 D.Lgs. n. 39/93) </pre>
	</body>
</html>
</xsl:template>
</xsl:stylesheet>