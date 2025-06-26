# Indicar que version de Node.js y Linux se va a utilizar
FROM node:24-slim

# Indicar la carpeta de trabajoen la imagen
WORKDIR /app

# Copiar el package.json y package-lock.json al contenedor ./ se refiere a /app
COPY package*.json ./

# Obtener los modulos(dependencias) de Node.js
RUN npm install && npm cache clean --force && rm -rf /tmp/* /root/.npm/_cacache

# Copiar el resto de los archivos al contenedor
COPY . .

# Exponer el puerto 5000
EXPOSE 5000

# Arrancar la aplicacion en el contenedor
# CMD [ "node", "app.js" ] or
CMD ["npm", "start"]
