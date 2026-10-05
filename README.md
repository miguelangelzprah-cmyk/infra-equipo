# APTI LAB - Docker Compose

## Descripción
Aplicación multicontenedor desplegada con Docker Compose.

## Servicios

- Nginx: servidor web
- MySQL 8: base de datos

## Arquitectura

Usuario
 |
Nginx
 |
MySQL

## Comandos principales

Levantar servicios:

docker compose up -d

Ver estado:

docker compose ps

Ver logs:

docker compose logs

Detener servicios:

docker compose down

## Persistencia

El proyecto utiliza un volumen Docker:

datos_apti_compose

para mantener la información de la base de datos.
## Estado del proyecto

Infraestructura Docker administrada mediante Git y GitHub.
