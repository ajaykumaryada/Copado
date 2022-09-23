public with sharing class AccountTriggerHandler {
    
    public void handleBeforeInsert(List<Account> accounts) {
        //Execute our before insert logic
            for(Account accRec: accounts) {
                if(accRec.ShippingCity==null)
                    accRec.shippingCity = accRec.BillingCity;
                if(accRec.AnnualRevenue<1000)
                    accRec.addError('Annual Revenue cannot be less than 1000');
            }
    }
    public void handleAfterInsert() {
        //Execute out after insert logic

    }
    public void handleBeforeUpdate() {
        //Execute our before insert logic
    }
    public void handleAfterUpdate(Map<Id,Account> newValuesMap, Map<Id,Account> oldValuesMap) {
        //Execute out after insert logic
        for(Account eachAccount: newValuesMap.values())
        {
            System.debug('@@@Old Values ' + oldValuesMap.get(eachAccount.Id));

            System.debug('@@@New Values ' + newValuesMap);
        }
    }
    public void handleBeforeDelete() {
        //Execute our before insert logic
    }
    public void handleAfterDelete() {
        //Execute out after insert logic
    }
    public void handleAfterUndelete() {
        //Execute out after insert logic
    }
}