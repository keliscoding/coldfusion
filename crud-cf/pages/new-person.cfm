<cfscript>
    import "coldfusion.crud-cf.PersonRepository";
    
    repo = new PersonRepository("oracle-db");
        
    requestMethod = cgi.REQUEST_METHOD;
    
    if(requestMethod == "POST") {
        name = form.inputname;
        birthdate = form.inputbirthdate;

        try{
            repo.createPerson(name, birthdate);
            location("../index.cfm");
        } catch (any exception) {
            writeOutput(exception);
        }

    } else {
        location("../index.cfm");
    }

</cfscript>