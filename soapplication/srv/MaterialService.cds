using soapplication.db as mat from '../db/Material';

service MaterialService {
    @odata.draft.enabled
    entity Material as projection on mat.Material;
    entity MaterialQuantity as projection on mat.MaterialQuantity;
}