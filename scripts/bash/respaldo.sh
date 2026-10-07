#!/bin/bash

FECHA=$(date +%Y-%m-%d)

tar -czf ../backups/respaldo_$FECHA.tar.gz ../documentos

echo "Respaldo creado correctamente: respaldo_$FECHA.tar.gz"
