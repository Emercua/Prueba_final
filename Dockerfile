# Indicar que imagen queremos utilizar

# version de note a utilizar
# imagen a utilizar
FROM node:23.1-slim

# directorio de trabajo
WORKDIR /app

# copiar copiar los archivos los packge del directorio raiz, sin el node modulos, tampoco lo del dockerignore
COPY package*.json ./

# Instalar el npm sin el node modulos 
RUN npm install \
# optimizar el aintalacion para borrar el cache 
&& npm cache clean --force \
&& rm -rf /tmp/* /root/.npm/_cacache

# copiar todo el proyecto 
COPY . .

# utilizar el puerto para usar, internamente
EXPOSE 8000

# lanzar el proyecto
CMD ["npm","start"]

# en el terminal 
# crear imagen con todo lo que hay, -t nombre, : version (tag) y punto al final
## docker build -t express-travels-3:v3 .

# verificar
##  docker images

# crear el contenedor ejcucion de la imagen
## docker run -it -p 4444:5000 express-travels:v3


# docker login -u 'emersoncr1' -p 'contrado1'

# docker push 

# ruta del repositorio en dockerhub: docker.io/[tu repo con el tag]-> connect

# Le puedes cambiar de nombre 

# Elegir cuenta gratuita 

# Elegir Frankfurt  --> deploy 

# deploy

# aparecera la ruta de la apliacion en la nube




