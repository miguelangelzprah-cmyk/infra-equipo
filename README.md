# APTI LAB - Infraestructura TI y Automatización DevOps

## Descripción del proyecto

Este proyecto implementa un laboratorio de infraestructura TI orientado a la administración de servicios, automatización de tareas y control de versiones.

La solución integra una aplicación multicontenedor desplegada mediante Docker Compose, gestionada mediante Git/GitHub y complementada con scripts de automatización desarrollados en Bash, Cron, PowerShell y Python.

El objetivo principal es aplicar buenas prácticas DevOps:

- Administración de infraestructura.
- Control de versiones.
- Automatización de tareas repetitivas.
- Documentación técnica.
- Gestión de cambios.

---

# Arquitectura general

La arquitectura implementada está compuesta por servicios contenerizados y herramientas de administración.

```
Usuario
   |
   ↓
 Nginx
   |
   ↓
 MySQL 8
```

La infraestructura es administrada desde un servidor Ubuntu Server utilizando Docker Compose y herramientas de automatización.

---

# Tecnologías utilizadas

| Tecnología | Uso |
|---|---|
| Ubuntu Server | Sistema operativo para administración del servidor |
| Docker Compose | Despliegue de servicios multicontenedor |
| Git | Control de versiones |
| GitHub | Repositorio remoto |
| Bash | Automatización en Linux |
| Cron | Programación automática de tareas |
| PowerShell | Automatización en Windows |
| Python | Generación de reportes del sistema |
| IA | Apoyo en generación y revisión de scripts |

---

# Infraestructura Docker Compose

## Servicios implementados

### Nginx

Servidor web encargado de atender las solicitudes del usuario.

Funciones:

- Publicación del servicio web.
- Administración mediante contenedor Docker.

---

### MySQL 8

Base de datos utilizada para almacenamiento persistente.

Funciones:

- Gestión de información.
- Persistencia mediante volumen Docker.

---

# Arquitectura de servicios

```
Usuario

   ↓

Nginx

   ↓

MySQL 8
```

---

# Comandos principales Docker

## Levantar servicios

```bash
docker compose up -d
```

## Ver estado de contenedores

```bash
docker compose ps
```

## Ver registros del sistema

```bash
docker compose logs
```

## Detener servicios

```bash
docker compose down
```

---

# Persistencia de datos

La base de datos utiliza un volumen Docker:

```
datos_apti_compose
```

Este volumen permite conservar la información almacenada aunque los contenedores sean detenidos o reiniciados.

---

# Control de versiones con Git y GitHub

El proyecto utiliza Git para administrar cambios y GitHub como repositorio remoto.

## Flujo de trabajo utilizado

```
Modificar archivos

        ↓

git add

        ↓

git commit

        ↓

git push

        ↓

GitHub
```

---

# Actividades realizadas con Git

- Instalación y configuración de Git.
- Creación del repositorio remoto.
- Conexión entre Ubuntu y GitHub.
- Configuración de ramas.
- Creación de commits.
- Integración de cambios mediante merge.
- Publicación del proyecto en GitHub.

---

# Ramas utilizadas

## main

Rama principal donde se encuentra la versión estable del proyecto.

## mejora-readme

Rama utilizada para realizar modificaciones y mejoras en la documentación.

---

# Historial del proyecto

Principales cambios realizados:

```
Agregar infraestructura Docker Compose

↓

Actualizar gitignore y excluir archivos innecesarios

↓

Actualizar documentación del proyecto

↓

Agregar docker compose compatible

↓

Agregar scripts de automatización Bash Python y PowerShell

```

---

# Automatización con Bash

## Script de respaldo automático

Archivo:

```
scripts/bash/respaldo.sh
```

Funciones:

- Comprime archivos del sistema.
- Genera respaldos automáticamente.
- Utiliza fecha para identificar cada copia.

Ejemplo generado:

```
respaldo_2026-10-06.tar.gz
```

---

## Script de monitoreo de disco

Archivo:

```
scripts/bash/alerta_disco.sh
```

Funciones:

- Consulta el uso del almacenamiento.
- Evalúa el porcentaje utilizado.
- Genera mensajes de alerta.

---

# Automatización mediante Cron

Se configuró una tarea programada para ejecutar automáticamente el monitoreo del disco.

Configuración:

```
*/30 * * * *
```

Funcionamiento:

- Ejecuta el script cada 30 minutos.
- Reduce tareas manuales del administrador.
- Genera registros de ejecución.

---

# Automatización con PowerShell

Se realizaron pruebas de administración mediante comandos PowerShell.

## Consulta de servicios

Comando:

```powershell
Get-Service
```

Permite obtener información del estado de los servicios de Windows.

---

## Consulta de procesos

Comando:

```powershell
Get-Process
```

Permite visualizar procesos activos del sistema.

---

## Generación de reportes

Comando:

```powershell
Export-Csv
```

Permite exportar información obtenida a archivos CSV.

Reportes generados:

```
servicios.csv

procesos.csv
```

---

# Automatización con Python e Inteligencia Artificial

Script desarrollado:

```
reporte_sistema.py
```

Funciones:

- Obtención del nombre del equipo.
- Consulta del sistema operativo.
- Información del procesador.
- Consulta de memoria RAM.
- Uso del almacenamiento.
- Generación automática de reportes.

---

# Uso de Inteligencia Artificial

La IA fue utilizada como herramienta de apoyo para:

- Generar un borrador inicial del código.
- Revisar estructura del script.
- Detectar mejoras.
- Proponer correcciones.

Posteriormente el código fue:

- Revisado.
- Probado.
- Modificado.
- Documentado.

---

# Estructura del proyecto

```
infra-equipo

│

├── docker-compose.yml

├── README.md

│

└── scripts

    │

    ├── bash

    │   ├── respaldo.sh

    │   └── alerta_disco.sh

    │

    ├── powershell

    │   └── reportes.ps1

    │

    └── python

        ├── reporte_sistema.py

        └── bitacora_IA.txt

```

---

# Evidencias del proyecto

Se verificó:

✅ Funcionamiento de Docker Compose  
✅ Control de versiones con Git  
✅ Sincronización con GitHub  
✅ Ejecución de scripts Bash  
✅ Automatización mediante Cron  
✅ Generación de reportes PowerShell  
✅ Ejecución de scripts Python  

---

# Estado final del proyecto

Proyecto de infraestructura TI implementado utilizando:

- Docker Compose
- Git/GitHub
- Ubuntu Server
- Bash
- Cron
- PowerShell
- Python
- Automatización DevOps

