public with sharing class Summary {
    public Summary() {

    }
}

APEX BASICS SUMMARY 

1. DATA TYPES
    a. Primitive Data Types
        // if you dont assign any value it will return null
        String
        String test = 'test'; //single quotes make anything string
        test.capitalize(); // avaible functions with . notation
        Integer
        Integer num = 4; // whole number up untill - 2 billion
        Long
        Long num = 9123912399123919239L; // bigger than - 2 billion, use L at the end of value
        Decimal
        Decimal dec =  4.44; // decimal up to - 2 billion
        Double
        Double dec = 1231837241236162.56; // more than - 2 billion
        Date
        Date dt = Date.newInstance(2022, 05, 29);// datetime and time logic is same
        Date current = Date.today();
        Date current = Date.format();
        Datetime
        Time
        Boolean
        Boolean a = true; // True, False or Null
        Id
        Id test = '32HSKnsdsaasd74uD'; // 15 or 18 char alphanumaric
        Blob
        Blob test = Blob.valueOf('Test'); // 1101 1001- attachment, web services, files
    b. Collections 
        List
        List<String> myList = new List<String>();
        myList.add('test1');
        myList.add('test2');
        myList.remove(index);
        // indexed ordered list starting from 0 
        //there can be multiple items
        Set
        Set<String> myList = new Set <String>();
        myList.add('test1');
        myList.add('test1'); // only one test1 will avaible
        myList.remove(index); 
        // there is no index 
        // values will store unique
        Map
        Map<String, String> myList = new Map <String, String>();
        myList.put('0001','Latif');
        myList.put('0002','Burak');
        //value can be same but the first one should be unique
        // key value pairs
        // keys should be unique
        // values can be same
        // Student Id keys
        // Student name values
    c. Constants 
        Final
        final Decimal PI = 3.14;
        final Decimal DiscrountRate = 3.5;
        PI = 3.24; // Will throw error, you cant change final variable
        Enum
        Enum String Season {'Winter', 'Summer'} // global picklist
        Season.Winter;
2. CONTROL FLOW STATEMENTS 
    a. If/Else 
    if (logic true or false) // returns true
    {
        code block 
    }
    else if (different logic) // returns true
    {
        code block 
    }
    else if (different logic) // returns true
    {
        code block 
    }
    else {
        eventually run 
    }
    b. Switch 
    switch on x {
        when 1 {
            
        }
        when 2,4,6 {
            
        }
        when 9,10{

        }
        when else {
            
        }

    }
    c. Loops 
        Do While 
        do {
            //the code always will run at least one time 
            //do  not forget to add a stop logic like increase or decrease
            
        } while ()
        While 
        while () {
            // there is an option to not run any code
            // do not forget to add a stop logic like increase or decrease
        }
        For 
            Traditional For 
        for (Integer i = 1; i<5; i++ ) {
            code
        }
            List Set For 
        List<Account> myList = List<Account>();
        myAccount.add();