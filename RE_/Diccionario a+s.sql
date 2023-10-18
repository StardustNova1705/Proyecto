Tabla: bahia

id(pk): Identificador del lugar.
Num_bahia: Numero de la del lugar
Locacion_bahia: Ubicacion de la bahia
Id_Vehiculo: identificador del vehiculo que esta en la bahia.
Id_monitorbahia: Identificador de la persona que Monitorea la bahia.

Tabla: Entrada

id(pk): Identificador del ingreso.
Num_entrada: Numero de ingreso.
Hora_Entrada: Hora de ingreso
Id_Ingresado: Identificador de la persona que ingreso.
Id_Vehiculo: identificador del vehiculo que Ingreso.
Id_bahia: Identificacion de bahia en la que ingreso.

Tabla: Ingresado

Id_Ingresado: Identificador de la persona ingresada.
Nom_Ingresado: Nombre del ingresado.
Num_ingresados: Numero para la suma de los ingresados.
Rut_ingresado: El rut de cada ingresado.

Tabla: MonitorBahia

Id_Monitorbahia: Identificador del monitor de bahia.
Nom_monitorbahia: Nombre del monitor de bahia.


Tabla: salida

id(pk): Identificador de la salida.
Num_entrada: Numero de salida.
Hora_Entrada: Hora de salida.
Id_Ingresado: Identificador de la persona que salio.
Id_Vehiculo: identificador del vehiculo que salio.
Id_bahia: Identificacion de bahia por la que salio.

Tabla: Vehiculo

Id: identificador del vehiculo.
Modelo_Vehiculo: Marca y modelo del vehiculo.
Tamaño_vehiculo: Tamaño del vehiculo.
Peso_vehiculo: Peso_vehiculo





