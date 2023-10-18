-- Procedimientos Almacenados Insertar

-- Insert Ingresado
DELIMITER //
CREATE PROCEDURE InsertarIngresado(
    IN p_Nom_ingresado VARCHAR(45),
    IN p_Num_ingresados NUMERIC,
    IN p_Rut_Ingresado VARCHAR(9)
)
BEGIN
    INSERT INTO Ingresado (Nom_ingresado, Num_ingresados, Rut_Ingresado)
    VALUES (p_Nom_ingresado, p_Num_ingresados, p_Rut_Ingresado);
END;
//
DELIMITER ;

-- Insert Vehiculo
DELIMITER //
CREATE PROCEDURE InsertarVehiculo(
    IN p_Modelo_vehiculo VARCHAR(50),
    IN p_Tamaño_vehiculo NUMERIC,
    IN p_Peso_vehiculo NUMERIC
)
BEGIN
    INSERT INTO Vehiculo (Modelo_vehiculo, Tamaño_vehiculo, Peso_vehiculo)
    VALUES (p_Modelo_vehiculo, p_Tamaño_vehiculo, p_Peso_vehiculo);
END;
//
DELIMITER ;

-- Insert MonitorBahia
DELIMITER //
CREATE PROCEDURE InsertarMonitorBahia(
    IN p_Nom_MonitorBahia VARCHAR(45)
)
BEGIN
    INSERT INTO MonitorBahia (Nom_MonitorBahia)
    VALUES (p_Nom_MonitorBahia);
END;
//
DELIMITER ;

-- Insert Bahia 
DELIMITER //
CREATE PROCEDURE InsertarBahia(
	IN p_Id smallInt,
    IN p_Num_bahia NUMERIC,
    IN p_Locacion_bahia VARCHAR(45),
    IN p_Id_Vehiculo INT,
    IN p_Id_MonitorBahia SMALLINT
)
BEGIN
    INSERT INTO Bahia (id, Num_bahia, Locacion_bahia, Id_Vehiculo, Id_MonitorBahia)
    VALUES (p_ID, p_Num_bahia, p_Locacion_bahia, p_Id_Vehiculo, p_Id_MonitorBahia);
END;
//
DELIMITER ;

-- Insert Entrada 
DELIMITER //
CREATE PROCEDURE InsertarEntrada(
    IN p_Num_Entrada NUMERIC,
    IN p_Hora_entrada TIME,
    IN p_Id_ingresado INT,
    IN p_Id_Vehiculo INT,
    IN p_Id_bahia SMALLINT
)
BEGIN
    INSERT INTO Entrada (Num_Entrada, Hora_salida, Id_ingresado, Id_Vehiculo, Id_bahia)
    VALUES (p_Num_Entrada, p_Hora_salida, p_Id_ingresado, p_Id_Vehiculo, p_Id_bahia);
END;
//
DELIMITER ;

-- Insert Salida
DELIMITER //
CREATE PROCEDURE InsertarSalida(
    IN p_Num_salida NUMERIC,
    IN p_Hora_salida TIME,
    IN p_Id_ingresado INT,
    IN p_Id_Vehiculo INT,
    IN p_Id_bahia SMALLINT
)
BEGIN
    INSERT INTO Salida (Num_salida, Hora_salida, Id_ingresado, Id_Vehiculo, Id_bahia)
    VALUES (p_Num_salida, p_Hora_salida, p_Id_ingresado, p_Id_Vehiculo, p_Id_bahia);
END;
//
DELIMITER ;

-- Procedimientos Almacenados Buscar

-- Buscar Ingresado por id
DELIMITER //
CREATE PROCEDURE BuscarIngresadoPorID(IN p_Id INT)
BEGIN
    SELECT * FROM Ingresado WHERE Id = p_Id;
END;
//
DELIMITER ;

-- Buscar Vehiculo por id
DELIMITER //
CREATE PROCEDURE BuscarVehiculoPorID(IN p_Id INT)
BEGIN
    SELECT * FROM Vehiculo WHERE Id = p_Id;
END;
//
DELIMITER ;

