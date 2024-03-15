#!/bin/bash

echo "Como será o nome da sua pasta?"
read folder
echo "Como será o nome do arquivo?"
read file
echo "O que você quer escrever nele, preguiçoso?"
read file_content

st_folder="${folder// /_}"
st_file="${file// /_}"

mkdir "$st_folder" || { echo "Failed to create folder $st_folder"; exit 1; }
cd "$st_folder" || { echo "Failed to access $st_folder"; exit 1; }
echo "$file_content" >> "$st_file.txt" || { echo "Failed to write file";exit 1; }
