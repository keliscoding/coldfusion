<html lang="pt-br">    
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Curso de ColdFusion</title>
</head>
<body>
    <!--- é bacana utilizar o urlEncodedFormat quando for passar alguma string como parametro--->

    <cfset nome = "Castelo">
    <cfset idade = 25>
    <a href="destino.cfm?valor=<cfoutput>#URLEncodedFormat(nome)#</cfoutput>&idade=<cfoutput>#idade#</cfoutput>">Clique para ir ao destino</a>
</body>
</html>