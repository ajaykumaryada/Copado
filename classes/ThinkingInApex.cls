public class ThinkingInApex {


    public static void afterInsertContact(List<Contact> contacts) {
        //Get all the account Ids for the contacts
        Set<ID> accountIds = new Set<ID>();
        for(Contact ct: contacts){
            if(ct.AccountId!=null) {
                accountIds.add(ct.AccountId);
            }
        }
        
        //only query those accounts for the contacts that do not yet have First_Contact_Name set
        Map<Id, Account> accounts = new Map<Id, Account>([Select Id, First_Contact_Email__c, First_Contact_Name__c from Account where ID in :accountIds And First_Contact_Name__c = null]);
        
        //Exit if there are no accounts to set
        if(accounts.size()==0) return;
        
        
        for(Contact ct: contacts)
            if(ct.AccountId!=null){
                Account act = accounts.get(ct.AccountId);
                act.First_Contact_Name__c = ((ct.FirstName!=null)?ct.FirstName + ' ':'') + ct.LastName;
                act.First_Contact_Email__c = ct.Email;
            }
        
        try{
            update accounts.values();
        } catch(Exception ex){
            system.debug('An exception occurred ' + ex.getMessage());
        }
        
        
    }

}