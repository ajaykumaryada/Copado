public with sharing class ContactListController {
    public List<ContactWrapper> contacts {get;set;}
    
    //an example constructor to retrieve contacts to populate our list
    public ContactListController(){
     contacts = new List<ContactWrapper>();
        for(Contact con : [SELECT Id, FirstName, LastName from Contact LIMIT 20]) {
            contacts.add(new ContactWrapper(con));
        }
    }    
    
    //our inner wrapper class stores the Contact instance and a Boolean indicating it has been selected
    public with sharing class ContactWrapper {
        public Boolean selected {get; set;}
        public Contact con {get; set;}
        
        public ContactWrapper(Contact cont) {
            selected = false;
            con = cont;
        }
    }
}