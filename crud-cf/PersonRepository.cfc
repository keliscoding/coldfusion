component displayname="PersonRepository" {
    
    property name="datasource" type="string";
     
    public void function init(required string datasource) {
        this.datasource = datasource;
    }
    
    public query function getAllPeople() {
        var qPeople = queryExecute(
            "SELECT * FROM PERSON.person",
            {},
            {datasource: this.datasource}
        );
        
        return qPeople;
    }
    
    public query function getPersonById(required numeric id) {
        var qPerson = queryExecute(
            "SELECT * FROM PERSON.person WHERE id = :ID",
            {ID: id},
            {datasource: this.datasource}
        );
        
        return qPerson;
    }
    
    public void function createPerson(required string name, required date birthdate) {
        queryExecute(
            "INSERT INTO PERSON.person (id, name, birthdate) VALUES (
                PERSON.person_seq.nextval,
                :NAME,
                TO_DATE(:BIRTHDATE, 'YYYY-MM-DD')
            )",
            {NAME: name, BIRTHDATE: birthdate},
            {datasource: this.datasource}
        );
    }
    
    public void function updatePerson(required numeric id, required string name, required date birthdate) {
        queryExecute(
            "UPDATE PERSON.person SET
                name = :NAME,
                birthdate = TO_DATE(:BIRTHDATE, 'YYYY-MM-DD')
                WHERE id = :ID",
            {ID: id, NAME: name, BIRTHDATE: birthdate},
            {datasource: this.datasource}
        );
    }
    
    public void function deletePerson(required numeric id) {
        queryExecute(
            "DELETE FROM PERSON.person WHERE id = :ID",
            {ID: id},
            {datasource: this.datasource}
        );
    }
    
}