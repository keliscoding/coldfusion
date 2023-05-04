<html lang="pt-br">    
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Curso de ColdFusion</title>

    <cfdump  var="#url#">
</head>
<body>
    <cfoutput>
        <ul>
            <li>#url.valor#</li>
            <li>#url.idade#</li>
        </ul>
    </cfoutput>
    <a href="links.cfm">voltar</a>
</body>
</html>