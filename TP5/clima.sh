#!/bin/bash

API_KEY=449c9706909b4b369c5165221240107

CIUDAD="Londres"

URL="http://api.weatherapi.com/v1/current.json?key=449c9706909b4b369c5165221240107&q=London"

response=$(curl -s "$URL")

if [ $? -ne 0 ]; then
  echo "Error al realizar la solicitud"
  return 1
fi

clima=$(echo "$response" | jq -r '.current.condition.text')
temperatura=$(echo "$response" | jq -r '.current.temp_c')

echo "Clima actual en $CIUDAD:"
echo " - Temperatura: $temperatura °C"
echo " - Condición: $clima"