-- Buscar Monitor bahia por id
DELIMITER //
CREATE PROCEDURE BuscarMonitorBahiaPorID(IN p_Id SMALLINT)
BEGIN
    SELECT * FROM MonitorBahia WHERE Id = p_Id;
END;
//
DELIMITER ;

-- Buscar Bahia por id
DELIMITER //
CREATE PROCEDURE BuscarBahiaPorID(IN p_Id SMALLINT)
BEGIN
    SELECT * FROM Bahia WHERE Id = p_Id;
END;
//
DELIMITER ;

-- Buscar Entrada por id
DELIMITER //
CREATE PROCEDURE BuscarEntradaPorID(IN p_Id INT)
BEGIN
    SELECT * FROM Entrada WHERE Id = p_Id;
END;
//
DELIMITER ;

-- Buscar Salida por id
DELIMITER //
CREATE PROCEDURE BuscarSalidaPorID(IN p_Id INT)
BEGIN
    SELECT * FROM Salida WHERE Id = p_Id;
END;
//
DELIMITER ;

-- Procedimientos almacenados Actualizar

-- Actualizar Ingresado
DELIMITER //
CREATE PROCEDURE ActualizarIngresado(
    IN p_Id INT,
    IN p_Nom_ingresado VARCHAR(45),
    IN p_Num_ingresados NUMERIC,
    IN p_Rut_Ingresado VARCHAR(9)
)
BEGIN
    UPDATE Ingresado
    SET Nom_ingresado = p_Nom_ingresado,
        Num_ingresados = p_Num_ingresados,
        Rut_Ingresado = p_Rut_Ingresado
    WHERE Id = p_Id;
END;
//
DELIMITER ;

-- Actualizar Vehiculo
DELIMITER //
CREATE PROCEDURE ActualizarVehiculo(
    IN p_Id INT,
    IN p_Modelo_vehiculo VARCHAR(50),
    IN p_Tamaño_vehiculo NUMERIC,
    IN p_Peso_vehiculo NUMERIC
)
BEGIN
    UPDATE Vehiculo
    SET Modelo_vehiculo = p_Modelo_vehiculo,
        Tamaño_vehiculo = p_Tamaño_vehiculo,
        Peso_vehiculo = p_Peso_vehiculo
    WHERE Id = p_Id;
END;
//
DELIMITER ;

-- Actualizar Monitor Bahia
DELIMITER //
CREATE PROCEDURE ActualizarMonitorBahia(
    IN p_Id SMALLINT,
    IN p_Nom_MonitorBahia VARCHAR(45)
)
BEGIN
    UPDATE MonitorBahia
    SET Nom_MonitorBahia = p_Nom_MonitorBahia
    WHERE Id = p_Id;
END;
//
DELIMITER ;

-- Actualizar Bahia
DELIMITER //
CREATE PROCEDURE ActualizarBahia(
    IN p_Id SMALLINT,
    IN p_Num_bahia NUMERIC,
    IN p_Locacion_bahia VARCHAR(45),
    IN p_Id_Vehiculo INT,
    IN p_Id_MonitorBahia SMALLINT
)
BEGIN
    UPDATE Bahia
    SET Num_bahia = p_Num_bahia,
        Locacion_bahia = p_Locacion_bahia,
        Id_Vehiculo = p_Id_Vehiculo,
        Id_MonitorBahia = p_Id_MonitorBahia
    WHERE Id = p_Id;
END;
//
DELIMITER ;

-- Actualizar entrada
DELIMITER //
CREATE PROCEDURE ActualizarEntrada(
    IN p_Id INT,
    IN p_Num_Entrada NUMERIC,
    IN p_Hora_salida TIME,
    IN p_Id_ingresado INT,
    IN p_Id_Vehiculo INT,
    IN p_Id_bahia SMALLINT
)
BEGIN
    UPDATE Entrada
    SET Num_Entrada = p_Num_Entrada,
        Hora_salida = p_Hora_salida,
        Id_ingresado = p_Id_ingresado,
        Id_Vehiculo = p_Id_Vehiculo,
        Id_bahia = p_Id_bahia
    WHERE Id = p_Id;
