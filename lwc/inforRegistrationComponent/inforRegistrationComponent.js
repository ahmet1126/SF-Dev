import { LightningElement,api } from 'lwc';
// import create from '@salesforce/apex/leadUI.create';
export default class InfoRegistrationComponent extends LightningElement {
  firstName;
  lastName;
  email;
  phone;
  street;
  city;
  state;
  zipCode;
  country;
  infoDate;
  course;
  @api UTM_Campaign;
  @api UTM_Content;
  @api UTM_Medium;
  @api UTM_Referer;
  @api UTM_Source;
  @api UTM_Term;
  @api utm_id;
@api Title;
@api Footer;
  connectedCallback(){
  
    this.Footer=this.Footer.replaceAll('%20',' ');
    this.Title=this.Title.replaceAll('%20',' ');
    this.UTM_Term=this.UTM_Term.replaceAll('%20',' ');
    this.UTM_Campaign=this.UTM_Campaign.replaceAll('%20',' ');
    this.UTM_Content=this.UTM_Content.replaceAll('%20',' ');
    this.UTM_Medium=this.UTM_Medium.replaceAll('%20',' ');
    this.UTM_Referer=this.UTM_Referer.replaceAll('%20',' ');
    this.UTM_Source=this.UTM_Source.replaceAll('%20',' ');
    this.UTM_Term=this.UTM_Term.replaceAll('%20',' ');
    this.utm_id=this.utm_id.replaceAll('%20',' ');
  
    
  }
  onchangeHandler(event){
    switch(event.target.name) {
      case fname:
        this.firstName=event.target.value;
        break;
      case lname:
        this.lastName=event.target.value;
        break;
      case email:
        this.email=event.target.value;
        break;
      case phone:
        this.phone=event.target.value;
        break;
      case street:
        this.street=event.target.value;     
        break;
      case city:
        this.city=event.target.value;
        break;
      case state:
        this.state=event.target.value;
        break;
      case zipcode:
        this.zipCode=event.target.value;
        break;
      case country:
        this.country=event.target.value;
        break;
      case infodate:
        this.infoDate=event.target.value;
        break;
      case course:
        this.course=event.target.value;
        break;          
      default:
        // DEFAULT
        break; 
    }
  }
  createLeadHandler(){
    leadRecord={
      FirstName:this.firstName, 
      LastName:this.lastName, 
      Street:this.street, 
      City:this.city, 
      State:this.state, 
      PostalCode:this.zipCode, 
      Country:this.country, 
      Email:this.email, 
      Phone:this.phone,       
      Info_Session_Date__c:this.infoDate
    }
    AdRecord={
      UTM_Campaign__c:this.UTM_Campaign, 
      UTM_Content__c:this.UTM_Content, 
      UTM_Medium__c:this.UTM_Medium, 
      UTM_Referer__c:this.UTM_Referer, 
      UTM_Source__c:this.UTM_Source, 
      UTM_Term__c:this.UTM_Term, 
      utm_id__c:this.utm_id, 
    
    }
    console.log('**** Lead Details : ');
    console.log(leadRecord);
    console.log('**** Ad Details : ');
    console.log(AdRecord);
/*
    create({singleLead:leadRecord,singleAd:AdRecord })
    .then((data)=>{
      console.log(data);
    })
    .catch((error)=>{
      console.log(error);
    });
*/
  }
}