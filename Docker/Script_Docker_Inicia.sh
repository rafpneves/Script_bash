#!/bin/bash
docker ps 
echo ""
echo "Iniciando Container MYSQL..."
echo ""
docker start 525577bcf9de
echo ""
echo "Container MYSQL iniciado..."
echo ""
docker ps
echo ""

echo "Concluido!"
