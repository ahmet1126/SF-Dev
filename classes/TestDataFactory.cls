@istest
public class TestDataFactory {

    public static List<Account> createAccounts(Integer num){
        List<Account> accs = new List<Account>();

        for (Integer i = 0; i < num; i++) {
            Account a = new Account();
            a.Name = 'Test' + i;  //Test0, Test1, Test2
            a.Type = 'Prospect';
            accs.add(a);
        }
        insert accs;
        return accs;
    }

    public static List<Contact> createContacts(Integer num){
        List<Contact> cons = new List<Contact>();

        for (Integer i = 0; i < num; i++) {
            Contact a = new Contact();
            a.LastName = 'Test' + i;  //Test0, Test1, Test3
            cons.add(a);
        }
        insert cons;
        return cons;
    }
}