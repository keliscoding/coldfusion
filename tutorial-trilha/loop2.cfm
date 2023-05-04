<html lang="pt-br">    
    <cfset carrinho=ArrayNew(1)>
    <cfset carrinho[1] = StructNew()>
    <cfset carrinho[1].nome = "Camisa da Seleção Brasileira">
    <cfset carrinho[1].valor = 189>
    <cfset carrinho[1].quantidade = 2>

    <cfset carrinho[2] = StructNew()>
    <cfset carrinho[2].nome = "Chuteira Cristiano Ronaldo">
    <cfset carrinho[2].valor = 400>
    <cfset carrinho[2].quantidade = 1>

    <cfset carrinho[3] = StructNew()>
    <cfset carrinho[3].nome = "Short do Messi">
    <cfset carrinho[3].valor = 180>
    <cfset carrinho[3].quantidade = 1>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Curso de ColdFusion</title>
</head>
<body>
    <cfloop array="#carrinho#" index="i">
        <cfoutput>#i.nome#</cfoutput><br>
    </cfloop>
</body>
</html>