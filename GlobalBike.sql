
go
Create Table Lenguajes
(
	Llave_Lenguaje varchar(2) primary key,
	Lenguaje varchar(20), 
	Pais varchar(20),
)
go
Create Table Organizaciones_Venta
(
	Id_Organizacion varchar(4) primary key,
	Llave_Lenguaje varchar(2) foreign key references Lenguajes(Llave_Lenguaje),
	Descripcion varchar(max)
)
go 
Create Table Categoria_Producto
(
	Id_Cat_Prod varchar(3) primary key,
	Llave_Lenguaje varchar(2) foreign key references Lenguajes(Llave_Lenguaje),
	Descripcion varchar(max)
)
go
Create Table Materiales
(
	Id_Material varchar(8) primary key,
	Descripcion varchar(max),
	Id_Cat_Prod varchar(3) Foreign Key References Categoria_Producto(Id_Cat_Prod),
	Division varchar(2)
)
go
Create Table Cliente	
(
	Id_Cliente int primary key,
	Llave_Lenguaje varchar(2) foreign key references Lenguajes(Llave_Lenguaje),
	Id_Organizacion varchar(4) foreign key references Organizaciones_Venta(Id_Organizacion),
	Locacion varchar(max),
	Pais varchar(2),
	Descripcion varchar(max)

)
go
create table Meses
(
	Mes Int Primary Key,
	Nombre Varchar(10)
)
go 
Insert into Meses values ('1','Enero')
Insert into Meses values ('2','Enero')
Insert into Meses values ('3','Enero')
Insert into Meses values ('4','Enero')
Insert into Meses values ('5','Enero')
Insert into Meses values ('6','Enero')
Insert into Meses values ('7','Enero')
Insert into Meses values ('8','Enero')
Insert into Meses values ('9','Enero')
Insert into Meses values ('10','Enero')
Insert into Meses values ('11','Enero')
Insert into Meses values ('12','Enero')
go
create table Transacciones_Venta
(
	 NO_Orden int,
	 NO_Item int,
	 Año int,
	 Mes int foreign key references Meses(Mes),
	 Fecha DateTime,
	 Id_Cliente int foreign key references Cliente(Id_Cliente),
	 Producto	varchar(8) foreign key references Materiales(Id_Material),
	 Cantidad	int,
	 Utilidad_Medicion varchar(2),
	 Ganancia_USD Money,
	 Descuento_USD Money,
	 Costo_USD Money,
	 Constraint PK_Venta Primary Key(NO_Orden,NO_Item)
)
go
insert into Lenguajes values('EN','Ingles','Estados Unidos')
insert into Lenguajes values('ES','Español Mexico','Mexico')
insert into Lenguajes values('CH','Mandarin','Chino')



