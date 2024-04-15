using CustomerService as cs from './CustomerService';

annotate cs.Customer with @(UI: {

    //Selection Screen
    SelectionFields        : [
        customerId,
        customerName,
        mobileNo,
        email,
        active
    ],

    LineItem               : [
        {
            $Type: 'UI.DataField',
            Value: customerId
        },
        {
            $Type: 'UI.DataField',
            Value: customerName
        },
        {
            $Type: 'UI.DataField',
            Value: address
        },
        {
            $Type: 'UI.DataField',
            Value: mobileNo
        },
        {
            $Type: 'UI.DataField',
            Value: email
        },
        {
            $Type: 'UI.DataField',
            Value: active
        }
    ],

    //Title of the Object Page
    HeaderInfo             : {
        $Type         : 'UI.HeaderInfoType',
        TypeName      : 'Customer',
        TypeNamePlural: 'Customers',

        Title         : {
            $Type: 'UI.DataField',
            Value: customerName
        },

        Description   : {
            $Type: 'UI.DataField',
            Value: customerId
        }
    },

    //Facets of the Object page
    Facets                 : [
        {
            $Type : 'UI.ReferenceFacet',
            ID    : 'generalInfoFacets',
            Target: '@UI.FieldGroup#generalInfo',
            Label : 'General'
        },
        {
            $Type : 'UI.ReferenceFacet',
            ID    : 'adminInfoFacets',
            Target: '@UI.FieldGroup#adminInfo',
            Label : 'General'
        }
    ],

    FieldGroup #generalInfo  : {
        $Type: 'UI.FieldGroupType',
        Data : [
            {
                $Type: 'UI.DataField',
                Value: customerId
            },
            {
                $Type: 'UI.DataField',
                Value: customerName
            },
            {
                $Type: 'UI.DataField',
                Value: address
            },
            {
                $Type: 'UI.DataField',
                Value: mobileNo
            },
            {
                $Type: 'UI.DataField',
                Value: email
            },
            {
                $Type: 'UI.DataField',
                Value: active
            }
        ]
    },

    FieldGroup #adminInfo: {
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

    },
});

//Label of the field
annotate cs.Customer with {
    customerId
    @Common : { Label : '{i18n>customerId}' }
    @Core : { Immutable:true };

    customerName
    @Common : { Label : '{i18n>customerName}'};

    address
    @Common : { Label : '{i18n>address}'};

    mobileNo
    @Common : { Label : '{i18n>mobileNo}'};

    email
    @Common : { Label : '{i18n>email}'};

    active
    @Common : { Label : '{i18n>active}'};

    createdBy
    @Common : { Label : '{i18n>createdBy}'};

    createdAt
    @Common : { Label : '{i18n>createdAt}'};

    modifiedBy
    @Common : { Label : '{i18n>modifiedBy}'};

    modifiedAt
    @Common : { Label : '{i18n>modifiedAt}'};

};

