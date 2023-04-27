namespace usr;

type Address {
    street : String(100);
    city   : String(20);
    state  : String(10);
    zip    : String(6);
}

entity Users {
    id      : Integer;
    name    : String(100);
    email   : String(100);
    phone   : String(10);
    gender: String(10);
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
