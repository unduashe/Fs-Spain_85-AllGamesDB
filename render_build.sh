#!/usr/bin/env bash
set -o errexit

# Build frontend
cd src/front
npm install
npm run build
cd ../..

# Instala pipenv manualmente (Render usa entorno Node por defecto)
pip install pipenv

# Instala dependencias de Python y ejecuta tareas
pipenv install --deploy
pipenv run flask db stamp head
pipenv run migrate
pipenv run upgrade
pipenv run flask insert-game-tag-data
pipenv run flask insert-game-data
