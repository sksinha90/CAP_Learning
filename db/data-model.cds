namespace usr;

type Address {
    street : String(100);
    city   : String(100);
    state  : String(100);
    zip    : String(10);
}
type  Gender : String enum {
    Male;
    Female;
    Other;
};

entity Users {
    id      : UUID;
    name    : String(100);
    email   : String(100);
    phone   : String(10);
    password: String(100);
    gender  : Gender;
    address : Address;
    project : Association to Projects;
}

entity Projects {
    id          : Integer;
    name        : String(50);
    description : String(100);
    user        : Association to many Users
                      on user.project = $self;
}
