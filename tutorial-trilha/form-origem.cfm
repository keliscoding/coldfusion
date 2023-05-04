<html lang="pt">
    <head>
        <title>Curso ColdFusion Basico</title>
        <meta charset="utf-8">
        <link href="_css/estilo.css" rel="stylesheet">
    </head>
    <body>
        <form action="form-destino.cfm" method="post">
        
            <label for="nome">Nome</label>
            <input type="text" id="nome" name="nome" required>
            
            <label for="email">Email</label>
            <input type="text" id="email" name="email" required>   
            
            <label for="fone">Fone</label>
            <input type="tel" id="fone" name="fone" required>
            
            <input type="submit" name="botao" value="Enviar">
        </form>        
    </body>
</html>