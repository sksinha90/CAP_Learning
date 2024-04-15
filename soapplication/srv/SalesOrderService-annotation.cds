using SalesOrderService as ss from './SalesOrderService';

annotate ss.SalesOrder with @(UI:{
    SelectionFields  : [
        salesOrderId,
        distributionChannel,
        salesOrganization,
        division,
        customer_ID
    ],

    LineItem  : [
        {
            $Type: 'UI.DataField',
            Value: salesOrderId
        },
        {
            $Type: 'UI.DataField',
            Value: description
        },
        {
            $Type: 'UI.DataField',
            Value: salesOrganization
        },
        {
            $Type: 'UI.DataField',
            Value: distributionChannel
        },
        {
            $Type: 'UI.DataField',
            Value: division
        },
        {
            $Type: 'UI.DataField',
            Value: customer_ID,
            Label: '{i18n>customer_ID}'
        },
        {
            $Type: 'UI.DataField',
            Value: amount,
            Label: '{i18n>amount}'
        },
        {
            $Type: 'UI.DataField',
            Value: currencyKey_code,
            Label: 'Currency'
        },
        {
            $Type: 'UI.DataField',
            Value: status
        },
    ],

    HeaderInfo  : {
        $Type : 'UI.HeaderInfoType',
        TypeName : 'Sales Order',
        TypeNamePlural : 'Sales Orders',

        Title:{
            $Type: 'UI.DataField',
            Value:description
        },

        Description:{
            $Type: 'UI.DataField',
            Value: salesOrderId
        }
    },

    Facets  : [
        {
            $Type: 'UI.ReferenceFacet',
            ID: 'soheaderFacet',
            Target: '@UI.FieldGroup#soheader',
            Label: '{i18n>header}'
        },
        {
            $Type: 'UI.ReferenceFacet',
            ID: 'adminInfoFacet',
            Target: '@UI.FieldGroup#adminInfo',
            Label: '{i18n>admin}'
        }
    ],

    FieldGroup #soheader : {
        $Type : 'UI.FieldGroupType',
        Data: [
            {
            $Type: 'UI.DataField',
            Value: salesOrderId
        },
        {
            $Type: 'UI.DataField',
            Value: description
        },
        {
            $Type: 'UI.DataField',
            Value: salesOrganization
        },
        {
            $Type: 'UI.DataField',
            Value: distributionChannel
        },
        {
            $Type: 'UI.DataField',
            Value: division
        },
        {
            $Type: 'UI.DataField',
            Value: customer_ID,
            Label: '{i18n>customer_ID}'
        },
        {
            $Type: 'UI.DataField',
            Value: amount,
            Label: '{i18n>amount}'
        },
        {
            $Type: 'UI.DataField',
            Value: currencyKey_code,
            Label: 'Currency'
        },
        {
            $Type: 'UI.DataField',
            Value: status
        },
        ]
    },

    FieldGroup #adminInfo  : {
        $Type: 'UI.FieldGroupType',
        Data : [
            {
                $Type: 'UI.DataField',
                Value: createdBy
            },
            {
                $Type: 'UI.DataField',
                Value: createdAt
            },
            {
                $Type: 'UI.DataField',
                Value: modifiedBy
            },
            {
                $Type: 'UI.DataField',
                Value: modifiedAt
            }
        ]
    }
});

annotate ss.SalesOrder with {
    salesOrderId
    @Common: {Label : '{i18n>salesOrderId}' }
    @Core : { Immutable:true };

    description
    @Common: {Label : '{i18n>description}' };

    customer
    @Common: {Label : '{i18n>customer_ID}' };

    distributionChannel
    @Common: {Label : '{i18n>distributionChannel}' };

    salesOrganization
    @Common: {Label : '{i18n>salesOrganization}' };

    division
    @Common: {Label : '{i18n>division}' };

    amount
    @Common: {Label : '{i18n>amount}' };

    currencyKey
    @Common: {Label : '{i18n>currencyKey_code}' };

    status
    @Common: {Label : '{i18n>status}' };


};

