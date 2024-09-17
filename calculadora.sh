#!/bin/bash

# Lê os números do usuário
read -p "Digite o primeiro número: " num1
read -p "Digite o segundo número: " num2

# Lê a operação
read -p "Escolha a operação (+, -, *, /): " operacao

# Realiza a operação
case $operacao in
    +)
        resultado=$((num1 + num2))
        ;;
    -)
        resultado=$((num1 - num2))
        ;;
    \*)
        resultado=$((num1 * num2))
        ;;
    /)
        if [[ $num2 -eq 0 ]]; then
            echo "Divisão por zero não é permitida."
        else
            resultado=$(echo "$num1 / $num2" | bc -l)
        fi
        ;;
    *)
        echo "Operação inválida"
        ;;
esac

# Exibe o resultado
echo "O resultado é: $resultado"
