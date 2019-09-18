
create database restaurante2018072;
use restaurante2018072;

create table clientes(
idcliente int not null primary key auto_increment,
nombre varchar(30),
apellidos varchar(30), 
númeronit int not null,
correoelectronico varchar(30));


create table meseros(
idmesero int not null primary key auto_increment,
nombremesero varchar(30) not null,
apellidomesero varchar(30) not null,
sexomesero varchar(30) not null,
edadmesero int not null,
propina double not null);


create table areaderestaurantes(
idareaderestaurante int not null primary key auto_increment,
descripcion varchar(30));


create table cocineros(
idcocinero int not null primary key auto_increment,
nombredelcocinero varchar (30),
apellidodelcocinero varchar (30));


create table mesas(
idmesa int not null primary key auto_increment,
descripción varchar (50),
idareaderestaurante int not null,
foreign key (idareaderestaurante) references areaderestaurantes(idareaderestaurante) on delete cascade);


create table platillos(
idplatillos int not null primary key auto_increment,
descripción varchar (50) not null
);





create table detallefactura( 
iddetallefactura int not null primary key auto_increment,
idplatillos int not null ,
preciototal double  not null,
idcocinero int not null,
foreign key (idplatillos) references platillos(idplatillos) on delete cascade,
foreign key (idcocinero) references cocineros(idcocinero) on delete cascade);



create table factura(
idfacatura int not null primary key auto_increment,
idcliente int not null,
iddetallefactura int not null,
idmesero int not null, 
idmesa int not null,
foreign key (idcliente) references clientes(idcliente) on delete cascade,
foreign key (iddetalleFactura) references detallefactura(iddetallefactura) on delete cascade,
foreign key (idmesero) references meseros(idMesero) on delete cascade,
foreign key (idmesa) references mesas(idmesa) on delete cascade);


