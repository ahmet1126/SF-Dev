// Automatically create opportunity when an Account record is created.

// When a new Account is created with Account Type as "Prospect" then Create new Task for yourself and send email alert to yourself

trigger Account1 on Account (after insert) {
    List<Opportunity> oppList = new List<Opportunity>();
    List<Task> tasks = new List<Task>();
    
        for (Account a : Trigger.new) {
            Opportunity o = new Opportunity();
            o.Name = a.Name + ' Opp';  // Burlington Textile Opp
            o.StageName = 'Qualification';
            o.CloseDate = Date.today() + 90;
            o.AccountId = a.Id;
            oppList.add(o);
     
            
            if (a.Type == 'Prospect') {
                Task t = new Task();
                t.Subject = 'New Account Test';
                t.Status = 'In Progress';
                t.WhatId = a.Id;
                t.OwnerId = UserInfo.getUserId();
                tasks.add(t); 
    
    
                
    
    
            }
    
        }
        insert oppList;
        insert tasks;
    
    }