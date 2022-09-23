@isTest
public class Collections {
    static testMethod void Maps() {
        Map<String, String> fieldValues = new Map<String, String> {'Name' => '2u, Inc.', 'Website' => '2u.com', 'phone' => '301-892-4350'};
        System.assertEquals(3, fieldValues.size());
    }
}