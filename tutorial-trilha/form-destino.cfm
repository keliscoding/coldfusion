<cfif isDefined("form.botao")>
    Foi enviado de um formulario...<br>
</cfif>

<html lang="pt">
    <head>
        <title>Curso ColdFusion Basico</title>
        <meta charset="utf-8">
    
    </head>
    <body>
        <cfdump var="#form#">

        <hr>

        <cfoutput>
            #form.nome#<br>
            #form.email#<br>
            #form.fone#
        </cfoutput>
    </body>
</html>