END;
//
DELIMITER ;

-- Actualizar salida
DELIMITER //
CREATE PROCEDURE ActualizarSalida(
    IN p_Id INT,
    IN p_Num_salida NUMERIC,
    IN p_Hora_entrada TIME,
    IN p_Id_ingresado INT,
    IN p_Id_Vehiculo INT,
    IN p_Id_bahia SMALLINT
)
BEGIN
    UPDATE Salida
    SET Num_salida = p_Num_salida,
        Hora_salida = p_Hora_salida,
        Id_ingresado = p_Id_ingresado,
        Id_Vehiculo = p_Id_Vehiculo,
        Id_bahia = p_Id_bahia
    WHERE Id = p_Id;
END;
//
DELIMITER ; 

-- Sp mostrar Vehiculos con su horario de entrada y salida

DELIMITER //

CREATE PROCEDURE BuscarVehiculosConHorarios()
BEGIN
    SELECT
        Vehiculo.Modelo_vehiculo,
        Entrada.Hora_entrada AS Hora_Entrada,
        salida.Hora_salida AS Hora_Salida
    FROM
        Vehiculo
    LEFT JOIN Entrada ON Vehiculo.Id = Entrada.Id_Vehiculo
    LEFT JOIN salida ON Vehiculo.Id = salida.Id_Vehiculo;
END //

DELIMITER ;

-- Llamar el sp
CALL BuscarVehiculosConHorarios();

-- Call Ingresar

-- Call Insertar Ingresado
CALL InsertarIngresado(p_Nom_ingresado, p_Num_ingresados, p_Rut_Ingresado);

-- Call Insertar Vehiculo
CALL InsertarVehiculo(p_Modelo_vehiculo, p_Tamaño_vehiculo, p_Peso_vehiculo);

-- Call Insertar Monitor Bahia
CALL InsertarMonitorBahia(p_Nom_MonitorBahia);

-- Call Insertar Bahia
CALL InsertarBahia(p_Num_bahia, p_Locacion_bahia, p_Id_Vehiculo, p_Id_MonitorBahia);

-- Call Insertar Entrada
CALL InsertarEntrada(p_Num_Entrada, p_Hora_entrada, p_Id_ingresado, p_Id_Vehiculo, p_Id_bahia);

-- Call Insertar Salida
CALL InsertarSalida(p_Num_salida, p_Hora_salida, p_Id_ingresado, p_Id_Vehiculo, p_Id_bahia);

-- Call Buscar

-- Call Buscar ingresado
CALL BuscarIngresadoPorID(p_Id);

-- Call Buscar Vehiculo
CALL BuscarVehiculoPorID(p_Id);

-- Call Buscar Monitor bahia
CALL BuscarMonitorBahiaPorID(p_Id);

-- Call Buscar Bahia
CALL BuscarBahiaPorID(p_Id);

-- Call Buscar Entrada
CALL BuscarEntradaPorID(p_Id);

-- Call Buscar Salida
CALL BuscarSalidaPorID(p_Id);

-- Call Actualizar

-- call Actualizar Ingresado
CALL ActualizarIngresado(p_Id, p_Nom_ingresado, p_Num_ingresados, p_Rut_Ingresado);

-- Call Actualizar Vehiculo
CALL ActualizarVehiculo(p_Id, p_Modelo_vehiculo, p_Tamaño_vehiculo, p_Peso_vehiculo);

-- Call Actualizar Monitor Bahia
CALL ActualizarMonitorBahia(p_Id, p_Nom_MonitorBahia);

-- Call Actualizar Bahia
CALL ActualizarBahia(p_Id, p_Num_bahia, p_Locacion_bahia, p_Id_Vehiculo, p_Id_MonitorBahia);

-- Call Actualizar entrada
CALL ActualizarEntrada(p_Id, p_Num_Entrada, p_Hora_salida, p_Id_ingresado, p_Id_Vehiculo, p_Id_bahia);

-- Call Actualizar Salida 
CALL ActualizarSalida(p_Id, p_Num_salida, p_Hora_entrada, p_Id_ingresado, p_Id_Vehiculo, p_Id_bahia);


