using hoteldb.projection as hoteldb from '../db/data-model';

service CatalogService {
  entity Hotels @readonly @odata.draft.enabled as projection on hoteldb.Hotels ;
  entity Rooms @readonly @odata.draft.enabled as projection on hoteldb.Rooms;
  entity Reservations @odata.draft.enabled  @insertonly as projection on hoteldb.Reservations;
}