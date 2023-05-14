<cfscript>
    import "coldfusion.crud-cf.PersonRepository";
    
    repo = new PersonRepository("oracle-db");
        
    requestMethod = cgi.REQUEST_METHOD;
    
    if(requestMethod == "POST") {
        id = URL.id;
        name = form.inputname;
        birthdate = form.inputbirthdate;

    repo.updatePerson(id, name, birthdate);
        try{
            location("../index.cfm");
        } catch (any exception) {
            writeOutput(exception);
        }
    } else {
        location("../index.cfm");
    }
</cfscript>