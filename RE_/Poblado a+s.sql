Use bdregistro;

INSERT INTO ingresado (id, Nom_ingresado, Num_ingresados, Rut_Ingresado)
VALUES (1, 'Esteban Madrigal', 1, '121221179'),
       (2, 'Salomon Nuñez', 2, '133407022');

INSERT INTO Vehiculo (id, Modelo_vehiculo, Tamaño_vehiculo, Peso_vehiculo)
VALUES (1, 'Camion Volvo VNL 400', 5.0, 25000),
       (2, 'Mercedes benz L71-42', 4.5, 12000);

INSERT INTO MonitorBahia (id, Nom_MonitorBahia)
VALUES (1, 'Sebastian Sanchez'),
       (2, 'Ramon Valdez');

INSERT INTO Bahia (id, Num_bahia, Locacion_bahia, id_vehiculo, id_monitorBahia)
VALUES (1, 1, 'Norte',1 ,1),
       (2, 2, 'Sur',2 ,2);

INSERT INTO Entrada (id, Num_Entrada, Hora_entrada, id_ingresado, id_vehiculo, id_bahia)
VALUES (1, 1, '08:00:00',1 ,1 ,1),
       (2, 2, '09:00:00',2 ,2 ,1);

INSERT INTO salida (id, Num_salida, Hora_salida, id_ingresado, id_vehiculo, id_bahia)
VALUES (1, 1, '14:15:00',1 ,1, 2),
       (2, 2, '17:00:00',2 ,2, 1);


-- Ingresar poblado por sp
CALL InsertarIngresado('Luisa Fernández', 1, '224567890');
CALL InsertarIngresado('Carlos Ramirez', 2, '198765432');
CALL InsertarVehiculo('Sedán Ford Fusion', 4.2, 1500);
CALL InsertarVehiculo('Pickup Toyota Tacoma', 5.0, 2000);
CALL InsertarMonitorBahia('Laura García');
CALL InsertarMonitorBahia('Andrés López');
CALL InsertarBahia(3, 1, 'Norte',1 ,1);
CALL InsertarBahia(4, 2, 'Sur',2 ,2);
CALL InsertarEntrada(3, 3, '10:30:00', 1, 3, 3);
CALL InsertarEntrada(4, 4, '11:15:00', 2, 4, 4);
CALL InsertarSalida( 3, '17:30:00', 1, 3, 3);
CALL InsertarSalida(4, '18:45:00', 2, 4, 4);
