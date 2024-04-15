namespace soapplication.db;
using { cuid, managed } from '@sap/cds/common';

entity Customer : cuid, managed {
    customerId: String(10);
    customerName: String(50);
    address: String(100);
    mobileNo: String(10);
    email: String(100);
    active:Boolean;
}
