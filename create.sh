#! /bin/bash

 #se crea el directorio 
mkdir -p webapp/{css,js,docs/{text,python},img}

#se elimina 
#rm -rf webapp

mkdir -p webapp/{css,js,docs/{text,python},img}

# Crear archivos de la aplicación
for file in index.html style.css app.js main.py
do
    touch "./webapp/${file}"
done

#descargar imagen
 curl -o webapp/meme.jpg "https://pm1.aminoapps.com/7021/417429318f6b29b6bc737fb95ba1ddafc9ba2decr1-720-642v2_hq.jpg"

#introducir
read -p "Introduce la cantidad de archivos a crear: " numfiles

# Crear los archivos de texto dentro del directorio webapp
for x in $(seq 1 $numfiles)
do
    echo "Archivo ${x}" > "webapp/file${x}.txt"
done

#8.........
#cd webapp/ && mv style.css css/
#mv webapp/file*.txt webapp/docs/text/
#mv webapp/main.py webapp/docs/python/
#mv webapp/app.js webapp/js/
#mv webapp/index.html
