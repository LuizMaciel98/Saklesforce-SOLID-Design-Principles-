public interface DisplayWrapper_Interface {
    List<SObject> getRecords();
    List<Object> wrapRecordsForUI(List<SObject> sObjectRecords);
}