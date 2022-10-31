import { LightningElement } from 'lwc';

export default class Lwc2 extends LightningElement {
    name = "Kenny";

    changeHandler(event){
       this.name = event.target.value;
    }


}