using MaterialService as ms from './MaterialService';

annotate ms.Material with @(UI: {
    LineItem       : [
        {
            $Type: 'UI.DataField',
            Value: materialId
        },
        {
            $Type: 'UI.DataField',
            Value: description
        },
        {
            $Type: 'UI.DataField',
            Value: materialUnit_code,
            Label: '{i18n>materialUnit}'
        },
        {
            $Type: 'UI.DataField',
            Value: active
        }
    ],

    SelectionFields: [
        materialId,
        description,
        active
    ],

    HeaderInfo     : {
        $Type         : 'UI.HeaderInfoType',
        TypeName      : 'Material',
        TypeNamePlural: 'Materials',

        Title         : {
            $Type: 'UI.DataField',
            Value: description
        },

        Description   : {
            $Type: 'UI.DataField',
            Value: materialId
        }
    },

});

annotate ms.Material with @(

    UI.Facets                 : [
        {
            $Type : 'UI.ReferenceFacet',
            Target: '@UI.FieldGroup#generalInfo',
            Label : 'General',
            ID    : 'generalInfoFacet'
        },
        {
            $Type : 'UI.ReferenceFacet',
            Target: '@UI.FieldGroup#adminInfo',
            ID    : 'adminInfoFacet',
            Label : 'Administrative Information'
        }
    ],

    UI.FieldGroup #generalInfo: {
        $Type: 'UI.FieldGroupType',
        Data : [
            {
                $Type: 'UI.DataField',
                Value: materialId
            },
            {
                $Type: 'UI.DataField',
                Value: description
            },
            {
                $Type: 'UI.DataField',
                Value: materialUnit_code,
                Label: '{i18n>materialUnit}'
            },
            {
                $Type: 'UI.DataField',
                Value: active
            }
        ]
    },

    UI.FieldGroup #adminInfo  : {
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
);

// Field Label
annotate ms.Material with {
    materialId
    @Common: {Label: '{i18n>materialId}'}
    @Core  : {Immutable: true};

    description
    @Common: {Label: '{i18n>matDescription}'};

    materialUnit
    @Common: {Label: '{i18n>materialUnit}'};

    active
    @Common: {Label: '{i18n>active}'};

    createdBy
    @Common: {Label: '{i18n>createdBy}'};

    createdAt
    @Common: {Label: '{i18n>createdAt}'};

    modifiedBy
    @Common: {Label: '{i18n>modifiedBy}'};

    modifiedAt
    @Common: {Label: '{i18n>modifiedAt}'};
};

//Valu Help

annotate ms.Material with {
    materialUnit
    @(
    Common.ValueListWithFixedValues : true,
    Common.ValueList: {
        SearchSupported: true,
        CollectionPath : 'MaterialQuantity',
        Parameters     : [
            {
                $Type            : 'Common.ValueListParameterInOut',
                LocalDataProperty: 'materialUnit_code',
                ValueListProperty: 'code'
            },
            {
                $Type            : 'Common.ValueListParameterDisplayOnly',
                ValueListProperty: 'quantity'
            }
        ]
    })
};
