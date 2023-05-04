<html lang="pt-br">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Curso de ColdFusion</title>
</head>
<body>
    <cfset setLocale("Portuguese (Brazilian)")>
    <cfoutput>
        #LSDateFormat(now(), "dddd, dd-mmm-yy")#
    </cfoutput>

    <br>

    <!--- data completa --->
    <cfset dia_semana = dayOfWeekAsString(dayOfWeek(now()))>
    <cfset dia_mes = day(now()) >
    <cfset mes = monthAsString(month(now()))>
    <cfset ano = year(now())>
    
    <cfoutput>
        #dia_semana#, #dia_mes# de #mes# de #ano#
    </cfoutput>

    <br>
    <!--- diferenca entre datas --->
    <cfset data1 = "2023-05-21">
    <cfset data2 = "2023-05-25">

    <cfset diferenca = dateDiff("d",data1,data2)>

    <cfoutput>
        #diferenca# dias
    </cfoutput>

    <br>
    <!--- adicionar tempo a uma data --->
    <cfset data = "2023-05-21">
    <cfset expira = dateAdd("d",7,data)>

    <cfoutput>
        Expira no dia #LSDateFormat(expira, "dd")#
    </cfoutput>

    <br>
    <!--- formatar hora --->
    <cfset hora = "13:05:13">

    <cfoutput>
        #timeFormat(hora, "HH:mm:ss")#
    </cfoutput>

    <br>
    <!--- formatar numeros --->
    <cfset numero = 150>

    <cfoutput>
        #numberFormat(numero, "_____.__")#<br>
        #decimalFormat(numero)#<br>
        #dollarFormat(numero)#
    </cfoutput>

    <hr>

        <!--- formatar moedas --->
    <cfset valor = 1769.80>

    <cfoutput>
        #lsCurrencyFormat(valor, 'local')#
    </cfoutput>

</body>
</html>