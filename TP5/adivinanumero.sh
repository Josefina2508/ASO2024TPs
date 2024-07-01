#!/bin/bash

intentos=10

num_aleatorio=$(( RANDOM % 100 + 1 ))

echo "Adivine el numero (de 1 a 100):"

read -p "Ingrese un numero aleatorio: " num_ingresado

while [[ $num_aleatorio -ne $num_ingresado && $intentos -gt 1 ]]; do
    if (( num_aleatorio > num_ingresado )); then
        echo "Muy bajo"
    else
        echo "Muy alto"
    fi
    
    intentos=$(( intentos - 1 ))
    
    echo "Le quedan $intentos intentos"
    
    read -p "Introduce otro numero: " num_ingresado
done

if (( num_aleatorio == num_ingresado )); then
    echo "¡Correcto! Adivinaste en $(( 11 - intentos )) intentos"
else
    echo "No lograste adivinar el numero :("

    echo "El numero era: $num_aleatorio"
fi

