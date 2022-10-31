import { LightningElement } from "lwc";

export default class App extends LightningElement {
  user = ["John", "Mike", "Smith"];
  num1 = 3;
  num2 = 5;

  get firstItem(){
    return this.user[0];
  }

  get sumOfNums(){
    return this.num1 + this.num2;
  }

}