import { LightningElement } from 'lwc';

export default class Lwc7 extends LightningElement {
    contacts = [
        {
           Id: 1,
           Name: "Amy Taylor", 
           Title: "VP of Engineering"
        },
        {
            Id: 2,
            Name: "Micheal Jones", 
            Title: "VP of Sales"
         },
         {
            Id: 3,
            Name: "Jennifer Wu", 
            Title: "CEO"
         }
    ]
}