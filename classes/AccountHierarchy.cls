public with sharing class AccountHierarchy {
    
    public static void jsonFormatAccounts(List<Account> accs) {            
        string accsInJSON = JSON.serializePretty(accs,true);
        System.debug('hierarchy' + accsInJSON);
    }

}