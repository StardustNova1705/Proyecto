drop schema if exists bdregistro;
Create schema if not exists bdregistro 
Character set utf8mb4;

Use bdregistro;

Create table if not exists ingresado(
	Id int auto_increment,
    Nom_ingresado Varchar(45) not null,
    Num_ingresados Numeric not null,
    Rut_Ingresado Varchar(9) not null,
    primary key (id)
);

Create table if not exists Vehiculo(
    Id Int Auto_increment not null,
    Modelo_vehiculo Varchar(50) not null,
    Tamaño_vehiculo numeric not null,
    Peso_vehiculo Numeric not null,
    primary key (id)
);

Create table if not exists MonitorBahia(
    Id smallint not null AUTO_INCREMENT,
    Nom_MonitorBahia Varchar(45),
    Primary key (id)
);

Create table if not exists Bahia(
    Id smallint not null,
    Num_bahia Numeric not null,
    Locacion_bahia varchar(45) not null,
    Id_Vehiculo Int,
    Id_monitorBahia smallint,
    primary key(id),
    Foreign key(Id_Vehiculo) references Vehiculo(Id),
    Foreign key(Id_MonitorBahia) references MonitorBahia(Id)
);

Create table if not exists Entrada(
	Id int auto_increment not null,
    Num_Entrada Numeric not null,
    Hora_entrada Time not null,
    Id_ingresado Int,
	Id_Vehiculo Int,
    Id_bahia smallint,
    Primary key(id),
	Foreign key(Id_Ingresado) references Ingresado(Id),
    Foreign key(Id_Vehiculo) references Vehiculo(Id),
    Foreign key(Id_Bahia) references Bahia(Id)
);
    
    
Create table if not exists salida(
    Id int auto_increment not null,
    Num_salida Numeric not null,
    Hora_salida Time not null,
    Id_ingresado Int,
    Id_Vehiculo Int,
    Id_bahia smallint,
    primary key(id),
    Foreign key(Id_Ingresado) references Ingresado(Id),
    Foreign key(Id_Vehiculo) references vehiculo(Id),
    Foreign key(Id_bahia) references bahia(Id)
);

