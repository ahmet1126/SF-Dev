@istest
public class MyTestClass {
    @istest
    public static void factoryTest() {
        // create 3 account records
        List<Account> accs = TestDataFactory.createAccounts(100);

        System.assertEquals(100, accs.size());

        system.assertEquals('Test0', accs[0].Name);

        for (Integer i = 0; i < 100; i++) {
            system.assertEquals('Test' + i, accs[i].Name);
        }

    }
}