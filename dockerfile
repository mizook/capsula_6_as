# Etapa 1: Compilar la aplicación
FROM mcr.microsoft.com/dotnet/sdk:8.0 AS build
WORKDIR /app

# Copiar archivos de proyecto y restaurar dependencias
COPY *.csproj ./
RUN dotnet restore

# Copiar el resto del código y compilar
COPY . ./
RUN dotnet publish -c Release -o out

# Etapa 2: Ejecutar la aplicación
FROM mcr.microsoft.com/dotnet/aspnet:8.0 AS runtime
WORKDIR /app

# Copiar los archivos compilados desde la etapa anterior
COPY --from=build /app/out ./

# Exponer el puerto que utilizará la aplicación
EXPOSE 80

# Configurar la aplicación para que escuche en el puerto 80
ENV ASPNETCORE_URLS=http://+:80

# Ejecutar la aplicación
ENTRYPOINT ["dotnet", "API.dll"]
