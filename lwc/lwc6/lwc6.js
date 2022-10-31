import { LightningElement } from 'lwc';

export default class Lwc6 extends LightningElement {
    areDetailsVisible = false;

    handleChange(event){
        this.areDetailsVisible = event.target.checked;
    }
}