<cfscript>
    import "coldfusion.crud-cf.PersonRepository";
    
    repo = new PersonRepository("oracle-db");
        
    requestMethod = cgi.REQUEST_METHOD;
    
    id = URL.id;
    
    try{
        repo.deletePerson(id);
        location("../index.cfm");
    } catch (any exception) {
        writeOutput(exception);
    }

</cfscript>