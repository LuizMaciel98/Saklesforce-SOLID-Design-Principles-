import {LightningElement, api} from 'lwc';
import {objectService} from './objectService';

export default class OpenClosedBadExample extends LightningElement {
    @api objectApiName;
    message;
    connectedCallBack() {
        this.getObjectMessage();
    }

    getObjectMessage() {
        const objectService = new objectService();
        this.message = objectService.setMessage(this.objectApiName);
    }
}