CREATE TABLE users
(
    user_id serial PRIMARY KEY NOT NULL,
    name varchar NOT NULL,
    surname varchar,
    lastname varchar NOT NULL,
    login varchar NOT NULL,
    password varchar NOT NULL
);
CREATE UNIQUE INDEX users_login_uindex ON users (login);


-- auto-generated definition
create table images
(
  image_id   serial                      not null
    constraint images_pkey
    primary key,
  image_link varchar                     not null,
  owner_id   integer                     not null
    constraint images_users_fk
    references users,
  params     jsonb default '{}' :: jsonb not null
);

alter table images
  owner to postgres;

