<cfimport path="coldfusion.crud-cf.PersonRepository">
    
<cfscript>
    personRepo = new PersonRepository("oracle-db");
    people = personRepo.getAllPeople();
</cfscript>

<cfinclude template="./header-html.cfm">
    <main>
        <div class="table-container ">
            <h1>Lista de Pessoas Cadastradas</h1>
            <table class="table table-hover">
              <thead class="table-dark">
                <tr>
                  <th scope="col" class="w-25">#</th>
                  <th scope="col" class="w-25">Name</th>
                  <th scope="col" class="w-25">Birthdate</th>
                  <th scope="col" class="w-25">Options</th>
                </tr>
              </thead>
              <tbody>
                <cfoutput query="people">
                    <tr>
                      <th scope="row">#people.id#</th>
                      <td>#people.name#</td>
                      <td>#dateformat(people.birthdate, "dd-MMM-yyyy")#</td>
                      <td>
                          <a href="/coldfusion/crud-cf/pages/form.cfm?id=#people.id#" class="btn btn-dark">Edit</a>
                          <button type="button" class="btn btn-danger" data-bs-toggle="modal" data-bs-target="##confirmModal">Delete</button>
                      </td>
                    </tr>  
                </cfoutput>
              </tbody>
            </table>
        </div>
        
        <div class="modal fade" id="confirmModal" tabindex="-1" role="dialog" aria-labelledby="confirm-delete-modal" aria-hidden="true">
          <div class="modal-dialog" role="document">
            <div class="modal-content">
              <div class="modal-header">
                <h5 class="modal-title" id="confirm-delete-modal">Delete confirmation</h5>
                <button type="button" class="close" data-bs-dismiss="modal" aria-label="Close">
                  <span aria-hidden="true">&times;</span>
                </button>
              </div>
              <div class="modal-body">
                Are you sure you want to delete?
              </div>
              <div class="modal-footer">
                <button type="button" class="btn btn-light" data-bs-dismiss="modal">Close</button>
                <a href="/coldfusion/crud-cf/pages/delete-person.cfm?id=<cfoutput>#people.id#</cfoutput>" class="btn btn-danger">Confirm</a>
              </div>
            </div>
          </div>
        </div>        
    </main>
    <script>
        $(document).ready(function() {
            $('#confirmModal').on('shown.bs.modal', function () {
                console.log("asasas");
            })
        });
    </script>
<cfinclude template="./footer-html.cfm">