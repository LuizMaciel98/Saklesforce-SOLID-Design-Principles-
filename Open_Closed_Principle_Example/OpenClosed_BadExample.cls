public with sharing class OpenClosed_BadExample {
    @AuraEnabled
    public static List<MapMaker> getLeadsForMap(String objectName) {
        if(objectName == 'Lead') {
            List<Lead> leadsInSystem = [SELECT Id, FirstName, LastName, LeadSource, City, Street, PostalCode, Country, FROM Lead 
                                        WHERE Street != NULL AND PostalCode != NULL AND City != NULL AND Country != NULL];
            List<MapMarker> mapMarkers = new List<MapMarker>();
            for (Lead lead : leadsInSystem) {
                MapMarker marker = new MapMarker();
                MapLocation location = new MapLocation();
                location.Country = lead.Country;
                location.City = lead.City;
                location.PostalCode = lead.PostalCode;
                location.Street = lead.Street;
                marker.location = location;
                marker.description = 'Hi';
                marker.title = 'Jambette';
                mapMarkers.add(marker);
            }

            System.debug(mapMarkers);
            return mapMarkers;
        }
    }
}