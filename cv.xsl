<?xml version="1.0" encoding="UTF-8" ?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output 
        method="html"
        encoding="UTF-8"
        doctype-public="-//W3C//DTD HTML 4.01//EN"
        doctype-system="CV.dtd"
        indent="yes" >
    </xsl:output>
    <xsl:template match="/">
        <html>
        <head>
            <title>CV Lollivier F.</title>
		    <link type="text/css" rel="stylesheet" media="screen" href="style3.css"/>   
            <link type="text/css" rel="stylesheet" media="print" href="print.css"/>
        </head>
        <body>
            <div class="cv">
                <div class="presentation">
                    <div class="name">
                        <xsl:value-of select="cv/presentation/nom"/>
                    </div>
                    <div class="adress">
                        <xsl:value-of select="cv/presentation/adresse"/>
                    </div>
                    <div class="ville">
                        <xsl:value-of select="cv/presentation/ville"/>
                    </div>
                    <div class="tel">
                        <xsl:value-of select="cv/presentation/telephone"/>
                    </div>
                    <div class="email">
                        <a href="mailto:{//mail}">
                          <xsl:value-of select="cv/presentation/mail"/>
                        </a>
                    </div>
                    <div class="age">
                        <xsl:value-of select="cv/presentation/age"/>
                    </div>
                </div>
                <div class="titre">
                    <xsl:value-of select="cv/titre"/>
                </div>
                
                <div class="experience">
                    <xsl:for-each select="cv/experience/boucle">
                        <div class="annee">
                            <xsl:value-of select="annee"/>                        
                        </div>
                        
                        <div class="fonction">
                            <xsl:value-of select="fonction"/>                       
                        </div>
                        
                        <div class="lieu">
                            <xsl:value-of select="lieu"/>                        
                        </div>
                    </xsl:for-each>
                </div>
                
                <div class="formation">
                    <xsl:for-each select="cv/formation/boucle">
                        <div class="annee">
                            <xsl:value-of select="annee"/>
                        </div>
                        <div class="intitule">
                            <xsl:value-of select="intitule"/>
                        </div>
                        <div class="lieu">
                            <xsl:value-of select="lieu"/>
                        </div>
                    </xsl:for-each>
                </div>
                
                <div class="langages">
                    <div class="titrelang">
                        <xsl:value-of select="cv/langages/titrelang"/>
                    </div>
                    <div class="lang">
                        <xsl:value-of select="cv/langages/lang"/>
                    </div>
                </div>

                <div class="competence">
                    <div class="titrecomp">
                        <xsl:value-of select="cv/competence/titrecomp"/>
                    </div>
                        <xsl:for-each select="cv/competence/boucle">
                            <div class="comp">
                                <xsl:value-of select="comp"/>
                            </div>
                        </xsl:for-each>
                </div>

                <div class="hobbies">
                    <xsl:value-of select="cv/hobbies"/>
                </div>
            </div>
        </body>
    </html> 
    </xsl:template>
</xsl:stylesheet>