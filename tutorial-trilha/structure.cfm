<html lang="pt-br">    
    <cfset agenda = StructNew()>
    <cfset agenda.nome = "Kelly Castelo">
    <cfset agenda.email = "kelly@email.com">
    <cfset agenda.fone = "99999-9999">

    <cfdump var="#agenda#">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Curso de ColdFusion</title>
</head>
<body>
    <cfoutput>#agenda.nome#</cfoutput>
</body>
</html>