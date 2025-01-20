create table Facturacion(
	numOperacion int primary key not null,
	DNI int,
	nombre varchar(50),
	Placa varchar(6) not null,
	Consumo_watts tinyint not null,
	SubTotal int not null,
	Descuento int,
	IGV numeric(10,2),
	total numeric (15,2)
)

-- tabla de identificación del cliente
create table ID_cliente(
	numOperacion int primary key not null,
	DNI int, 
	ruc tinyint,
	Razon_Social varchar(60), -- Debido a su complejidad de posibilidad de extensión
	Domicilio_Fiscal varchar (70)
)

-- tabla de ubicación, para dar más detalle
create table Ubicacion(
	numOperacion int primary key not null,
	ciudad varchar(50),
	Nombre_Estacion varchar(50),
)

create table calculoConsumo(
	numOperacion int primary key not null,
	cantidad_Watt int, 
	costo_Watt numeric(10,2),
	total numeric (15,2),
)