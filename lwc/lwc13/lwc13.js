import { LightningElement, wire } from 'lwc';
import getAccounts from '@salesforce/apex/GetRecords.getAccounts';

export default class Lwc13 extends LightningElement {
    columns = [
        {label: "Name", fieldName: "Name"},
        {label: "Id", fieldName: "Id"}
    ];

    @wire(getAccounts) wiredAccounts;
}