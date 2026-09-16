#!/bin/bash

while true
do
    if [[ -n $(git status --porcelain) ]]; then

        echo "Alterações encontradas..."

        git add .

        git commit -m "Atualização automática"

        git push

        echo "Alterações enviadas para o GitHub."

    fi

    sleep 30
done