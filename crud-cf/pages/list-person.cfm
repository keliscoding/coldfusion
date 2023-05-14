<cfimport path="coldfusion.crud-cf.PersonRepository">
    
<cfscript>
    personRepo = new PersonRepository("oracle-db");
    
    try{
        people = personRepo.getAllPeople();
    } catch (any exception) {
        writeOutput(exception);
    }
    
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
                      <td data-id="#people.id#">
                          <a href="/coldfusion/crud-cf/pages/form.cfm?id=#people.id#" class="btn btn-dark">Edit</a>
                          <button type="button" class="btn btn-danger" data-bs-toggle="modal" data-bs-target="##confirmModal" person-id="#people.id#">Delete</button>
                      </td>
                    </tr>  
                </cfoutput>
              </tbody>
            </table>
        </div>
        
        <div class="modal fade" id="confirmModal" tabindex="-1" role="dialog" aria-labelledby="confirm-delete-modal" aria-hidden="true">
          <div class="modal-dialog" role="document">
            <div class="modal-content">
              <input type="hidden" id="modalIdInput"/>
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
              </div>
            </div>
          </div>
        </div>        
    </main>
    
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ENjdO4Dr2bkBIFxQpeoTz1HIcje39Wm4jDKdf19U8gI4ddQ3GYNS7NTKfAdVQSZe" crossorigin="anonymous"></script>
    <script src="https://code.jquery.com/jquery-3.7.0.js" integrity="sha256-JlqSTELeR4TLqP0OG9dxM7yDPqX1ox/HfgiSLBj8+kM=" crossorigin="anonymous"></script>
    <script>
        $(document).ready(function() {
          $('#confirmModal').on('show.bs.modal', function(event) {
            var button = $(event.relatedTarget);
            var personId= button["0"].attributes["person-id"].nodeValue;
            var link = "/coldfusion/crud-cf/pages/delete-person.cfm?id=" + personId;
            var anchor = $('<a></a>', {
              id: 'deleteBtn',
              class: 'btn btn-danger',
              href: link,
              text: 'Confirm'
            });
              
            if($('#deleteBtn').length > 0) {
                 $('#deleteBtn').remove();
            }
                  
            $(".modal-footer").append(anchor);
          });
            
        });
    </script>
<cfinclude template="./footer-html.cfm">