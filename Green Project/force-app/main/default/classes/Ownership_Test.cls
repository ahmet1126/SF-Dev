@isTest
public class Ownership_Test { 
    @isTest
    public static void OwnershipMethod_Test(){
        // create account data
        Account acc = new Account (Name = 'Test Account', Industry = 'Banking');
        
        Account accNegative = new Account (Name = 'Not Match', Industry = 'Education');
        // execute database save
        insert acc;
        insert accNegative;

        // check data from the database 
        Account acc1 = [Select Ownership from Account where Id = :acc.Id];

        Account acc2 = [Select Ownership from Account where Id = :accNegative.Id];
       
        System.assertEquals('Private', acc1.Ownership, 'Ownership is not matching!');

        System.assertEquals(null, acc2.Ownership, 'Ownership is not matching!');
    }
    @isTest
    public static void OwnershipMethod_Test1(){
        // create account data
        Account accPrivate = new Account (Name = 'Test Account', Industry = 'Banking', Ownership = 'Private');
    
        // execute database save
        insert accPrivate;

        // check data from the database 
        Account acc3 = [Select Ownership from Account where Id = :accPrivate.Id];
     
        System.assertEquals('Private', accPrivate.Ownership, 'Ownership is not matching!');

    }
    @isTest
    public static void OwnershipMethod_Test2(){
        // create account data
        List<Account> listAcc = new List<Account>();
        Account newAcc1 = new Account (Name = 'Test New', Industry = 'Banking');
        Account newAcc2 = new Account (Name = 'Test New', Industry = 'Banking');
        listAcc.add(newAcc1);
        listAcc.add(newAcc2);

        // execute database save
        insert listAcc;

        // check data from the database 

        Account getAcc1 = [Select Ownership from Account where Id = :listAcc.get(0).Id];
        Account getAcc2 = [Select Ownership from Account where Id = :listAcc.get(1).Id];
       
        System.assertEquals('Private', getAcc1.Ownership, 'Ownership is not matching!');
        System.assertEquals('Private', getAcc2.Ownership, 'Ownership is not matching!');

    }
}

