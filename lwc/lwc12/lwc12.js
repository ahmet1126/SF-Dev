import { LightningElement } from 'lwc';
import ACCOUNT_OBJECT from '@salesforce/schema/Account';
import NAME_FIELD from '@salesforce/schema/Account.Name';
import WEBSITE_FIELD from '@salesforce/schema/Account.Website';

export default class Lwc12 extends LightningElement {
    accountObject = ACCOUNT_OBJECT;
    fields = [NAME_FIELD, WEBSITE_FIELD];
}