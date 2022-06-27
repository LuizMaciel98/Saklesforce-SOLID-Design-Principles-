public with sharing class OppCalculator_Controller {
    @AuraEnabled
    public static string calculateOpps(String userType){
        OppCalculator_Service.calculateOpps(userType);
    }
}