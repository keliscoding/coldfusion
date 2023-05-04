<html lang="pt-br">
<cfset nome = "Kelly"> <!-- string -->
<cfset idade = 40> <!-- numeric -->
<cfset salario = 1000.50> <!-- numeric -->
<cfset fumante = false> <!-- boolean -->
<cfset frase = "ordem e progresso">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Curso de ColdFusion</title>
</head>
<body>
    <cfoutput>
        <li>#nome#</li>
        <li>#UCase(frase)#</li>
        <li>#lCase(frase)#</li>
        <li>#reverse(frase)#</li>
        <li>#left(frase,5)#</li>
        <li>#right(frase,5)#</li>
        <li>#mid(frase,5, 5)#</li>
    </cfoutput>
</body>
</html>