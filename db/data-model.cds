namespace hoteldb.projection;

using {
  Country,
  Currency,
  managed
} from '@sap/cds/common';

  entity Hotels {
    key ID          : Integer;
        name        : localized String;
        city        : localized String;
        address     : localized String;
        typeofhotel : Integer;
        room        : Association to Rooms;
  }

  entity Rooms {
    key ID            : Integer;
        name          : String;
        hotels        : Association to many Hotels
                          on hotels.room = $self;
        roomtype      : String;
        chargesperday : Integer;
  }

  entity Reservations : managed {
    key ID             : UUID;
        hotel          : Association to Hotels;
        country        : Country;
        durationindays : Integer;
        amount         : Decimal;
        currency       : Currency;
        bookingdate    : DateTime;
  }
