<html lang="pt-br">
<cfset salada=ArrayNew(1)>
<cfset salada[1] = "Banana">
<cfset salada[2] = "Kiwi">
<cfset salada[3] = "Uva">

<!--cfdumb serve para testar o código, não é pro usuario final -->

<cfdump var="#salada#">

<!-- array não precisa ter o mesmo tipo de dados -->

<cfset selecao=["Pelé", "Maradona", "Messi", "Ronaldo", 10]>

<cfdump var="#selecao#">

<!-- array duas dimensoes -->

<cfset personagem=ArrayNew(2)>
<cfset personagem[1][1] = "Hinata">
<cfset personagem[1][2] = "Hajime">
<cfset personagem[1][3] = "Sem Talento">
<cfset personagem[2][1] = "Komaeda">
<cfset personagem[2][2] = "Nagito">

<cfdump var="#personagem#">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Curso de ColdFusion</title>
</head>
<body>
</body>
</html>