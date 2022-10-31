@istest
public class Account1_Test {
    @istest
    public static void singleTest() {
        //Create data or set trigger conditions
        TestDataFactory.createAccounts(1);  // Expecting to see an account record and a related opp record
        
        //Get data from db
        Opportunity o = [SELECT Name, AccountId, Account.Id FROM Opportunity LIMIT 1];
        Task t = [SELECT WhatId FROM Task LIMIT 1];
        Account a = [SELECT Id FROM Account LIMIT 1];

        //Check data
        System.assertEquals(o.AccountId, o.Account.Id);
        System.assertEquals(t.WhatId, a.Id);

    }
    @istest
    public static void multipleTest() {
        TestDataFactory.createAccounts(10);

        List<Opportunity> opps = [SELECT Name, AccountId, Account.Id FROM Opportunity];
        List<Task> tasks = [SELECT WhatId FROM Task];
        List<Account> accs = [SELECT Id FROM Account];

        for (Opportunity o : opps) {
            System.assertEquals(o.AccountId, o.Account.Id);
        }

        for (Task t : tasks) {
            for (Account a : accs) {
                if (t.WhatId == a.Id) {
                    System.assertEquals(t.WhatId, a.Id);
                }
                System.assertNotEquals(t.WhatId, a.Id);
            }
        }

    }
}