# Cápsula 6: API para Pruebas de Carga y Rendimiento

Este proyecto es parte de la **Cápsula 6 de Arquitectura de Sistemas** y proporciona una API en .NET 8 con SQLite para realizar pruebas de carga y rendimiento utilizando JMeter.

## Descripción

La API incluye dos endpoints:

- **GET /users**: Devuelve una lista de 500 usuarios.
- **POST /users**: Permite crear un nuevo usuario.

La base de datos se llena automáticamente con datos ficticios utilizando un Seeder y la biblioteca **Bogus**.

## Requisitos

- **.NET 8 SDK** instalado.
- **SQLite** (se maneja mediante un paquete NuGet, no es necesario instalar nada adicional).

## Instrucciones para Ejecutar la API

1. **Clonar o Descargar el Proyecto**

   Descarga este proyecto en tu máquina local.

2. **Restaurar Paquetes NuGet**

   Abre una terminal en la carpeta del proyecto y ejecuta:

   ```bash
   dotnet restore
   ```

3. **Ejecutar proyecto**

   En la terminal ejecuta:

   ```bash
   dotnet run
   ```
