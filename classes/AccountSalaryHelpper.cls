public with sharing class AccountSalaryHelpper {
 
    public static void updateAccount(List<Account_Salary__c> newAccountSalaries, Map<Id, Account_Salary__c> oldMap){
		
        Set<Id> accountIds = new Set<Id>();
        for(Account_Salary__c newAccountSalary: newAccountSalaries){
            if(oldMap!=null){
                Account_Salary__c oldAccountSalary = oldMap.get(newAccountSalary.Id);
                if(oldAccountSalary.Salary__c != newAccountSalary.Salary__c){
                    accountIds.add(newAccountSalary.Account__c);
                } else {
                    accountIds.add(newAccountSalary.Account__c);
                }
            }
        }
        
        if(!accountIds.isEmpty()) {
            List<AggregateResult> aggResults = [Select Account__c accId, sum(Salary__c) sumSalary, max(Salary__c) maxSalary from Account_Salary__c where Account__c IN :accountIds GROUP BY Account__c];
        }
        
    }
}