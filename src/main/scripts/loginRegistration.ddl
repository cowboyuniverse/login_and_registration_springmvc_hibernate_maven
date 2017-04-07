create sequence hibernate_sequence start 1 increment 1;

    create table users (
        user_id int4 not null,
        address1 varchar(255),
        address2 varchar(255),
        city varchar(255),
        country varchar(255),
        phone_cell varchar(255),
        phone_home varchar(255),
        phone_work varchar(255),
        state varchar(255),
        zip varchar(255),
        email varchar(255),
        first_name varchar(255),
        last_name varchar(255),
        password varchar(255),
        role varchar(255),
        primary key (user_id)
    );

    alter table users
        add constraint UK_6dotkott2kjsp8vw4d0m25fb7 unique (email);


INSERT INTO public.users(
	user_id, address1, address2, city, country, phone_cell, phone_home, phone_work, state, zip, email, first_name, last_name, password, role)
	VALUES (1, '2123 Santa Monica', 'Apartment ', 'Los Angeles', 'USA', '213-321-4214', '321-424-3214', '442-2342-5411', 'CA', '90024-1235', 'admin@email.com', 'Bruce', 'Wayne', 'abcd','ADMIN'),
   		   (2, '124 Star Labs', 'Apartment 3', 'Detriot', 'USA', '994-234-1244', '994-321-3214', '994-221-4223', 'CA', '7292-4211', 'staff@email.com', 'Barry', 'Allen','abcd' ,'STAFF'),
   		   (3, '3213 A street', 'Apartment 3', 'Chicago', 'USA', '323-123-1234', '323-321-3214', '232-231-1124', 'CA', '4271-2311', 'user@email.com', 'Barak', 'Obama','abcd' ,'USER');

