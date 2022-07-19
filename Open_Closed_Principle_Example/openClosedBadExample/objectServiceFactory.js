export class objectServiceFactory {
    classType;
    construct(classType) {
        construct(classType) {
            this.classType = classType;
        }
        setMessage() {
            return this.classType.setMessage();
        }
    }
}