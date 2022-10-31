import { LightningElement, api } from 'lwc';

export default class Lwc9 extends LightningElement {
    @api recordId;
    @api objectApiName;
    fields = ["AccountId", "Name", "Title", "Phone", "Email", "FirstName", "LastName"];
}