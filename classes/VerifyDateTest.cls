@isTest
public class VerifyDateTest {
    @isTest static void testCheckDates() {
        VerifyDate.CheckDates(System.today(), System.today().addDays(10));
        VerifyDate.CheckDates(System.today(), System.today().addDays(78));        
    }
}