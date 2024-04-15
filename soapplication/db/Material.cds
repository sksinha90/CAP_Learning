namespace soapplication.db;

using {
    cuid,
    managed
} from '@sap/cds/common';

@assert.unique: {materialId: [materialId]}

entity Material : cuid, managed {
    materialId   : String(10);
    description  : String(100);
    materialUnit : Association to one MaterialQuantity;
    active       : Boolean;
}

entity MaterialQuantity {
    key code     : String(3);
        quantity : String(50);
}
