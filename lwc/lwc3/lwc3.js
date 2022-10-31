import { LightningElement } from 'lwc';

export default class Lwc3 extends LightningElement {
    greeting = "Mike";

    changeHandler(event){
        this.greeting = event.target.value;
    }

    buttonHandler(){
        alert("Button Clicked!");
    }
}