<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

   <xsl:template match="/Description">
      <html>
         <head>
			<link rel="stylesheet" type="text/css" href="projektcss.css"/>
            <title>Trainnig</title>

             <style type="text/css">
               .exercise_1 {background-color: rgba(213, 204, 204, 0.906) ;}
               .exercise_2 {background-color: rgba(206, 206, 212, 0.906);}
               .exercise_3 {background-color: rgba(191, 206, 195, 0.906);}

            </style>
         </head>
         <body>
        <div>
           
            
            
            <xsl:for-each select="exercise">
               <div class="{@type}">
               <div>
                  <h3><xsl:value-of select="muscle"/></h3>
                  </div>
                  <div>
                    <h4><xsl:value-of select="name"/></h4>
                    <p><strong>Serie: </strong> <xsl:value-of select="series[@range='serii']"/></p>
                    <p><strong>Powtórzeń: </strong> <xsl:value-of select="repeat[@scope='again']"/></p>
                    <p><strong>Trener: </strong> <xsl:value-of select="coach"/></p>
                    <p><strong>Trudność: </strong> <xsl:value-of select="hardship"/></p>
                    <a href="{link}"><xsl:value-of select="link"/></a> 
                  
                <div class="image">
                  <img src="{picture}" alt="Flag of {name}" width="200px" high="200px"/>
                  </div>
                  </div>
                  <div class="stop">
                 <xsl:value-of select = "stopka"/>
                  </div>
               
               </div>
            </xsl:for-each>
            </div>
         </body>
      </html>
   </xsl:template>
</xsl:stylesheet>