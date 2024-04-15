namespace soapplication.db;

using {
    cuid,
    managed
} from '@sap/cds/common';
using soapplication.db as mat from './Material';
using soapplication.db as cust from './Customer';


entity SalesOrder : cuid, managed {
    salesOrderId        : String(10);
    description         : String(100);
    customer            : Association to cust.Customer;
    salesOrganization   : String(4);
    distributionChannel : String(4);
    division            : String(4);
    amount              : Decimal(23, 2);
    currencyKey         : Association to one CurrencyKey;
    status              : Integer enum {
        InProcess = 1;
        Released  = 2
    };
    soItem              : Composition of many SalesOrderItem
                              on soItem.salesOrderId = $self;
}

entity CurrencyKey {
    key code     : String(3);
        currency : String(50);
}

entity SalesOrderItem : cuid, managed {
    salesOrderId        : Association to SalesOrder;
    itemId              : String(10);
    material            : Association to one mat.Material;
    materialDescription : String(100);
    quantity            : String(5);
    quantityUnit        : Association to mat.MaterialQuantity;
    amount              : Decimal(23, 2);
    currencyKey         : Association to CurrencyKey;
}
