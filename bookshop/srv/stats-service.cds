using my.bookshop.Orders from '../db/Schema';

service Stats {
    entity OrderInfo as projection on Orders excluding {
        createdAt,
        createdBy,
        modifiedAt,
        modifiedBy,
        book
    };
}
