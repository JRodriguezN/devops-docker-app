# Imagen base
FROM node:18

# Directorio de trabajo
WORKDIR /usr/src/app

# Copiar archivos de la aplicación
COPY package*.json ./
RUN npm install

COPY . .

# Exponer el puerto y ejecutar la aplicación
EXPOSE 3000

#Comando principal
CMD ["node", "app.js"]