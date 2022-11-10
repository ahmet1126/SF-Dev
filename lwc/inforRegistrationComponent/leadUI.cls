public class leadUI {
    public leadUI() {
    }
    @AuraEnabled(cacheable=true)
    public static string create(Lead singleLead,Ad__c singleAd){
        List<Campaign> singleCampaign = New List<Campaign>();
        CampaignMember singleCampaignMember = New CampaignMember();
        String searchCamp = '%' + singleAd.UTM_Source__c +'%';
        String Result;
        try {
            singleCampaign=[SELECT Id,Name,IsActive FROM Campaign
                            WHERE Name LIKE :searchCamp AND IsActive=True
                            LIMIT 1];
                if(singleCampaign.size()==0){
                    System.debug(searchCamp +' campaign is inactive');
                    insert singleAd;
                    singleLead.Ad__c=singleAd.Id;
                    insert singleLead;
                    
                } else {
                    System.debug(searchCamp +' campaign is active');
                    singleAd.Campaign__c=singleCampaign.get(0).Id;                
                    insert singleAd;
                    
                    singleLead.Ad__c=singleAd.Id;
                    insert singleLead;
        
                    singleCampaignMember.CampaignId=singleCampaign.get(0).Id; 
                    singleCampaignMember.LeadId = singleLead.Id;
                    singleCampaignMember.Status='Received';
        
                    insert singleCampaignMember;
                }
                Result='Succesfully Created';
        } catch (Exception e) {
            throw new AuraHandledException(e.getMessage());
        }
        return Result;
    }
}