create table brands (
    id serial primary key,
    name text not null,
    -- url of the logo
    logo text not null,  
    website text
);

create table products (
    id serial primary key,
    name text not null,
    brand int not null references brands,
    calories real not null,
    fat real not null,
    carbs real not null,
    protein real not null
);

create table users (
    id serial primary key,
    username text not null unique,
    created_at date not null default current_date,
    referral_user int references users,
    -- height in centimeters
    height smallint not null,  
    -- weight in decagrams (kgs * 10), giving one digit of precision.
    -- should be enough
    weight smallint not null
);

create table accounts (
    id int primary key references users,
    email text not null unique,
    password text not null
);

create table followers (
    -- the user following
    follower int not null references users,
    -- the user being followed
    followee int not null references users,
    primary key (follower, followee)
);

create table custom_products (
    id serial primary key,
    name text not null,
    brand text not null,
    owner int not null references users,
    calories real not null,
    fat real,
    carbs real,
    protein real
);

create table ingests (
    id serial primary key,
    portions real not null,
    who int not null references users,
    created_at date not null default current_date,
    is_custom boolean not null,
    product int references products,
    custom_product int references custom_products,
    check (is_custom and (custom_product notnull) or (product notnull))
);

create table activities (
    id serial primary key,
    name text not null unique,
    category text not null
);

create table custom_activities (
    id serial primary key,
    name text not null,
    category text not null,
    owner int not null references users
);

create table burns (
    id serial primary key,
    calories real not null,
    who int not null references users,
    created_at date not null default current_date,
    is_custom boolean not null,
    activity int references activities,
    custom_activity int references custom_activities,
    check (is_custom and (custom_activity notnull) or (activity notnull))
);
