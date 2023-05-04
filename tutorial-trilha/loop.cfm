<html lang="pt-br">    
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Curso de ColdFusion</title>
</head>
<body>
    <ul>
        <cfloop from="1" to="10" index="i">
            <li>
                <cfoutput>#i#</cfoutput>
            </li>
        </cfloop> 
    </ul>

    <!--- loop em uma lista --->

    <cfset salada = "Laranja,Uva,Banana">

    <cfloop list="#salada#" index="i">
        <li><cfoutput>#i#</cfoutput></li>
    </cfloop>

        <!--- loop em um array --->

        <cfset saladaMista = ["Kiwi", "Maçã", "Beringela"]>

        <cfloop array="#saladaMista#" index="i">
            <li><cfoutput>#i#</cfoutput></li>
        </cfloop>

</body>
</html>