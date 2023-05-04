<html lang="pt-br">
<cfset salada = "Laranja,Uva,Banana">
    
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Curso de ColdFusion</title>
</head>
<body>
    <cfoutput>
        <li>#listLen(salada)#</li>
        <li>#listFirst(salada)#</li>
        <li>#listLast(salada)#</li>
        <cfset salada = listAppend(salada, "Kiwi")>
        <li>#salada#</li>
    </cfoutput>
</body>
</html>