<cfimport path="coldfusion.crud-cf.PersonRepository">
    
<cfscript>
    personRepo = new PersonRepository("oracle-db");
    
    condition = isDefined("URL.id");
    
    if(condition) {
        try {
            id = URL.id;
            person = personRepo.getPersonById(id=id);
        } catch (any exception) {
            location("views/list-person.cfm");
        }
    } else {
        person.name = "";
        person.id = 0;
        person.birthdate = "";
    }
</cfscript>

<cfinclude template="./header-html.cfm">
    <main>
        <cfform method="post" action="#(condition ? 'edit-person.cfm?id=' & URL.id : 'new-person.cfm')#">
         <div class="row mb-3">
            <label for="inputName" class="col-sm-1 col-form-label">Name</label>
            <div class="col-sm-2">
              <cfinput type="text" 
                       class="form-control" 
                       id="inputName" 
                       name="inputName"
                       value="#person.name#">
            </div>
          </div>
          <div class="row mb-3">
            <label for="inputBirthdate" class="col-sm-1 col-form-label">Birthdate</label>
            <div class="col-sm-2">
                <cfinput type="date" 
                    class="form-control" 
                    id="inputBirthdate" 
                    name="inputBirthdate"
                    value="#dateformat(person.birthdate, "yyyy-MM-dd")#">
            </div>
          </div>
          <button type="submit" class="btn btn-primary">Submit</button>
        </cfform>
    </main>
<cfinclude template="./footer-html.cfm">