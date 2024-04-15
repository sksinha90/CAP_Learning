using soapplication.db as so from '../db/SalesOrder';
using soapplication.db as mat from '../db/Material';

service SalesOrderService {
    @odata.draft.enabled
    entity SalesOrder @(restrict:[
        {
            grant: ['Viewer'],
            to: ['Viewer']
        },
        {
            grant: ['*'],
            to: ['Admin']
        }
    ]) as projection on so.SalesOrder;
    entity SalesOrderItem as projection on so.SalesOrderItem
    actions{
        action releaseSalesOrder (salesOrderId: String(10));
    };

    entity CurrencyKey as projection on so.CurrencyKey;
    entity Material as projection on mat.Material;

}