create database Clientes;
use Clientes;

create table clients_ecommerce(
	id_client int not null auto_increment,
    ds_name varchar(255),
    nm_cpf int,
    fl_status enum ('A' ,'I') default "A",
    dt_created_at datetime default current_timestamp,
    primary key(id_client)
);

create table products (
	id_product int not null auto_increment,
    ds_name varchar(120) not null,
    ds_description varchar(255),
    nm_value float not null,
    ds_brand varchar(120),
    ds_status enum ('A','I') default "A",
    dt_created_at datetime default current_timestamp,
    primary key (id_product)
);

create table cart (
	id_cart int not null auto_increment,
    id_client int,
    id_product int,
    primary key(id_cart),
    foreign key(id_client) references clients_ecommerce(id_client),
    foreign key(id_product) references products(id_product)
);

select *from clients_ecommerce;
select * from products;
select * from cart;

insert into clients_ecommerce (ds_name, nm_cpf, fl_status) values ('Sophia', 543217689,'A');
insert into products (ds_name, ds_description, nm_value, ds_brand, ds_status) values ('PC', 'Gamer', 5999.00, 'DELL','A');
insert into cart (id_client, id_product) values (1,1);