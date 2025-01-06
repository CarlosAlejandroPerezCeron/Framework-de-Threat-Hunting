#!/bin/bash

echo "Generando tráfico de red sospechoso..."
nmap -sS -p 22,80,443 <IP-TARGET> > /dev/null 2>&1

echo "Ejecutando procesos sospechosos..."
touch /tmp/malicious.exe
chmod +x /tmp/malicious.exe
/tmp/malicious.exe

echo "Pruebas de simulación completadas. Verifica las alertas en TheHive y Elasticsearch."
