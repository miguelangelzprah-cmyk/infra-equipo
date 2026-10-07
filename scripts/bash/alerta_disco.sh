#!/bin/bash

USO=$(df / | tail -1 | awk '{print $5}' | sed 's/%//')

LIMITE=80

if [ "$USO" -ge "$LIMITE" ]; then
    echo "ALERTA: El disco supera el límite permitido. Uso actual: $USO%"
else
    echo "Disco correcto. Uso actual: $USO%"
fi
