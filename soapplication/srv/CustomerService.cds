using soapplication.db as cust from '../db/Customer';
 
service CustomerService {
    @odata.draft.enabled
    entity Customer as projection on cust.Customer;
}