<cfset salario=100>

<cfswitch expression="#salario#">
    <cfcase value="100">
        Precisa melhorar!
    </cfcase>
    <cfcase value="1000">
        Nada mal, mas precisa melhorar!
    </cfcase> 
    <cfcase value="10000">
        Troque comigo!
    </cfcase> 
    <cfdefaultcase>
        Ihhh.
    </cfdefaultcase>
</cfswitch>

<html lang="pt-br">    
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Curso de ColdFusion</title>
</head>
<body>
</body>
</html>