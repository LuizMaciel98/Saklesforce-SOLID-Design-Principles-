public with sharing class LWCMapController {
    @AuraEnabled
    public static List<Object> getdataForUI(String objectApiName) {
        List<SObject> objList = UIWrapperService.getRecords(objectApiName, 'MapMarker');
        return UIWrapperService.wrapRecordsForUI(objList, 'MapMarker');
    }
}