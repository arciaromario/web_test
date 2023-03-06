#!/bin/bash

# Pide al usuario el nombre del repositorio
echo "Ingresa el nombre del repositorio:"
read repo_name

# Inicializa un nuevo repositorio de git
git init

# Añade todos los archivos al repositorio
git add .

# Realiza el primer commit
git commit -m "Initial commit"

# Crea un nuevo repositorio en Github con el mismo nombre
curl -u <tu_nombre_de_usuario> https://api.github.com/user/repos -d '{"name":"'$repo_name'"}'

# Añade el repositorio remoto de Github al repositorio local
git remote add origin https://github.com/<tu_nombre_de_usuario>/$repo_name.git

# Empuja los cambios al repositorio remoto de Github
git push -u origin master

echo "¡El repositorio '$repo_name' ha sido creado con éxito en Github!"
