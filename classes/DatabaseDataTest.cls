@istest
public class DatabaseDataTest {
    @istest
    public static void firstDataTest() {
        List<Account> accs = [SELECT Id FROM Account];
        System.assertEquals(0, accs.size());
    }

    @istest (SeeAllData = true)
    public static void secondDataTest() {
        List<Account> accs = [SELECT Id FROM Account];
        System.assertEquals(35, accs.size());
    }
}